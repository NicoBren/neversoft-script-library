
script ui_create_import_edit_name 
	if NOT import_check_signin_state
		import_setup_failed fail_text = <fail_text>
		return
	endif
	ui_create_edit_name <...> desc = 'edit_name_alt'
	edit_name_screen_id :Obj_SpawnScriptLater ui_import_edit_name_backspace_spawned params = {char_limit = <char_limit> device_num = <device_num>}
	edit_name_screen_id :Obj_SpawnScriptLater ui_import_edit_name_enter_character_spawned params = {char_limit = <char_limit> device_num = <device_num>}
	edit_name_screen_id :SE_SetProps \{event_handlers = [
			{
				pad_start
				ui_import_edit_name_finish
			}
		]
		replace_handlers
		edit_name_chars_left_rgba = NTSCWhite}
endscript

script ui_destroy_import_edit_name 
	ui_destroy_edit_name <...>
	destroy_dialog_box
endscript

script ui_import_edit_name_enter_character 
	RequireParams \{[
			char_limit
		]
		all}
	SetSpawnInstanceLimits \{Max = 1
		management = ignore_spawn_request}
	edit_name_screen_id :SE_GetProps
	StringToCharArray string = <name_text>
	if GotParam \{char_array}
		GetArraySize <char_array>
		if (<array_size> < <char_limit>)
			<name_text> = (<name_text> + <name_letter_text>)
			StringToCharArray string = <name_text>
			array_size = 0
			if GotParam \{char_array}
				GetArraySize <char_array>
				name_text_key = qs(0x00000000)
				if (<array_size> > 0)
					i = 0
					begin
					name_text_key = (<name_text_key> + (<char_array> [<i>]))
					if ((<i> = 3) || (<i> = 7) || (<i> = 11) || (<i> = 15))
						name_text_key = (<name_text_key> + qs(0x9e0cb7ef))
					endif
					i = (<i> + 1)
					repeat <array_size>
				endif
			endif
			if (<array_size> = 20)
				FormatText \{TextName = char_limit_text
					qs(0x28f2c919)}
				char_limit_color = green_md
			else
				FormatText TextName = char_limit_text qs(0xeff4fe29) n = (<char_limit> - <array_size>) y = <char_limit>
				char_limit_color = NTSCWhite
			endif
			SoundEvent \{event = Enter_Band_Name_Select}
			edit_name_screen_id :SE_SetProps {
				name_text = <name_text>
				name_text_key = <name_text_key>
				edit_name_chars_left_text = <char_limit_text>
				edit_name_chars_left_rgba = <char_limit_color>
				name_dims = (0.0, 40.0)
			}
			if (<array_size> = <char_limit>)
				edit_name_screen_id :SE_SetProps \{name_letter_alpha = 0}
			endif
		else
			menu_scroll_end_sound
		endif
	endif
endscript

script ui_import_edit_name_enter_character_spawned 
	RequireParams \{[
			char_limit
			device_num
		]
		all}
	SetSpawnInstanceLimits \{Max = 1
		management = ignore_spawn_request}
	wait \{0.1
		seconds}
	if ScreenElementExists \{id = edit_name_screen_id}
		GetEnterButtonAssignment
		begin
		if ControllerPressed <assignment> <device_num>
			if (($edit_name_allow_accept) = 1)
				ui_import_edit_name_enter_character char_limit = <char_limit>
				wait \{0.2
					seconds}
			else
				wait \{1
					gameframe}
			endif
		else
			if (($edit_name_allow_accept) = 0)
				Change \{edit_name_allow_accept = 1}
			endif
			wait \{1
				gameframe}
		endif
		repeat
	endif
endscript

