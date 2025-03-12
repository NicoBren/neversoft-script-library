
script ui_init_guitarhero_com 
	netsessionfunc \{func = stats_uninit}
	netsessionfunc \{func = stats_init}
endscript

script ui_create_guitarhero_com 
	netsessionfunc \{func = get_agora_token}
	formattext textname = passcode_text qs(0x3c71eff6) t = <token>
	createscreenelement {
		parent = root_window
		id = current_menu
		type = descinterface
		desc = 'community'
		exclusive_device = ($primary_controller)
		event_handlers = [
			{pad_back generic_event_back}
		]
		passcode_text = <passcode_text>
	}
	current_menu :obj_spawnscriptnow \{bg_swap}
	clean_up_user_control_helpers
	add_user_control_helper \{text = qs(0xaf4d5dd2)
		button = red
		z = 100000}
endscript

script ui_destroy_guitarhero_com 
	clean_up_user_control_helpers
	destroyscreenelement \{id = current_menu}
endscript
