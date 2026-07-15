
script ui_create_leaderboard_empty 
	<text> = qs(0xf8ff983c)
	<title> = qs("ATTENTION")
	if NOT NetSessionFunc \{func = is_lobby_available}
		<text> = qs("The game servers are currently unavailable. Please try again later.")
		<title> = qs("WARNING")
	endif
	create_popup_warning_menu {
		exclusive_device = ($lb_controller)
		title = <title>
		textblock = {
			text = <text>
		}
		options = [
			{
				func = generic_event_back
				text = qs("CONTINUE")
				sound_func = nullscript
			}
		]
	}
endscript

script ui_destroy_leaderboard_empty 
	destroy_popup_warning_menu
endscript
