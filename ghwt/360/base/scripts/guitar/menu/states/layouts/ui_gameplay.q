gameplay_restart_song = 0
gameplay_loading_transition = 0

script ui_create_gameplay 
	if ($gameplay_restart_song = 1)
		loading_transition = ($gameplay_loading_transition)
		change \{gameplay_loading_transition = 0}
		spawnscriptnow restart_song params = {loading_transition = <loading_transition>}
		change \{gameplay_restart_song = 0}
	endif
	vocals_mute_all_mics \{mute = false}
	spawnscriptnow \{ui_create_gameplay_spawned}
	if ($is_network_game = 1)
		GameMode_GetNumPlayers
		if (4 <= <num_players>)
			NetSessionFunc \{obj = voice
				func = turnteamtalkon}
		endif
	endif
endscript

script ui_destroy_gameplay 
	destroy_player_drop_events
endscript

script ui_create_gameplay_spawned 
	SetScriptCannotPause
	spawn_player_drop_listeners \{drop_player_script = gameplay_drop_player
		end_game_script = gameplay_end_game}
	ui_event_wait_for_safe
	disable_pause
	begin
	if NOT ScriptIsRunning \{restart_song}
		if NOT ScriptIsRunning \{restart_gem_scroller}
			if ($is_changing_levels = 0)
				break
			endif
		endif
	endif
	Wait \{1
		gameframe}
	disable_pause \{nospam}
	repeat
	if NOT ScreenElementExists \{id = HandsOfGod}
		enable_pause
	endif
	ResumeControllerChecking
	change \{sysnotify_paused_controllers = [
		]}
	change \{unknown_drum_type = 0}
	if ($songtime_paused = 1)
		SoftAssert \{'Hacky fix for bass pedal lockup'}
		change \{songtime_paused = 0}
		startrendering
	endif
endscript

script ui_deinit_gameplay 
	printf \{'ui_deinit_gameplay'}
	KillSpawnedScript \{name = ui_create_gameplay_spawned}
	spawnscriptnow \{kill_gem_scroller}
	if ScreenElementExists \{id = HandsOfGod}
		KillSpawnedScript \{name = Anim_HandsOfGod}
		DestroyScreenElement \{id = HandsOfGod}
	endif
	UnPauseGame
	disable_pause
	if NOT ui_event_exists_in_stack \{name = 'jam'}
		if ($game_mode = p1_career || $game_mode = p2_career || $band_mode_mode = career)
			band_builder_clear_random_appearances \{cpu_only}
		else
			if ($game_mode = p1_quickplay)
				band_builder_clear_random_appearances \{cpu_only}
			endif
		endif
	endif
endscript

script animate_drop_player_msg 
	RequireParams \{[
			drop_msg
		]
		all}
	Obj_GetID
	<ObjID> :SE_SetProps {GamerTag_alpha = 1.0 gamertag_name_text = <drop_msg> GamerTag_scale = (3.0, 1.1) time = 0.1 motion = ease_out}
	<ObjID> :SE_WaitProps
	<ObjID> :SE_SetProps {GamerTag_scale = (1.3, 1.1) time = 0.1 motion = ease_out}
	<ObjID> :SE_WaitProps
endscript

script gameplay_drop_player 
	printf \{qs("\Lgameplay_drop_player")}
	GameMode_GetType
	if (<is_game_over> = 0)
		if (<type> = career)
			SetPlayerInfo <dropped_player_num> is_local_client = 0
			SetPlayerInfo <dropped_player_num> net_id_first = 0
			SetPlayerInfo <dropped_player_num> net_id_second = 0
			SetPlayerInfo <dropped_player_num> net_obj_id = -1
			SetPlayerInfo <dropped_player_num> team = 0
			SetPlayerInfo <dropped_player_num> party_id = -1
			change net_num_players = (($net_num_players) - 1)
			change current_num_players = (($current_num_players) - 1)
			change num_players_in_band = (($num_players_in_band) - 1)
			FormatText checksumname = mode 'p%d_career' d = ($current_num_players)
			change game_mode = <mode>
			change net_dropped_players_flag = (($net_dropped_players_flag) + 1)
		else
			printf \{qs("\Li'll let you decide what you want in here")}
		endif
		switch <drop_reason>
			case net_message_player_quit
			FormatText TextName = drop_msg qs("%s has quit.") s = <name_string>
			case net_message_player_dropped
			case net_message_player_timed_out
			FormatText TextName = drop_msg qs("Lost connection to %s.") s = <name_string>
			default
			drop_msg = qs("")
		endswitch
		if ScreenElementExists \{id = hud_root}
			GetPlayerInfo <dropped_player_num> hud_parent
			if hud_root :Desc_ResolveAlias name = <hud_parent> param = parent_id
				if ScreenElementExists id = {<parent_id> child = gamertag}
					ResolveScreenElementId id = [
						{id = <parent_id>}
						{local_id = gamertag}
					]
				endif
			endif
			if GotParam \{resolved_id}
				<resolved_id> :Obj_SpawnScriptNow animate_drop_player_msg params = {drop_msg = <drop_msg>}
			endif
		endif
	else
		if ((<type> = faceoff) || (<type> = pro_faceoff))
			if ($current_num_players = 2)
				printf \{qs("\LZero quitting player's score")}
				change \{structurename = player2_status
					score = 0.0}
			endif
		endif
	endif
endscript

script gameplay_end_game 
	printf \{qs("\L---gameplay_end_game")}
	printstruct <...>
	destroy_popup_warning_menu
	if ((<is_game_over> = 1) && ($net_popup_active = 0))
		net_disable_pause
		switch <drop_reason>
			case net_message_player_quit
			FormatText TextName = first_msg qs("%s has quit.") s = <name_string>
			case net_message_player_dropped
			case net_message_player_timed_out
			FormatText TextName = first_msg qs("Lost connection to %s.") s = <name_string>
			default
			first_msg = qs("")
		endswitch
		FormatText TextName = msg qs("%s\nThere are not enough players to continue.") s = <first_msg>
		create_net_popup title = qs("GAME OVER") popup_text = <msg>
		Wait \{3
			seconds}
		ui_event_get_stack
		if (((<stack> [0].base_name) = 'connection_loss') || ((<stack> [0].base_name) = 'signin_changed'))
			return
		endif
		destroy_net_popup
		if ScriptIsRunning \{handle_signin_changed}
			return
		endif
		if ($playing_song = 1)
			change \{Achievements_early_quit_flag = 1}
		endif
		GameMode_GetType
		if (<type> = career)
			if ($playing_song = 1)
				kill_gem_scroller
			endif
			ui_event_get_stack
			if (((<stack> [0].base_name) = 'connection_loss') || ((<stack> [0].base_name) = 'signin_changed'))
				return
			endif
			ui_memcard_autosave \{event = menu_back
				state = uistate_group_play
				data = {
					all_active_players = true
				}}
		elseif ($game_mode = p2_battle)
			if NOT (GameIsOver)
				change \{structurename = player1_status
					current_health = 1.0}
				change \{structurename = player2_status
					current_health = 0.0}
				GuitarEvent_SongWon \{battle_win = 1}
			endif
		else
			if NOT (GameIsOver)
				ExtendCRC \{song_won
					'p1'
					out = type}
				BroadcastEvent type = <type>
			endif
		endif
	endif
endscript
