
script create_select_num_songs_menu \{menu_title = qs("CREATE MATCH")
		menu_subtitle = qs("NUMBER OF SONGS")
		menu_id = create_num_songs_menu
		vmenu_id = create_num_songs_vmenu}
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = online_menu_ui_container
		pos = (0.0, 0.0)}
	CreateScreenElement {
		type = VScrollingMenu
		parent = online_menu_ui_container
		id = <menu_id>
		just = [center top]
		dims = (256.0, 350.0)
		pos = (($online_general_menu_pos) + (0.0, 182.0))
		z_priority = 1
	}
	CreateScreenElement {
		type = VMenu
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
	create_menu_backdrop \{texture = xb_online_bg}
	CreateScreenElement {
		type = TextElement
		parent = online_menu_ui_container
		font = fontgrid_text_a8
		scale = (0.65000004, 0.75)
		rgba = ($online_medium_blue)
		text = <menu_title>
		just = [center top]
		pos = (($online_general_menu_pos) + (-5.0, 32.0))
		z_priority = 3.0
	}
	fit_text_into_menu_item id = <id> max_width = 223
	CreateScreenElement {
		type = TextElement
		parent = online_menu_ui_container
		font = fontgrid_title_a1
		scale = (0.65000004, 0.75)
		rgba = ($online_dark_purple)
		text = <menu_subtitle>
		just = [center top]
		pos = (($online_general_menu_pos) + (0.0, 115.0))
		z_priority = 4.0
	}
	fit_text_into_menu_item id = <id> max_width = 223
	selectable_menu_items = 0
	CreateScreenElement {
		type = TextElement
		parent = <vmenu_id>
		font = fontgrid_title_a1
		scale = (0.65000004, 0.75)
		rgba = ($online_light_blue)
		text = qs("1")
		just = [left top]
		z_priority = 4.0
	}
	fit_text_into_menu_item id = <id> max_width = 223
	<id> :SetTags menu_item = <selectable_menu_items>
	<id> :SE_SetProps event_handlers = [
		{focus online_general_menu_focus params = {id = <id>}}
		{unfocus retail_menu_unfocus}
		{pad_choose select_num_songs params = {type = num_1}}
	]
	<selectable_menu_items> = (<selectable_menu_items> + 1)
	if ($game_mode = p2_coop)
		FormatText \{TextName = option_text_num3
			qs("3")}
	else
		FormatText \{TextName = option_text_num3
			qs("Best of 3")}
	endif
	CreateScreenElement {
		type = TextElement
		parent = <vmenu_id>
		font = fontgrid_title_a1
		scale = (0.65000004, 0.75)
		rgba = ($online_light_blue)
		text = <option_text_num3>
		just = [left top]
		z_priority = 4.0
	}
	fit_text_into_menu_item id = <id> max_width = 223
	<id> :SetTags menu_item = <selectable_menu_items>
	<id> :SE_SetProps event_handlers = [
		{focus online_general_menu_focus params = {id = <id>}}
		{unfocus retail_menu_unfocus}
		{pad_choose select_num_songs params = {type = num_3}}
	]
	<selectable_menu_items> = (<selectable_menu_items> + 1)
	if ($game_mode = p2_coop)
		FormatText \{TextName = option_text_num5
			qs("5")}
	else
		FormatText \{TextName = option_text_num5
			qs("Best of 5")}
	endif
	CreateScreenElement {
		type = TextElement
		parent = <vmenu_id>
		font = fontgrid_title_a1
		scale = (0.65000004, 0.75)
		rgba = ($online_light_blue)
		text = <option_text_num5>
		just = [left top]
		z_priority = 4.0
	}
	fit_text_into_menu_item id = <id> max_width = 223
	<id> :SetTags menu_item = <selectable_menu_items>
	<id> :SE_SetProps event_handlers = [
		{focus online_general_menu_focus params = {id = <id>}}
		{unfocus retail_menu_unfocus}
		{pad_choose select_num_songs params = {type = num_5}}
	]
	<selectable_menu_items> = (<selectable_menu_items> + 1)
	if ($game_mode = p2_coop)
		FormatText \{TextName = option_text_num7
			qs("7")}
	else
		FormatText \{TextName = option_text_num7
			qs("Best of 7")}
	endif
	CreateScreenElement {
		type = TextElement
		parent = <vmenu_id>
		font = fontgrid_title_a1
		scale = (0.65000004, 0.75)
		rgba = ($online_light_blue)
		text = <option_text_num7>
		just = [left top]
		z_priority = 4.0
	}
	fit_text_into_menu_item id = <id> max_width = 223
	<id> :SetTags menu_item = <selectable_menu_items>
	<id> :SE_SetProps event_handlers = [
		{focus online_general_menu_focus params = {id = <id>}}
		{unfocus retail_menu_unfocus}
		{pad_choose select_num_songs params = {type = num_7}}
	]
	<selectable_menu_items> = (<selectable_menu_items> + 1)
	set_online_menu_highlight_pos Menu_items = <selectable_menu_items>
	set_focus_color rgba = ($online_dark_purple)
	set_unfocus_color rgba = ($online_light_blue)
	set_user_control_color \{text_rgba = [
			200
			200
			200
			255
		]
		bg_rgba = [
			0
			0
			0
			200
		]}
	add_user_control_helper \{text = qs("SELECT")
		button = green
		z = 100}
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100}
	LaunchEvent type = focus target = <vmenu_id>
endscript

script destroy_select_num_songs_menu 
	if ScreenElementExists \{id = online_menu_ui_container}
		DestroyScreenElement \{id = online_menu_ui_container}
	endif
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script select_num_songs 
	change num_songs = <type>
	ui_flow_manager_respond_to_action \{action = continue}
endscript
