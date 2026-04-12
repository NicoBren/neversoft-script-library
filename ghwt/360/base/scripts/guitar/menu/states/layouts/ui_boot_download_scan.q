
script ui_create_boot_download_scan 
	change \{menu_flow_play_sound = 0}
	if ($downloadcontent_enabled = 0)
		spawnscriptnow \{ui_event_wait
			params = {
				event = menu_replace
				data = {
					state = uistate_boot_guitar
				}
			}}
		return
	endif
	change store_respond_to_signin_changed = ($respond_to_signin_changed)
	change \{respond_to_signin_changed = 1}
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu {
			textblock = {
				text = qs("Checking the HDD. Do not switch off your system.")
			}
			player_device = <controller>
		}
		case xenon
		create_popup_warning_menu {
			textblock = {
				text = qs("Checking for downloadable content. Please don't turn off your Xbox 360 console.")
			}
			player_device = <controller>
		}
	endswitch
	spawnscriptnow boot_download_scan params = {controller = <controller> <...>}
endscript

script boot_download_scan \{event_params = {
			event = menu_replace
			data = {
				state = uistate_boot_guitar
			}
		}}
	Wait \{1
		gameframes}
	startrendering \{reason = menu_transition}
	if NOT ui_event_exists_in_stack \{name = 'mainmenu'}
		if ControllerPressed x <controller>
			if ControllerPressed circle <controller>
				if ControllerPressed square <controller>
					if ControllerPressed triangle <controller>
						printf \{qs("\LClearing download cache")}
						RemoveContentFiles \{playerid = -1
							clear_cache}
					endif
				endif
			endif
		endif
	endif
	GetStartTime
	Downloads_EnumContent controller = <controller>
	get_current_first_play
	begin
	GetElapsedTime StartTime = <StartTime>
	if (<ElapsedTime> > 1000)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	if ($shutdown_game_for_signin_change_flag = 1)
		return
	endif
	ui_event_wait <event_params>
	if ((<event_params>.data.state) = uistate_jam)
		create_loading_screen \{jam_mode = 1}
	endif
	change respond_to_signin_changed = ($store_respond_to_signin_changed)
endscript

script ui_destroy_boot_download_scan 
	destroy_popup_warning_menu
endscript
