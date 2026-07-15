
script ui_create_options_data_delete 
	if NOT GotParam \{really}
		create_popup_warning_menu \{textblock = {
				text = qs("Are you sure you want to reset your progress and overwrite your current save??")
			}
			options = [
				{
					func = generic_event_back
					text = qs("CANCEL")
				}
				{
					func = generic_event_replace
					func_params = {
						state = uistate_options_data_delete
						data = {
							really = 1
						}
					}
					text = qs("I'M SURE")
				}
			]}
	elseif NOT GotParam \{confirm}
		create_popup_warning_menu \{textblock = {
				text = qs("Are you really sure you want to reset your progress and overwrite your current save?  All career progress, cash earned, items unlocked, rock stars created, etc. will be lost!")
			}
			options = [
				{
					func = generic_event_back
					text = qs("CANCEL")
				}
				{
					func = generic_event_replace
					func_params = {
						state = uistate_options_data_delete
						data = {
							really = 1
							confirm = 1
						}
					}
					text = qs("I'M REALLY SURE")
				}
			]}
	else
		if isXenon
			text = qs("Clearing all of your save data...\nPlease do not turn off your Xbox 360 console.")
		else
			text = qs("Clearing all of your save data...\nDo not switch off power during this time.")
		endif
		create_popup_warning_menu {
			textblock = {
				text = <text>
			}
		}
		spawnscriptnow \{ui_options_data_delete}
		Menu_Music_Off
	endif
endscript

script ui_destroy_options_data_delete 
	destroy_popup_warning_menu
endscript

script ui_options_data_delete 
	Wait \{1
		gameframe}
	get_savegame_from_controller controller = ($primary_controller)
	GetGlobalTags \{user_options
		params = {
			autosave
		}}
	reset_globaltags savegame = <savegame>
	SetGlobalTags user_options params = {autosave = <autosave>}
	ui_event_wait_for_safe
	ui_memcard_save \{event = menu_change
		state = UIstate_boot_iis
		data = {
			clear_previous_stack
		}}
endscript
