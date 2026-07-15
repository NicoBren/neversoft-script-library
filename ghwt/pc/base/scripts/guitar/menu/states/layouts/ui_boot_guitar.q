WinPort_CurrentKeyLayout = 0
WinPort_PrevLayout = null

script ui_create_boot_guitar 
	if ($invite_controller != -1)
		spawnscriptnow \{ui_boot_guitar_follow_invite}
		return
	endif
	GetEnterButtonAssignment
	switch <assignment>
		case circle
		green_button_text = qs("BACK")
		red_button_text = qs("CONTINUE")
		default
		green_button_text = qs("CONTINUE")
		red_button_text = qs("BACK")
	endswitch
	fadetoblack \{on
		alpha = 1.0
		time = 0.0
		no_wait}
	ui_get_controller_parts_allowed controller = ($primary_controller)
	instrument = mic
	if isXenon
		desc = 'boot_usingMic_360'
	else
		desc = 'boot_usingMic_PS3'
	endif
	if StructureContains Structure = <allowed> guitar
		instrument = guitar
		desc = 'boot_usingGuitar'
	endif
	if StructureContains Structure = <allowed> drum
		instrument = drum
		desc = 'boot_usingDrum'
	endif
	if WinPortIsKeyboardController controller = ($primary_controller)
		instrument = guitar
		desc = 'boot_usingKeyboard'
	endif
	if StructureContains Structure = <allowed> Vocals
		if IsMicrophonePluggedIn
			instrument = mic
			if isXenon
				desc = 'boot_usingMic_360'
			else
				desc = 'boot_usingMic_PS3'
			endif
		elseif is_regular_controller controller = ($primary_controller)
			instrument = mic
			if isXenon
				desc = 'boot_usingMic_360'
			else
				desc = 'boot_usingMic_PS3'
			endif
		endif
	endif
	if WinPortIsKeyboardController controller = ($primary_controller)
		event_handlers = [
			{pad_start ui_boot_guitar_sound params = {instrument = <instrument>}}
			{pad_choose ui_boot_guitar_sound params = {instrument = <instrument>}}
			{pad_start ui_event params = {event = menu_replace data = {state = uistate_mainmenu_intro}}}
			{pad_choose ui_event params = {event = menu_replace data = {state = uistate_mainmenu_intro}}}
			{pad_option2 WinPortToggleKeyLayout}
		]
	else
		event_handlers = [
			{pad_start ui_boot_guitar_sound params = {instrument = <instrument>}}
			{pad_choose ui_boot_guitar_sound params = {instrument = <instrument>}}
			{pad_start ui_event params = {event = menu_replace data = {state = uistate_mainmenu_intro}}}
			{pad_choose ui_event params = {event = menu_replace data = {state = uistate_mainmenu_intro}}}
		]
	endif
	CreateScreenElement {
		parent = root_window
		id = current_menu
		type = DescInterface
		desc = <desc>
		exclusive_device = ($primary_controller)
		event_handlers = <event_handlers>
		z_priority = 9000
		green_button_text = <green_button_text>
		red_button_text = <red_button_text>
	}
	if WinPortIsKeyboardController controller = ($primary_controller)
		if NotIsMacPort
			if French
				current_menu :SetProps \{instrument_texture = boot_usingKeyboard_f}
			elseif Spanish
				current_menu :SetProps \{instrument_texture = boot_usingKeyboard_s}
			elseif German
				current_menu :SetProps \{instrument_texture = boot_usingKeyboard_g}
			elseif Italian
				current_menu :SetProps \{instrument_texture = boot_usingKeyboard_i}
			else
				current_menu :SetProps \{instrument_texture = boot_usingKeyboard}
			endif
		else
			if French
				current_menu :SetProps \{instrument_texture = boot_usingMacKeyboard_f}
			elseif Spanish
				current_menu :SetProps \{instrument_texture = boot_usingMacKeyboard_s}
			elseif German
				current_menu :SetProps \{instrument_texture = boot_usingMacKeyboard_g}
			elseif Italian
				current_menu :SetProps \{instrument_texture = boot_usingMacKeyboard_i}
			else
				current_menu :SetProps \{instrument_texture = boot_usingMacKeyboard}
			endif
		endif
	endif
	if IsWinPort
		if ((<instrument>) = mic)
			if NotIsMacPort
				if French
					current_menu :SetProps \{instrument_texture = instrument_keyboard_mic_f}
				elseif Spanish
					current_menu :SetProps \{instrument_texture = instrument_keyboard_mic_s}
				elseif German
					current_menu :SetProps \{instrument_texture = instrument_keyboard_mic_g}
				elseif Italian
					current_menu :SetProps \{instrument_texture = instrument_keyboard_mic_i}
				else
					current_menu :SetProps \{instrument_texture = instrument_keyboard_mic}
				endif
			else
				if French
					current_menu :SetProps \{instrument_texture = instrument_MacKeyboard_mic_f}
				elseif Spanish
					current_menu :SetProps \{instrument_texture = instrument_MacKeyboard_mic_s}
				elseif German
					current_menu :SetProps \{instrument_texture = instrument_MacKeyboard_mic_g}
				elseif Italian
					current_menu :SetProps \{instrument_texture = instrument_MacKeyboard_mic_i}
				else
					current_menu :SetProps \{instrument_texture = instrument_MacKeyboard_mic}
				endif
			endif
		endif
	endif
	if isRBDrum controller = ($primary_controller)
		spawnscriptnow \{create_rb_drum_notification}
	endif
	add_user_control_helper \{text = qs("CONTINUE")
		button = green
		z = 100000}
	if WinPortIsKeyboardController controller = ($primary_controller)
		if NOT IsMicrophonePluggedIn
			add_user_control_helper \{text = qs(0x987a30cd)
				button = Yellow
				z = 100000}
		endif
	endif