script ui_import_edit_name_backspace 
	RequireParams \{[
			char_limit
		]
		all}
	SetSpawnInstanceLimits \{Max = 1
		management = ignore_spawn_request}
	edit_name_screen_id :SE_SetProps \{name_text_key = qs(0x00000000)
		name_dims = (0.0, 40.0)}
	edit_name_screen_id :SE_GetProps
	StringToCharArray string = <name_text>
	if GotParam \{char_array}
		GetArraySize <char_array>
		text = qs(0x00000000)
		if (<array_size> > 1)
			i = 0
			begin
			text = (<text> + (<char_array> [<i>]))
			i = (<i> + 1)
			repeat (<array_size> - 1)
			SoundEvent \{event = Enter_Band_Name_Back}
		elseif (<array_size> = 1)
			SoundEvent \{event = Enter_Band_Name_Back}
		else
			menu_scroll_end_sound
		endif
		StringToCharArray string = <text>
		array_size = 0
		if GotParam \{char_array}
			GetArraySize <char_array>
			name_text_key = qs(0x00000000)
			if (<array_size> > 0)
				i = 0
				begin
				name_text_key = (<name_text_key> + (<char_array> [<i>]))
				if ((<i> = 3) || (<i> = 7) || (<i> = 11) || (<i> = 15))
					name_text_key = (<name_text_key> + qs(0x9e0cb7ef))
				endif
				i = (<i> + 1)
				repeat <array_size>
			endif
		endif
		FormatText TextName = char_limit_text qs(0xeff4fe29) n = (<char_limit> - <array_size>) y = <char_limit>
		edit_name_screen_id :SE_SetProps {
			name_text = <text>
			name_text_key = <name_text_key>
			edit_name_chars_left_text = <char_limit_text>
			edit_name_chars_left_rgba = NTSCWhite
			name_dims = (0.0, 40.0)
			name_letter_alpha = 1
		}
	endif
endscript

script ui_import_edit_name_backspace_spawned 
	RequireParams \{[
			char_limit
			device_num
		]
		all}
	SetSpawnInstanceLimits \{Max = 1
		management = ignore_spawn_request}
	wait \{0.1
		seconds}
	if ScreenElementExists \{id = edit_name_screen_id}
		button_to_check = square
		if IsPS3
			button_to_check = triangle
		endif
		begin
		if ControllerPressed <button_to_check> <device_num>
			if (($edit_name_allow_backspace) = 1)
				ui_import_edit_name_backspace char_limit = <char_limit>
				wait \{0.2
					seconds}
			else
				wait \{1
					gameframe}
			endif
		else
			if (($edit_name_allow_backspace) = 0)
				Change \{edit_name_allow_backspace = 1}
			endif
			wait \{1
				gameframe}
		endif
		repeat
	endif
endscript

script ui_import_edit_name_finish 
	if ScreenElementExists \{id = edit_name_screen_id}
		LaunchEvent \{type = unfocus
			target = edit_name_screen_id}
		name_text = qs(0x03ac90f0)
		edit_name_screen_id :SE_GetProps
		edit_name_screen_id :GetSingleTag \{accept_script}
		edit_name_screen_id :GetSingleTag \{accept_params}
		edit_name_screen_id :GetSingleTag \{exclusive_device}
		StringToCharArray string = <name_text>
		if GotParam \{char_array}
			GetArraySize <char_array>
			if NOT CD
				if (<array_size> = 0)
					<accept_script> text = <name_text> exclusive_device = <exclusive_device> <accept_params>
					return
				endif
			endif
			if (<array_size> < 20)
				FormatText \{TextName = empty_name_error
					qs(0x52b16f6e)}
				edit_name_screen_id :SE_SetProps {
					edit_name_chars_left_text = <empty_name_error>
					edit_name_chars_left_rgba = red_md
				}
				menu_scroll_end_sound
				LaunchEvent \{type = focus
					target = edit_name_screen_id}
				return
			endif
		endif
		if GotParam \{accept_script}
			<accept_script> text = <name_text> exclusive_device = <exclusive_device> <accept_params>
		else
			generic_event_back data = {text = <name_text>}
		endif
	endif
endscript
