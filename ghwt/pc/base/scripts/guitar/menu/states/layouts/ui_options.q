
script ui_create_options 
	change \{rich_presence_context = presence_menus}
	change \{respond_to_signin_changed = 1}
	change \{respond_to_signin_changed_func = none}
	make_menu_frontend \{screen = Guitarist
		title = qs("OPTIONS")
		spacing_between = -15}
	add_menu_frontend_item \{text = qs("SETTINGS")
		choose_state = uistate_options_settings}
	if IsWinPort
		add_menu_frontend_item \{text = qs(0x123c8984)
			choose_state = uistate_options_graphics}
	endif
	add_menu_frontend_item \{text = qs("LEADERBOARDS")
		choose_state = UIstate_top_rockers_mode}
	add_menu_frontend_item \{text = qs("CALIBRATE LAG")
		choose_state = UIstate_options_calibrate_lag}
	add_menu_frontend_item \{text = qs("BAND INFO")
		pad_choose_script = menu_choose_band_make_selection
		pad_choose_params = {
			from_options = 1
			event_params = {
				event = menu_back
			}
		}}
	if NOT current_band_has_band_name
		<item_id> :SE_SetProps not_focusable text_rgba = [64 64 64 255]
	endif
	add_menu_frontend_item \{text = qs("SAVE / LOAD")
		choose_state = uistate_options_data}
	if NOT current_band_has_band_name
		<item_id> :SE_SetProps not_focusable text_rgba = [64 64 64 255]
	endif
	add_menu_frontend_item \{text = qs("VIDEOS")
		choose_state = uistate_bonus_videos}
	add_menu_frontend_item \{text = qs("CHEATS")
		choose_state = uistate_options_cheats}
	add_menu_frontend_item \{text = qs(0xcee5ca64)
		choose_state = UIstate_winport_account_submenu}
	if NOT IsWinPort
		add_menu_frontend_item \{text = qs("GUITARHERO.COM")
			choose_state = UIstate_guitarhero_com}
		signin_params = {local}
		if IsPs3
			signin_params = {}
		endif
		if NOT CheckForSignIn <signin_params> controller_index = ($primary_controller)
			<item_id> :SE_SetProps not_focusable text_rgba = [64 64 64 255]
		endif
	endif
	menu_finish
endscript

script ui_destroy_options 
	generic_ui_destroy
endscript

script ui_options_get_controller_type controller = ($primary_controller)
	type = guitar
	text = qs("GUITAR")
	if NOT IsGuitarController controller = <controller>
		type = Drums
		text = qs("DRUM")
		if NOT IsDrumController controller = <controller>
			type = Vocals
			text = qs("VOCAL")
		endif
	endif
	return {type = <type> text = <text>}
endscript

script ui_options_set_settings 
	if ScreenElementExists \{id = current_menu}
		GetGlobalTags \{user_options}
		current_menu :SetTags {user_options = <...>}
	endif
endscript

script ui_options_check_settings 
	RemoveParameter \{event}
	RemoveParameter \{controller}
	if NOT ($playing_song)
		RemoveParameter \{device_num}
		if ScreenElementExists \{id = current_menu}
			GetGlobalTags \{user_options}
			new_user_options = <...>
			current_menu :GetSingleTag \{user_options}
			if GotParam \{user_options}
				if NOT CompareStructs struct1 = <new_user_options> struct2 = <user_options>
					generic_menu_pad_back_sound
					spawnscriptnow \{ui_memcard_autosave_replace}
					return
				endif
			endif
		endif
	endif
	generic_event_back
endscript