endscript

script ui_boot_guitar_follow_invite 
	ui_create_mainmenu_intro_spawned
	Wait \{1
		gameframe}
	spawnscriptnow invite_accepted params = {controllerid = ($invite_controller)}
endscript

script create_rb_drum_notification 
	CreateScreenElement \{parent = root_window
		id = notification_box
		type = DescInterface
		desc = 'notification_box'}
	Wait \{3
		seconds}
	DestroyScreenElement \{id = notification_box}
endscript

script ui_destroy_boot_guitar 
	DestroyScreenElement \{id = current_menu}
	clean_up_user_control_helpers
endscript

script ui_boot_guitar_sound 
	switch (<instrument>)
		case guitar
		generic_menu_pad_choose_sound
		case drum
		generic_menu_pad_choose_sound
		case mic
		generic_menu_pad_choose_sound
	endswitch
endscript

script is_regular_controller 
	if IsGuitarController controller = <controller>
		return \{false}
	elseif IsDrumController controller = <controller>
		return \{false}
	endif
	return \{true}
endscript

script WinPortToggleKeyLayout 
	if ScreenElementExists \{id = current_menu}
		if ($WinPort_CurrentKeyLayout = 0)
			current_menu :SE_GetProps
			change WinPort_PrevLayout = <instrument_texture>
			if NotIsMacPort
				if French
					current_menu :SE_SetProps \{instrument_texture = instrument_keyboard_drums_f}
				elseif Spanish
					current_menu :SE_SetProps \{instrument_texture = instrument_keyboard_drums_s}
				elseif German
					current_menu :SE_SetProps \{instrument_texture = instrument_keyboard_drums_g}
				elseif Italian
					current_menu :SE_SetProps \{instrument_texture = instrument_keyboard_drums_i}
				else
					current_menu :SE_SetProps \{instrument_texture = instrument_keyboard_drums}
				endif
			else
				if French
					current_menu :SE_SetProps \{instrument_texture = instrument_MacKeyboard_drums_f}
				elseif Spanish
					current_menu :SE_SetProps \{instrument_texture = instrument_MacKeyboard_drums_s}
				elseif German
					current_menu :SE_SetProps \{instrument_texture = instrument_MacKeyboard_drums_g}
				elseif Italian
					current_menu :SE_SetProps \{instrument_texture = instrument_MacKeyboard_drums_i}
				else
					current_menu :SE_SetProps \{instrument_texture = instrument_MacKeyboard_drums}
				endif
			endif
			current_menu :SE_SetProps \{bg_guitar_texture = drumset}
			current_menu :SE_SetProps \{bg_guitar_dims = (512.0, 512.0)}
			current_menu :SE_SetProps \{bg_guitar_scale = (0.6, 0.6)}
			current_menu :SE_SetProps \{bg_guitar_rotation = -5.0}
			change \{WinPort_CurrentKeyLayout = 1}
		else
			current_menu :SE_SetProps \{instrument_texture = $WinPort_PrevLayout}
			current_menu :SE_SetProps \{bg_guitar_texture = guitar}
			current_menu :SE_SetProps \{bg_guitar_dims = (1024.0, 256.0)}
			current_menu :SE_SetProps \{bg_guitar_scale = (0.4, 0.4)}
			current_menu :SE_SetProps \{bg_guitar_rotation = 120.0}
			change \{WinPort_CurrentKeyLayout = 0}
		endif
	endif
endscript
