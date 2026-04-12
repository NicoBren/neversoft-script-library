
script ui_create_leaderboard_empty 
	<text> = qs("Your network connection has been disconnected.")
	if NOT NetSessionFunc \{func = is_lobby_available}
		<text> = qs("The game servers are currently unavailable. Please try again later.")
	endif
	create_popup_warning_menu {
		exclusive_device = ($lb_controller)
		title = qs("WARNING")
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
