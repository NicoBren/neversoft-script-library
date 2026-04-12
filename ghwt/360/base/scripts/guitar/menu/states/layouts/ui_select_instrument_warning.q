
script ui_create_select_instrument_warning controller = ($primary_controller)
	switch (<instrument>)
		case guitar
		case Bass
		text = qs("You must use a Guitar Controller to continue.")
		case drum
		text = qs("You must use a Drum Controller to continue.")
		case Vocals
		if isXenon
			text = qs("You must connect a microphone or Xbox 360 Headset to continue.")
		else
			text = qs("You must connect a microphone to continue.")
		endif
	endswitch
	create_popup_warning_menu {
		textblock = {
			text = <text>
			dims = (800.0, 400.0)
			scale = 0.55
		}
		player_device = <controller>
		no_background
		menu_pos = (640.0, 520.0)
		options = [
			{
				func = generic_event_back
				text = qs("GO BACK")
			}
			{
				func = generic_event_back
				func_params = {state = UIstate_mainmenu}
				text = qs("RETURN TO MAIN MENU")
			}
		]
	}
endscript

script ui_destroy_select_instrument_warning 
	destroy_popup_warning_menu
endscript
