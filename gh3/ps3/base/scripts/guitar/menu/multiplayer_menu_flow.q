mp_select_controller_fs = {
	Create = create_select_controller_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_select_controller_menu
	actions = [
		{
			action = Continue
			flow_state = mp_select_mode_fs
			transition_right
		}
		{
			action = go_back
			flow_state = main_menu_fs
			transition_left
		}
	]
}
mp_select_mode_fs = {
	Create = create_mp_select_mode_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_mp_select_mode_menu
	actions = [
		{
			action = select_faceoff
			func = set_character_hub_dirty
			flow_state = mp_faceoff_split_off_flow_for_character_select_fs
		}
		{
			action = select_coop
			flow_state = mp_faceoff_select_venue_fs
			transition_right
		}
		{
			action = go_back
			flow_state = mp_select_controller_fs
			transition_left
		}
	]
}
mp_faceoff_split_off_flow_for_character_select_fs = {
	Create = create_mp_split_off_flow_for_character_select
	actions = [
		{
			action = Continue
			flow_state = mp_faceoff_character_select_fs
		}
	]
}

script create_mp_split_off_flow_for_character_select 
	ui_flow_manager_respond_to_action \{action = Continue
		create_params = {
			Player = 1
		}}
	if ($current_num_players = 2)
		start_flow_manager \{flow_state = mp_faceoff_character_select_fs
			Player = 2
			create_params = {
				Player = 2
			}}
	endif
endscript
mp_faceoff_character_select_fs = {
	Create = create_character_select_menu
	Destroy = destroy_character_select_menu
	actions = [
		{
			action = Continue
			flow_state = mp_faceoff_character_hub_fs
		}
		{
			action = go_back
			flow_state = mp_select_mode_fs
			transition_left
		}
	]
}
mp_faceoff_split_off_flow_for_character_hub_fs = {
	Create = create_mp_split_off_flow_for_character_hub
	actions = [
		{
			action = Continue
			flow_state = mp_faceoff_character_hub_fs
		}
	]
}

script create_mp_split_off_flow_for_character_hub 
	ui_flow_manager_respond_to_action \{action = Continue
		create_params = {
			Player = 1
		}}
	if ($current_num_players = 2)
		start_flow_manager \{flow_state = mp_faceoff_character_hub_fs
			Player = 2
			create_params = {
				Player = 2
			}}
	endif
endscript
mp_faceoff_character_hub_fs = {
	Create = create_character_hub_menu
	Destroy = destroy_character_hub_menu
	actions = [
		{
			action = select_play_show
			flow_state = mp_faceoff_select_venue_fs
		}
		{
			action = select_change_outfit
			flow_state = mp_faceoff_select_outfit_fs
		}
		{
			action = select_change_guitar
			flow_state = mp_faceoff_select_guitar_fs
		}
		{
			action = go_back
			flow_state = mp_faceoff_character_select_fs
		}
	]
}

script set_store_came_from_p2_multiplayer 
	Change \{store_came_from = p2_faceoff}
