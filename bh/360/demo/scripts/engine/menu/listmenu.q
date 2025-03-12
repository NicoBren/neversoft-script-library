
script make_list_menu {
		parent = root_window
		pad_back_sound = ui_menu_select_sfx
		pad_back_script = generic_event_back
		additional_z_priority = 20
		exclusive_device = ($primary_controller)
	}
	generic_list_destroy
	if gotparam \{use_all_controllers}
		removeparameter \{exclusive_device}
		get_all_exclusive_devices
	endif
	if screenelementexists \{id = current_menu}
		current_menu :se_setprops \{alpha = 0.5}
	endif
	createscreenelement {
		type = descinterface
		parent = <parent>
		desc = 'generic_list_menu'
		id = generic_list_menu
		exclusive_device = <exclusive_device>
		relative_z_priority = <additional_z_priority>
		generic_list_menu_icon_icon_texture = <icon>
		generic_list_icon_name_text = <text>
		ignore_parent_alpha = true
	}
	if NOT gotparam \{text}
		<id> :se_setprops generic_list_icon_name_alpha = 0
	endif
	if gotparam \{list_offset}
		<id> :se_setprops generic_list_menu_container_pos = {<list_offset> relative}
	endif
	if gotparam \{icon_offset}
		<id> :se_setprops generic_list_menu_icon_container_pos = {<icon_offset> relative}
	endif
	if NOT ((gotparam list_offset) || (gotparam icon_offset))
		getscreenelementposition id = <parent> absolute
		if (<screenelementpos>.(0.0, 1.0) > 550)
			raise_by = ((480 - <screenelementpos>.(0.0, 1.0)) * (0.0, 1.0))
			<id> :se_setprops generic_list_menu_container_pos = {relative <raise_by>}
			raise_by = ((550 - <screenelementpos>.(0.0, 1.0)) * (0.0, 1.0))
			<id> :se_setprops generic_list_menu_icon_container_pos = {relative <raise_by>}
		elseif (<screenelementpos>.(0.0, 1.0) > 500)
			raise_by = ((480 - <screenelementpos>.(0.0, 1.0)) * (0.0, 1.0))
			<id> :se_setprops generic_list_menu_container_pos = {relative <raise_by>}
			raise_by = ((500 - <screenelementpos>.(0.0, 1.0)) * (0.0, 1.0))
			<id> :se_setprops generic_list_menu_icon_container_pos = {relative <raise_by>}
		endif
		if (<screenelementpos>.(0.0, 1.0) < 200)
			<id> :se_setprops generic_list_menu_container_pos = {relative (0.0, 55.0)}
			<id> :se_setprops generic_list_menu_icon_container_pos = {relative (0.0, 20.0)}
		endif
	endif
	if generic_list_menu :desc_resolvealias \{name = alias_generic_list_menu_vmenu
			param = generic_list_vmenu}
		assignalias id = <generic_list_vmenu> alias = current_list_menu
		if gotparam \{vmenu_id}
			assignalias id = <generic_list_vmenu> alias = <vmenu_id>
		endif
	else
		scriptassert \{qs(0xf9a4eab9)}
	endif
	setscreenelementprops \{id = current_list_menu
		event_handlers = [
			{
				menu_selection_changed
				generic_menu_up_or_down_sound
			}
		]}
	if gotparam \{pad_down_script}
		setscreenelementprops {
			id = current_list_menu
			event_handlers = [
				{pad_down <pad_down_script> params = <pad_down_params>}
			]
		}
	endif
	if gotparam \{pad_up_script}
		setscreenelementprops {
			id = current_list_menu
			event_handlers = [
				{pad_up <pad_up_script> params = <pad_up_params>}
			]
		}
	endif
	if gotparam \{pad_option2_script}
		setscreenelementprops {
			id = current_list_menu
			event_handlers = [
				{pad_option2 <pad_back_sound>}
				{pad_option2 generic_blocking_execute_script params = {pad_script = <pad_option2_script> pad_params = <pad_option2_params>}}
			]
		}
	endif
	if gotparam \{pad_option_script}
		setscreenelementprops {
			id = current_list_menu
			event_handlers = [
				{pad_option <pad_back_sound>}
				{pad_option generic_blocking_execute_script params = {pad_script = <pad_option_script> pad_params = <pad_option_params>}}
			]
		}
	endif
	if gotparam \{pad_back_script}
		generic_list_menu :settags pad_back_script = <pad_back_script> pad_back_params = <pad_back_params>
	endif
	menu_id = <id>
	spawnscriptnow animate_in_list_menu params = {id = <menu_id>}
