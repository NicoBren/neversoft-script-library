
script ui_create_quit_warning 
	printstruct <...>
	create_popup_warning_menu \{textblock = {
			text = qs(0xbec817a7)
			dims = (800.0, 400.0)
			scale = 0.55
		}
		use_all_controllers
		no_background
		menu_pos = (640.0, 520.0)
		options = [
			{
				func = quit_warning_select_no
				text = qs("CANCEL")
			}
			{
				func = quit_warning_select_yes
				text = qs("EXIT")
			}
		]}
endscript

script ui_destroy_quit_warning 
	destroy_popup_warning_menu
endscript

script quit_warning_select_no 
	ui_go_back
endscript

script quit_warning_select_yes 
	WinPortExitGame
endscript

script ui_go_back 
	generic_event_back
endscript