endscript
mp_faceoff_select_outfit_fs = {
	Create = create_select_outfit_menu
	Destroy = destroy_select_outfit_menu
	actions = [
		{
			action = select_character_hub
			flow_state = mp_faceoff_character_hub_fs
		}
		{
			action = select_select_style
			flow_state = mp_faceoff_select_style_fs
		}
		{
			action = go_back
			flow_state = mp_faceoff_character_hub_fs
		}
	]
}
mp_faceoff_select_style_fs = {
	Create = create_select_style_menu
	Destroy = destroy_select_style_menu
	actions = [
		{
			action = select_character_hub
			flow_state = mp_faceoff_character_hub_fs
		}
		{
			action = select_select_outfit
			flow_state = mp_faceoff_select_outfit_fs
		}
		{
			action = go_back
			flow_state = mp_faceoff_select_outfit_fs
		}
	]
}
mp_faceoff_select_guitar_fs = {
	Create = create_select_guitar_menu
	Destroy = destroy_select_guitar_menu
	actions = [
		{
			action = select_character_hub
			flow_state = mp_faceoff_character_hub_fs
		}
		{
			action = Continue
			flow_state = mp_faceoff_character_hub_fs
		}
		{
			action = select_guitar_finish
			flow_state = mp_faceoff_select_guitar_finish_fs
		}
		{
			action = go_back
			flow_state = mp_faceoff_character_hub_fs
		}
	]
}
mp_faceoff_select_guitar_finish_fs = {
	Create = create_select_guitar_finish_menu
	Destroy = destroy_select_guitar_finish_menu
	actions = [
		{
			action = Continue
			flow_state = mp_faceoff_select_guitar
		}
		{
			action = go_back
			flow_state = mp_faceoff_select_guitar
		}
	]
}
mp_faceoff_select_venue_fs = {
	Create = create_select_venue_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_select_venue_menu
	actions = [
		{
			action = Continue
			flow_state = mp_faceoff_setlist_fs
			transition_right
		}
		{
			action = go_back
			flow_state = mp_faceoff_split_off_flow_for_character_select_fs
		}
	]
}
mp_faceoff_setlist_fs = {
	Create = create_setlist_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_setlist_menu
	actions = [
		{
			action = Continue
			flow_state = mp_faceoff_select_difficulty_fs
			transition_right
		}
		{
			action = show_help
			flow_state = mp_faceoff_battle_help_fs
			transition_right
		}
		{
			action = go_back
			flow_state = mp_faceoff_select_venue_fs
			transition_left
		}
	]
}
mp_faceoff_battle_help_fs = {
	Create = create_battle_helper_menu
	Destroy = destroy_battle_helper_menu
	actions = [
		{
			action = Continue
			flow_state = mp_faceoff_select_difficulty_fs
			transition_right
		}
		{
			action = go_back
			flow_state = mp_faceoff_setlist_fs
			transition_left
		}
	]
}
mp_faceoff_select_difficulty_fs = {
	Create = create_select_difficulty_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_select_difficulty_menu
	actions = [
		{
			action = Continue
			func = start_song
			transition_screen = default_loading_screen
			flow_state = mp_faceoff_play_song_fs
		}
		{
			action = go_back
			flow_state = mp_faceoff_setlist_fs
			transition_left
		}
	]
}
mp_faceoff_play_song_fs = {
	Create = create_play_song_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_play_song_menu
	actions = [
		{
			action = pause_game
			flow_state = mp_faceoff_pause_fs
		}
		{
			action = win_song
			func = kill_gem_scroller
			flow_state = mp_faceoff_newspaper_fs
		}
		{
			action = fail_song
			flow_state = mp_faceoff_fail_song_fs
		}
		{
			action = controller_disconnect
			flow_state = controller_disconnect_fs
		}
	]
}
mp_faceoff_pause_fs = {
	Create = create_pause_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_pause_menu
	actions = [
		{
			action = select_resume
			flow_state = mp_faceoff_play_song_fs
		}
		{
			action = select_restart
			flow_state = mp_faceoff_restart_warning_fs
		}
		{
			action = select_options
			flow_state = mp_faceoff_pause_options_fs
		}
		{
			action = select_quit
			flow_state = mp_faceoff_quit_warning_fs
		}
		{
			action = select_debug_menu
			flow_state = debug_menu_fs
		}
	]
}
mp_faceoff_pause_options_fs = {
	Create = create_pause_menu
	create_params = {
		for_options = 1
	}
	Destroy = destroy_pause_menu
	actions = [
		{
			action = select_audio_settings
			flow_state = mp_faceoff_audio_settings_fs
		}
		{
			action = select_calibrate_lag
			flow_state = mp_faceoff_calibrate_lag_warning
		}
		{
			action = select_calibrate_whammy_bar
			flow_state = calibrate_whammy_bar_fs
		}
		{
			action = select_calibrate_star_power_trigger
			flow_state = calibrate_star_power_trigger_fs
		}
		{
			action = select_lefty_flip
			flow_state = mp_faceoff_lefty_flip_warning
		}
		{
			action = go_back
			flow_state = mp_faceoff_pause_fs
		}
	]
}
mp_faceoff_restart_warning_fs = {
	Create = create_restart_warning_menu
	Destroy = destroy_restart_warning_menu
	actions = [
		{
			action = Continue
			func = career_restart_song
			transition_screen = default_loading_screen
			flow_state = mp_faceoff_play_song_fs
		}
		{
			action = go_back
			flow_state = mp_faceoff_pause_fs
		}
	]
}
mp_faceoff_quit_warning_fs = {
	Create = create_quit_warning_menu
	Destroy = destroy_quit_warning_menu
	actions = [
		{
			action = Continue
			func = xenon_singleplayer_session_complete_uninit
			spawned_func
			flow_state = mp_faceoff_song_ended_fs
		}
		{
			action = go_back
			flow_state = mp_faceoff_pause_fs
		}
	]
}
mp_faceoff_controller_settings_fs = {
	Create = create_controller_settings_menu
	create_params = {
		Popup = 1
	}
	Destroy = destroy_controller_settings_menu
	actions = [
		{
			action = select_lefty_flip
			flow_state = mp_faceoff_lefty_flip_warning
		}
		{
			action = select_calibrate_whammy_bar
			flow_state = calibrate_whammy_bar_fs
		}
		{
			action = select_calibrate_star_power_trigger
			flow_state = calibrate_star_power_trigger_fs
		}
		{
			action = go_back
			flow_state = mp_faceoff_pause_fs
		}
	]
}
mp_faceoff_audio_settings_fs = {
	Create = create_audio_settings_menu
	create_params = {
		Popup = 1
		Player = 2
	}
	Destroy = destroy_audio_settings_menu
	actions = [
		{
			action = Continue
			flow_state = mp_faceoff_pause_fs
		}
		{
			action = go_back
			use_last_flow_state
		}
	]
}
mp_faceoff_video_settings_fs = {
	Create = create_video_settings_menu
	create_params = {
		Popup = 1
		Player = 2
	}
	Destroy = destroy_video_settings_menu
	actions = [
		{
			action = select_calibrate_lag
			flow_state = mp_faceoff_calibrate_lag_warning
		}
		{
			action = go_back
			use_last_flow_state
		}
	]
}
mp_faceoff_lefty_flip_warning = {
	Create = create_lefty_flip_warning_menu
	Destroy = destroy_lefty_flip_warning_menu
	actions = [
		{
			action = Continue
			func = lefty_flip_func
			flow_state = mp_faceoff_play_song_fs
		}
		{
			action = go_back
			use_last_flow_state
		}
	]
}
mp_faceoff_calibrate_lag_warning = {
	Create = create_calibrate_lag_warning_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_calibrate_lag_warning_menu
	actions = [
		{
			action = Continue
			flow_state = mp_faceoff_calibrate_lag_fs
		}
		{
			action = go_back
			use_last_flow_state
		}
	]
}
mp_faceoff_calibrate_autosave_fs = {
	Create = memcard_sequence_begin_autosave
	Destroy = memcard_sequence_cleanup_generic
	actions = [
		{
			action = memcard_sequence_save_success
			func = career_restart_song
			flow_state = mp_faceoff_play_song_fs
		}
		{
			action = memcard_sequence_save_failed
			func = career_restart_song
			flow_state = mp_faceoff_play_song_fs
		}
	]
}
mp_faceoff_calibrate_lag_fs = {
	Create = create_calibrate_lag_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_calibrate_lag_menu
	actions = [
		{
			action = Continue
			flow_state = mp_faceoff_calibrate_autosave_fs
		}
		{
			action = go_back
			func = career_restart_song
			flow_state = mp_faceoff_play_song_fs
		}
	]
}
mp_faceoff_fail_song_fs = {
	Create = create_fail_song_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_fail_song_menu
	actions = [
		{
			action = select_retry
			flow_state = mp_faceoff_play_song_fs
		}
		{
			action = select_new_song
			func = kill_gem_scroller
			flow_state = mp_faceoff_setlist_fs
		}
		{
			action = select_quit
			func = mp_faceoff_song_select_quit
			flow_state = main_menu_fs
		}
	]
}

