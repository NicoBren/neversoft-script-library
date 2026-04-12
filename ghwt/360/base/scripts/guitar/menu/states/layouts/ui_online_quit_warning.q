
script ui_create_online_quit_warning player_device = ($primary_controller)
	if NOT GotParam \{confirm_script}
		confirm_script = confirm_quit_online
	endif
	DestroyScreenElement \{id = popup_warning_container}
	create_popup_warning_menu {
		title = qs("WARNING")
		textblock = {
			text = qs("Are you sure you want to quit the game?")
		}
		parent = root_window
		no_background
		options = [
			{
				func = generic_event_back
				text = qs("CANCEL")
			}
			{
				func = <confirm_script>
				text = qs("QUIT")
			}
		]
		player_device = <player_device>
	}
	AssignAlias id = <menu_id> alias = online_quit_menu
	LaunchEvent \{type = focus
		target = online_quit_menu}
	if GotParam \{callback}
		online_quit_menu :SetTags {callback = <callback>}
	endif
	if GotParam \{callback_params}
		online_quit_menu :SetTags callback_params = <callback_params>
	endif
endscript

script ui_destroy_online_quit_warning 
	destroy_popup_warning_menu
endscript

script confirm_quit_online 
	online_quit_menu :GetTags
	if GotParam \{callback}
		if GotParam \{callback_params}
			spawnscriptnow <callback> params = <callback_params>
		else
			spawnscriptnow <callback>
		endif
	endif
	if NetSessionFunc \{obj = party
			func = is_host}
		if ($playing_song = 0)
			NetSessionFunc \{obj = party
				func = leave_game}
		else
			NetSessionFunc \{obj = party
				func = disband_party_session}
		endif
	else
		NetSessionFunc \{obj = party
			func = leave_party}
	endif
	GameMode_GetType
	if (<type> = career)
		if (($net_band_mode_menu = HOST) || ($net_band_mode_menu = invite))
			generic_event_back \{state = uistate_group_play}
			return
		else
			if IsHost
				change \{net_band_mode_menu = HOST}
			else
				change \{net_band_mode_menu = join}
			endif
		endif
	else
		change \{net_new_matchmaking_ui_flag = 0}
	endif
	net_clear_all_remote_player_status
	quit_network_game_early
	change \{net_pause = 0}
	if (<type> = career)
		quit_career_back_to_lobby
	else
		UnPauseGame
		generic_event_back \{state = uistate_online}
	endif
endscript

script quit_career_back_to_lobby 
	change \{num_players_in_band = 0}
	change \{net_band_members = [
		]}
	change \{net_num_joiners = 0}
	change \{career_matchmaking_complete = 0}
	found_state = 0
	ui_event_get_stack
	i = 0
	begin
	if ((<stack> [<i>].base_name) = 'band_mode')
		<found_state> = 1
		break
	endif
	i = (<i> + 1)
	repeat <stack_size>
	if (<found_state> = 1)
		NetSessionFunc \{obj = party
			func = set_party_joinable
			params = {
				joinable = 1
			}}
		generic_event_back data = {num_states = (<i> + 1)}
	else
		generic_event_back \{state = UIstate_mainmenu}
	endif
	UnPauseGame
endscript

script net_career_host_disband_party 
	printf \{qs("\L--- net_career_host_disband_party ---")}
	hide_glitch \{num_frames = 2}
	NetSessionFunc \{obj = party
		func = disband_party_session}
	generic_event_back \{state = uistate_group_play}
endscript

script net_career_leave_party_confirm 
	printf \{qs("\L--- net_career_leave_party_confirm ---")}
	NetSessionFunc \{obj = party
		func = leave_party}
	generic_event_back \{state = uistate_group_play}
endscript
