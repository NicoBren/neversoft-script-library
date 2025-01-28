
script create_mp_select_match_type_menu \{menu_title = 'CREATE MATCH'
		menu_subtitle = 'MATCH TYPE'
		menu_id = create_match_type_menu
		vmenu_id = create_match_type_vmenu}
	createscreenelement \{type = containerelement
		parent = root_window
		id = online_menu_ui_container
		pos = (0.0, 0.0)}
	createscreenelement {
		type = vscrollingmenu
		parent = online_menu_ui_container
		id = <menu_id>
		just = [center top]
		dims = (256.0, 350.0)
		pos = (($online_general_menu_pos) + (0.0, 182.0))
		z_priority = 1
	}
	createscreenelement {
		type = vmenu
		parent = <menu_id>
		id = <vmenu_id>
		pos = ((128.0, 0.0) + (-8.0, 0.0))
		just = [center top]
		internal_just = [center center]
		dims = (256.0, 350.0)
		padding_scale = 1.5
		event_handlers = [
			{pad_back ui_flow_manager_respond_to_action params = {action = go_back}}
			{pad_back generic_menu_pad_back_sound}
			{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
		]
		exclusive_device = ($primary_controller)
	}
	create_menu_backdrop \{texture = online_background}
	displaysprite id = online_frame_crown parent = online_menu_ui_container tex = online_frame_crown pos = (($online_general_menu_pos) + (0.0, -48.0)) dims = (192.0, 96.0) just = [center top] z = 3
	displaysprite id = online_menu_box_top parent = online_menu_ui_container tex = window_frame_cap rgba = ($online_medium_blue) pos = ($online_general_menu_pos) dims = (288.0, 64.0) just = [center top] z = 2
	displaysprite id = online_menu_box_top_fill parent = online_menu_ui_container tex = window_fill_cap rgba = [0 0 0 200] pos = ($online_general_menu_pos) dims = (288.0, 64.0) just = [center top] z = 2
	displaysprite id = online_menu_box_body parent = online_menu_ui_container tex = window_frame_body_tall rgba = ($online_medium_blue) pos = (($online_general_menu_pos) + (0.0, 64.0)) dims = (288.0, 432.0) just = [center top] z = 2 flip_h
	displaysprite id = online_menu_box_body_fill parent = online_menu_ui_container tex = window_fill_body_large rgba = [0 0 0 200] pos = (($online_general_menu_pos) + (0.0, 64.0)) dims = (288.0, 432.0) just = [center top] z = 2 flip_h
	displaysprite id = online_menu_box_bottom parent = online_menu_ui_container tex = window_frame_cap rgba = ($online_medium_blue) pos = (($online_general_menu_pos) + (0.0, 496.0)) dims = (288.0, 64.0) just = [center top] z = 2 flip_h
	displaysprite id = online_menu_box_bottom_fill parent = online_menu_ui_container tex = window_fill_cap rgba = [0 0 0 200] pos = (($online_general_menu_pos) + (0.0, 496.0)) dims = (288.0, 64.0) just = [center top] z = 2 flip_h
	displaysprite id = online_title_bar parent = online_menu_ui_container tex = store_frame_bottom_bg rgba = ($online_light_blue) pos = (($online_general_menu_pos) + (0.0, 128.0)) dims = (288.0, 128.0) just = [center center] z = 3
	displaysprite id = online_highlight parent = online_menu_ui_container tex = white rgba = ($online_light_blue) pos = ((($online_general_menu_hi_lite_ypos [0]) * (0.0, 1.0)) + (632.0, 0.0)) dims = (288.0, 40.0) just = [center top] z = 3
	displaysprite id = online_bookend1 parent = online_menu_ui_container tex = character_hub_hilite_bookend rgba = ($online_light_blue) pos = ((($online_general_menu_hi_lite_ypos [0]) * (0.0, 1.0)) + (470.0, 20.0)) dims = (40.0, 35.0) just = [center center] z = 3
	displaysprite id = online_bookend2 parent = online_menu_ui_container tex = character_hub_hilite_bookend rgba = ($online_light_blue) pos = ((($online_general_menu_hi_lite_ypos [0]) * (0.0, 1.0)) + (806.0, 20.0)) dims = (40.0, 35.0) just = [center center] z = 3
	createscreenelement {
		type = textelement
		parent = online_menu_ui_container
		font = text_a4
		scale = (0.65000004, 0.75)
		rgba = ($online_medium_blue)
		text = <menu_title>
		just = [center top]
		pos = (($online_general_menu_pos) + (-5.0, 32.0))
		z_priority = 3.0
	}
	fit_text_into_menu_item id = <id> max_width = 223
	createscreenelement {
		type = textelement
		parent = online_menu_ui_container
		font = fontgrid_title_gh3
		scale = (0.7, 0.75)
		rgba = ($online_dark_purple)
		text = <menu_subtitle>
		just = [center top]
		pos = (($online_general_menu_pos) + (0.0, 115.0))
		z_priority = 4.0
	}
	fit_text_into_menu_item id = <id> max_width = 223
	selectable_menu_items = 0
	createscreenelement {
		type = textelement
		parent = <vmenu_id>
		font = fontgrid_title_gh3
		scale = (0.65000004, 0.75)
		rgba = ($online_light_blue)
		text = 'PLAYER MATCH'
		just = [left top]
		z_priority = 4.0
	}
	fit_text_into_menu_item id = <id> max_width = 223
	<id> :settags menu_item = <selectable_menu_items>
	<id> :setprops event_handlers = [
		{focus online_general_menu_focus params = {id = <id>}}
		{unfocus retail_menu_unfocus}
		{pad_choose select_match_type params = {type = player}}
	]
	<selectable_menu_items> = (<selectable_menu_items> + 1)
	createscreenelement {
		type = textelement
		parent = <vmenu_id>
		font = fontgrid_title_gh3
		scale = (0.65000004, 0.75)
		rgba = ($online_light_blue)
		text = 'RANKED MATCH'
		block_events
		just = [left top]
		z_priority = 4.0
	}
	fit_text_into_menu_item id = <id> max_width = 223
	<id> :settags menu_item = <selectable_menu_items>
	<id> :setprops event_handlers = [
		{focus online_general_menu_focus params = {id = <id>}}
		{unfocus retail_menu_unfocus}
		{pad_choose select_match_type params = {type = ranked}}
	]
	<selectable_menu_items> = (<selectable_menu_items> + 1)
	set_online_menu_highlight_pos menu_items = <selectable_menu_items>
	set_focus_color rgba = ($online_dark_purple)
	set_unfocus_color rgba = ($online_light_blue)
	change \{user_control_pill_text_color = [
			255
			255
			255
			255
		]}
	change \{user_control_pill_color = [
			0
			0
			0
			255
		]}
	add_user_control_helper \{text = 'SELECT'
		button = green
		z = 100}
	add_user_control_helper \{text = 'BACK'
		button = red
		z = 100}
	add_user_control_helper \{text = 'UP/DOWN'
		button = strumbar
		z = 100}
	launchevent type = focus target = <vmenu_id>
endscript

script destroy_mp_select_match_type_menu 
	if screenelementexists \{id = online_menu_ui_container}
		destroyscreenelement \{id = online_menu_ui_container}
	endif
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script select_match_type 
	change match_type = <type>
	if (<type> = ranked)
		setnetworkpreference \{field = 'ranked'
			string = 'ranked'
			checksum = ranked
			num = 0}
	else
		setnetworkpreference \{field = 'ranked'
			string = 'player'
			checksum = player
			num = 1}
	endif
	ui_flow_manager_respond_to_action \{action = select_match_type}
endscript

script online_general_menu_focus 
	if screenelementexists id = <id>
		retail_menu_focus
		<id> :gettags
		online_highlight :setprops pos = ((($online_general_menu_hi_lite_ypos [<menu_item>]) * (0.0, 1.0)) + (632.0, 0.0))
		online_bookend1 :setprops pos = ((($online_general_menu_hi_lite_ypos [<menu_item>]) * (0.0, 1.0)) + (485.0, 20.0))
		online_bookend2 :setprops pos = ((($online_general_menu_hi_lite_ypos [<menu_item>]) * (0.0, 1.0)) + (789.0, 20.0))
	endif
endscript

script set_online_menu_highlight_pos \{menu_items = 2}
	switch <menu_items>
		case 2
		setarrayelement \{arrayname = online_general_menu_hi_lite_ypos
			globalarray
			index = 0
			newvalue = 368.875}
		setarrayelement \{arrayname = online_general_menu_hi_lite_ypos
			globalarray
			index = 1
			newvalue = 439.75}
		case 3
		setarrayelement \{arrayname = online_general_menu_hi_lite_ypos
			globalarray
			index = 0
			newvalue = 332.75}
		setarrayelement \{arrayname = online_general_menu_hi_lite_ypos
			globalarray
			index = 1
			newvalue = 403.625}
		setarrayelement \{arrayname = online_general_menu_hi_lite_ypos
			globalarray
			index = 2
			newvalue = 474.5}
		case 4
		setarrayelement \{arrayname = online_general_menu_hi_lite_ypos
			globalarray
			index = 0
			newvalue = 298.0}
		setarrayelement \{arrayname = online_general_menu_hi_lite_ypos
			globalarray
			index = 1
			newvalue = 368.875}
		setarrayelement \{arrayname = online_general_menu_hi_lite_ypos
			globalarray
			index = 2
			newvalue = 439.75}
		setarrayelement \{arrayname = online_general_menu_hi_lite_ypos
			globalarray
			index = 3
			newvalue = 510.625}
	endswitch
endscript