endscript

script generic_list_destroy 
	if screenelementexists \{id = generic_list_menu}
		destroyscreenelement \{id = generic_list_menu}
	endif
	if screenelementexists \{id = popout_unfocus_current_menu}
		destroyscreenelement \{id = popout_unfocus_current_menu}
	endif
	cleanup_cas_menu_handlers
	clean_up_user_control_helpers
	if screenelementexists \{id = current_menu}
		current_menu :se_setprops \{alpha = 1.0}
	endif
endscript

script add_list_item \{focus_script = menu_list_focus
		unfocus_script = menu_list_unfocus
		pad_choose_sound = ui_menu_select_sfx
		pad_back_sound = generic_menu_pad_back_sound
		parent = current_list_menu
		editable_icon = colorwheel_tiny}
	if NOT gotparam \{pad_back_script}
		generic_list_menu :gettags
	endif
	if gotparam \{price}
		formattext \{textname = price_text
			qs(0xda88f456)}
	else
		no_price = true
	endif
	if screenelementexists id = <parent>
		createscreenelement {
			type = descinterface
			parent = <parent>
			desc = 'generic_list_menu_item'
			dims = (330.0, 40.0)
			generic_list_menu_item_text_text = <text>
			generic_list_menu_item_price_text_text = <price_text>
			generic_list_menu_item_editable_texture = <editable_icon>
			generic_list_menu_item_text_font = <font>
		}
	else
		scriptassert \{qs(0x46ce1fb5)}
	endif
	if gotparam \{no_price}
		<id> :se_setprops generic_list_menu_item_price_alpha = 0.0
	else
		<id> :se_setprops generic_list_menu_item_price_alpha = 1.0
	endif
	if gotparam \{editable}
		editable = 1
	endif
	if gotparam \{choose_state}
		pad_choose_script = ui_event
		pad_choose_params = {event = menu_change data = {state = <choose_state> <choose_state_data>}}
	endif
	if gotparam \{choose_back}
		pad_choose_script = generic_event_back
	endif
	setscreenelementprops {
		id = <id>
		event_handlers = [
			{focus <focus_script> params = {id = <id> additional_focus_script = <additional_focus_script> additional_focus_params = <additional_focus_params> no_price = <no_price> editable = <editable>}}
			{unfocus <unfocus_script> params = {id = <id> additional_unfocus_script = <additional_unfocus_script> additional_unfocus_params = <additional_unfocus_params> editable = <editable>}}
		]
	}
	if gotparam \{pad_choose_script}
		setscreenelementprops {
			id = <id>
			event_handlers = [
				{pad_choose <pad_choose_sound>}
				{pad_choose generic_blocking_execute_script params = {pad_script = <pad_choose_script> pad_params = <pad_choose_params>}}
			]
		}
	endif
	if gotparam \{pad_back_script}
		setscreenelementprops {
			id = <id>
			event_handlers = [
				{pad_back <pad_back_sound>}
				{pad_back generic_blocking_execute_script params = {pad_script = <pad_back_script> pad_params = <pad_back_params>}}
			]
		}
	endif
	if gotparam \{pad_square_script}
		setscreenelementprops {
			id = <id>
			event_handlers = [
				{pad_square <pad_choose_sound>}
				{pad_option generic_blocking_execute_script params = {pad_script = <pad_square_script> pad_params = <pad_square_params>}}
			]
		}
	endif
	if gotparam \{pad_option2_script}
		setscreenelementprops {
			id = <id>
			event_handlers = [
				{pad_option2 <pad_choose_sound>}
				{pad_option2 generic_blocking_execute_script params = {pad_script = <pad_option2_script> pad_params = <pad_option2_params>}}
			]
		}
	endif
	if gotparam \{pad_start_script}
		setscreenelementprops {
			id = <id>
			event_handlers = [
				{pad_start <pad_choose_sound>}
				{pad_start generic_blocking_execute_script params = {pad_script = <pad_start_script> pad_params = <pad_start_params>}}
			]
		}
	endif
	if gotparam \{text_case}
		<id> :se_setprops generic_list_menu_item_text_textcase = <text_case>
	endif
