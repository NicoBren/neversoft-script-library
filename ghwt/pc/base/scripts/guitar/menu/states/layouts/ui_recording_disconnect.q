
script ui_create_recording_disconnect \{training = 0}
	if GotParam \{recording_studio}
		options = [
			{
				func = ui_recording_disconnect_continue
				func_params = {<...>}
				text = qs("OK")
				sound_func = nullscript
			}
		]
	else
		options = [
			{
				func = ui_recording_disconnect_continue
				func_params = {<...>}
				text = qs("CONTINUE")
				sound_func = nullscript
			}
			{
				func = ui_recording_disconnect_quit
				text = qs("QUIT")
				sound_func = nullscript
			}
		]
	endif
	create_popup_warning_menu {
		title = qs("WARNING")
		textblock = {
			text = qs("")
		}
		options = <options>
		player_device = ($primary_controller)
	}
	PopupElement :SetTags \{is_disconnect_warning = true}
	if (<training> = 1)
		KillSpawnedScript \{id = jam_tutorial_topic_spawn}
		KillSpawnedScript \{id = jam_tutorial_spawns}
		training_destroy_narrator_icons
		change \{jam_tutorial_status = inactive}
	endif
	if GotParam \{recording_studio}
		if (<training> = 1)
			PopupElement :obj_spawnscript ui_recording_disconnect_update params = {training = <training>}
		else
			PopupElement :obj_spawnscript \{ui_recording_studio_disconnect_update}
		endif
	else
		PopupElement :obj_spawnscript \{ui_recording_disconnect_update}
	endif
endscript

script ui_destroy_recording_disconnect 
	destroy_popup_warning_menu
endscript

script ui_recording_disconnect_update \{training = 0}
	if IsWinPort
		old_text = qs("")
	else
		old_text = qs("YOU ARE ROCKING OUT A BIT TOO HARD!")
	endif
	begin
	text = qs("")
	GetControllerType controller = ($primary_controller)
	GetActiveControllers
	<is_active_controller> = (<active_controllers> [($primary_controller)])
	if IsWinPort
		if (<is_active_controller> != 1)
			text = qs("YOU ARE ROCKING OUT A BIT TOO HARD!\n\nYou must connect a controller to continue recording.")
		else
			text = qs("YOU ARE ROCKING OUT A BIT TOO HARD!")
		endif
	else
		if (((<controller_type> != guitar) && (<controller_type> != drum)) || <is_active_controller> != 1)
			if (<training> = 1)
				text = qs("YOU ARE ROCKING OUT A BIT TOO HARD!\n\nYou must connect either a Guitar or Drum Controller to continue.")
			else
				text = qs("YOU ARE ROCKING OUT A BIT TOO HARD!\n\nYou must connect either a Guitar or Drum Controller to continue recording.")
			endif
		else
			if (<controller_type> = guitar)
				text = (<text> + qs("Your Guitar Controller is connected!"))
			elseif (<controller_type> = drum)
				if isRBDrum controller = ($primary_controller)
					text = (<text> + qs("Your Four Pad Drum Controller is connected!"))
				else
					text = (<text> + qs("Your Guitar Hero Drum Controller is connected!"))
				endif
			endif
		endif
	endif
	if NOT (<old_text> = <text>)
		SE_SetProps {PopupBody_text = <text>}
		old_text = <text>
	endif
	Wait \{5
		gameframes}
	repeat
endscript

script ui_recording_studio_disconnect_update 
	text = qs("YOU ARE ROCKING OUT A BIT TOO HARD!\n\nYou must connect a controller to continue recording.")
	SE_SetProps {PopupBody_text = <text>}
endscript

script ui_recording_disconnect_continue 
	if NOT IsWinPort
		if NOT GotParam \{recording_studio}
			GetControllerType controller = ($primary_controller)
			if NOT ((<controller_type> = guitar) || (<controller_type> = drum))
				menu_scroll_end_sound
				return
			endif
		else
			GetActiveControllers
			<is_active_controller> = (<active_controllers> [($primary_controller)])
			if (<is_active_controller> != 1)
				menu_scroll_end_sound
				return
			endif
		endif
	endif
	if ui_event_exists_in_stack \{name = 'jam_tutorials'}
		generic_event_back \{state = uistate_jam_tutorials}
	else
		generic_event_back \{data = {
				editing = 1
			}}
	endif
endscript

script ui_recording_disconnect_quit 
	if ui_event_exists_in_stack \{name = 'jam_tutorials'}
		generic_event_back \{state = uistate_jam_tutorials}
	else
		generic_event_back \{state = UIstate_jam_select_song}
	endif
endscript
