
script ui_create_leaderboard_timeout 
	text = qs(0x2f3e2a27)
	if GotParam \{cable_unplugged}
		text = (<text> + qs(0x713755f7) + qs(0x0df6659c))
	elseif GotParam \{lost_lobby_connection}
		text = (<text> + qs(0x713755f7) + qs(0x474948fe))
	endif
	text = (<text> + qs(0x713755f7) + qs(0x0205395b))
	create_popup_warning_menu {
		player_device = ($lb_controller)
		title = qs(0xaa163738)
		textblock = {
			text = <text>
		}
		options = [
			{
				func = generic_event_back
				func_params = <func_params>
				text = qs(0x182f0173)
				sound_func = nullscript
			}
		]
	}
	SetButtonEventMappings \{unblock_menu_input}
	destroy_loading_screen
endscript

script ui_destroy_leaderboard_timeout 
	destroy_popup_warning_menu
endscript
