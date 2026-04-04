
script ui_create_motd 
	CreateScreenElement {
		parent = root_window
		type = DescInterface
		desc = 'motd_message'
		title_text = ($MOTD_Header)
		msg_text = ($motd_subject)
		title_rgba = (($g_menu_colors).alert_red)
		msg_rgba = ($menu_unfocus_color)
		event_handlers = [
			{pad_back generic_event_back}
		]
	}
	AssignAlias id = <id> alias = current_menu
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100000
		all_buttons}
endscript

script ui_destroy_motd 
	DestroyScreenElement \{id = current_menu}
	generic_ui_destroy
endscript
