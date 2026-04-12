
script ui_init_downloads 
	jam_init_reverb
endscript

script ui_create_downloads 
	change \{respond_to_signin_changed = 1}
	change \{respond_to_signin_changed_func = none}
	menu_music_on
	make_menu_frontend \{screen = bassist
		title = qs("DOWNLOADS")}
	if isXenon
		add_menu_frontend_item text = qs("GHTUNES") pad_choose_script = set_primary_controller pad_choose_params = {device_num = <device_num> state = UIstate_jam_ghtunes require_live = 1 jam = 3}
	elseif IsPs3
		add_menu_frontend_item text = qs("GHTUNES") pad_choose_script = set_primary_controller pad_choose_params = {device_num = <device_num> state = UIstate_jam_ghtunes require_live = 1}
	endif
	CreateScreenElement {
		type = TextElement
		parent = <item_container_id>
		id = ghtunes_sm
		text = qs("\LSM")
		font = fontgrid_text_a6
		just = [left top]
		scale = 0.25
		pos = (215.0, 5.0)
		rgba = ($menu_unfocus_color)
	}
	<item_id> :SE_SetProps {
		event_handlers = [
			{focus retail_menu_focus params = {id = <id>}}
			{unfocus retail_menu_unfocus params = {id = <id>}}
		]
	}
	menu_finish
endscript

script ui_destroy_downloads 
	generic_ui_destroy
endscript

script ui_deinit_downloads 
	jam_deinit_reverb
endscript