endscript

script menu_list_focus 
	if screenelementexists id = <id>
		current_list_menu :getsingletag \{0x654705a4}
		if gotparam \{0x654705a4}
			font = <0x654705a4>
		else
			font = fontgrid_title_a1
		endif
		<id> :se_setprops generic_list_menu_item_text_rgba = ($cas_color_scheme.text_focus_color)
		<id> :se_setprops generic_list_menu_item_text_font = <font>
		<id> :se_setprops 0xb035ab09 = 1.2
		if gotparam \{price}
			<id> :se_setprops generic_list_menu_item_price_alpha = 1.0
		endif
		if gotparam \{editable}
			<id> :se_setprops generic_list_menu_item_editable_alpha = 1.0
		endif
	endif
	getscreenelementchildren \{id = current_list_menu}
	getarraysize <children>
	current_list_menu :menu_getselectedindex
	if (<array_size> > 1)
		ratio = (<selected_index> / (<array_size> - 1.0))
	else
		ratio = 0
	endif
	if generic_list_menu :desc_resolvealias \{name = 0x742e70f0}
		<resolved_id> :se_getprops
		scroll_pos = ((((<scrollbar_dims> [1] - 25) * 2 * <ratio>) - (<scrollbar_dims> [1] - 25)) * (0.0, 1.0))
		<resolved_id> :se_setprops scrollbar_thumb_pos = <scroll_pos> time = 0.1
	endif
	if gotparam \{additional_focus_script}
		<additional_focus_script> <additional_focus_params>
	endif
endscript

script menu_list_unfocus 
	if screenelementexists id = <id>
		current_list_menu :getsingletag \{0x4353e067}
		if gotparam \{0x4353e067}
			font = <0x4353e067>
		else
			font = ($test_menu_font)
		endif
		<id> :se_setprops generic_list_menu_item_text_rgba = (($cas_color_scheme).text_color)
		<id> :se_setprops generic_list_menu_item_text_font = <font>
		<id> :se_setprops generic_list_menu_item_text_material = null
		<id> :se_setprops generic_list_menu_item_editable_alpha = 0.0
		<id> :se_setprops 0xb035ab09 = 1.0
	endif
	if gotparam \{additional_unfocus_script}
		<additional_unfocus_script> <additional_unfocus_params>
	endif
endscript

script animate_in_list_menu 
	setspawninstancelimits \{max = 1
		management = kill_oldest}
	if screenelementexists id = <id>
		<id> :se_setprops generic_list_menu_icon_container_scale = 0.5
		<id> :se_setprops generic_list_menu_icon_container_scale = 1.0 time = 0.2
		<id> :se_setprops generic_list_menu_container_pos = {(-190.0, 0.0) relative}
		<id> :se_setprops generic_list_menu_container_pos = {(270.0, 0.0) relative} time = 0.2
		<id> :se_setprops generic_list_icon_name_pos = {(0.0, -30.0) relative}
		<id> :se_setprops generic_list_icon_name_pos = {(0.0, 40.0) relative} time = 0.2
	endif
	wait \{0.22
		seconds}
	if screenelementexists id = <id>
		<id> :se_setprops generic_list_icon_name_pos = {(0.0, -10.0) relative} time = 0.15
	endif
endscript
