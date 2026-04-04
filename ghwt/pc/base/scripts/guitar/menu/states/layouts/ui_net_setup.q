net_career_song_index = 0

script ui_init_net_setup 
	net_init
	GameMode_GetType
	NetSessionFunc \{func = friends_init}
	destroy_loading_screen
endscript

script ui_create_net_setup 
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = net_setup_container
		pos = (0.0, 0.0)
		just = [
			left
			top
		]}
	net_setup_container :Obj_SpawnScriptNow ui_create_net_setup_spawned params = <...>
endscript

script ui_create_net_setup_spawned 
	if IsWinPort
		title = qs("ONLINE")
		text = qs(0x3400ccd5)
	elseif IsPs3
		title = qs("ONLINE")
		text = qs("Connecting to PLAYSTATION®Network...")
	else
		title = qs("Xbox LIVE")
		text = qs("Connecting to Xbox LIVE...")
	endif
	create_popup_warning_menu {
		title = <title>
		textblock = {
			text = <text>
		}
		parent = net_setup_container
	}
	begin
	if ($DEMONWARE_IS_READY = 1)
		break
	endif
	Wait \{1
		frame}
	printf \{'watinging for demonware...'}
	repeat
	NetSessionFunc {
		obj = party
		func = create_party_session
		params = {
			controller_index = ($primary_controller)
		}
	}
	NetSessionFunc \{obj = party
		func = set_can_join_callback
		params = {
			callback = net_party_can_accept_new_players
		}}
	GameMode_GetType
	if ($g_connection_loss_dialogue = 0)
		if (<type> = career)
			NetSessionFunc \{obj = party
				func = set_joiner_mode
				params = {
					mode = career_join
				}}
			Wait \{1
				second}
			change \{current_num_players = 0}
			change \{quickplay_song_list_current = -1}
			change \{net_dropped_players_flag = 0}
			change \{band_mode_mode = career}
			if GotParam \{action}
				change net_band_mode_menu = <action>
			endif
			ui_event_wait \{event = menu_change
				data = {
					state = UIstate_band_mode
				}}
		else
			spawnscriptnow \{task_menu_default_anim_in
				params = {
					base_name = 'band_hub'
				}}
			NetSessionFunc \{obj = party
				func = set_joiner_mode
				params = {
					mode = online_menu
				}}
			Wait \{1
				second}
			change player1_device = ($primary_controller)
			change \{current_num_players = 1}
			ui_event_wait \{event = menu_change
				data = {
					state = uistate_online
				}}
		endif
	endif
endscript

script ui_destroy_net_setup 
	destroy_net_setup
	destroy_popup_warning_menu
endscript

script destroy_net_setup 
	if ScreenElementExists \{id = net_setup_container}
		DestroyScreenElement \{id = net_setup_container}
	endif
endscript

script ui_deinit_net_setup 
	NetSessionFunc \{obj = party
		func = stop_party_session}
	NetSessionFunc \{func = friends_uninit}
	NetSessionFunc \{obj = match
		func = cancel_join_server}
	quit_network_game
	shut_down_net_play
	GameMode_GetType
	if (<type> = career)
		change \{current_num_players = 2}
		change \{num_players_in_band = 0}
		change \{quickplay_song_list_current = 0}
		change \{career_matchmaking_complete = 0}
		change \{net_band_mode_menu = none}
		change \{net_band_members = [
			]}
		change \{net_num_joiners = 0}
		change \{net_career_invite_flag = 0}
		change \{net_band_leader_player_num = -1}
		change \{net_encore_msg_start_sent = 0}
		change \{net_breakdown_continue_msg_sent = 0}
		NetSessionFunc func = AddControllers params = {controller = ($primary_controller)}
		change \{num_exclusive_mp_controllers = 0}
		change \{player_drop_in_setting_sync = 0}
		change \{net_dropped_players_flag = 0}
		clear_temp_net_id_array
	else
		printf \{qs("\Lxbl/psn")}
	endif
endscript