script mp_faceoff_song_select_quit 
	GH3_SFX_fail_song_stop_sounds
	kill_gem_scroller
endscript
mp_faceoff_song_ended_fs = {
	Create = create_song_ended_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_song_ended_menu
	actions = [
		{
			action = select_retry
			flow_state = mp_faceoff_play_song_fs
		}
		{
			action = select_new_song
			func = kill_gem_scroller
			flow_state = mp_faceoff_setlist_fs
		}
		{
			action = select_quit
			func = kill_gem_scroller
			flow_state = main_menu_fs
		}
	]
}
mp_faceoff_newspaper_fs = {
	Create = create_newspaper_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_newspaper_menu
	actions = [
		{
			action = Continue
			flow_state = mp_faceoff_setlist_fs
			transition_right
		}
		{
			action = try_again
			func = restart_song
			transition_screen = default_loading_screen
			flow_state = mp_faceoff_play_song_fs
		}
		{
			action = select_detailed_stats
			flow_state = mp_faceoff_detailed_stats_fs
			transition_right
		}
		{
			action = quit
			flow_state = main_menu_fs
		}
	]
}
mp_faceoff_detailed_stats_fs = {
	Create = create_detailed_stats_menu
	create_params = {
		Player = 2
	}
	Destroy = destroy_detailed_stats_menu
	actions = [
		{
			action = go_back
			flow_state = mp_faceoff_newspaper_fs
			transition_left
		}
		{
			action = Continue
			flow_state = mp_faceoff_setlist_fs
			transition_left
		}
	]
}
