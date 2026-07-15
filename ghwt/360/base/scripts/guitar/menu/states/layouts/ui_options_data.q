
script ui_create_options_data 
	make_menu_frontend \{screen = Guitarist
		title = qs("SAVE / LOAD")
		pad_back_script = ui_options_check_settings}
	add_menu_frontend_item \{text = qs("SAVE GAME")
		pad_choose_script = ui_memcard_save
		pad_choose_params = {
			event = menu_back
		}}
	add_menu_frontend_item \{text = qs("LOAD GAME")
		pad_choose_script = ui_memcard_load
		pad_choose_params = {
			event = menu_back
		}}
	add_menu_frontend_item \{text = qs("RESET PROGRESS")
		pad_choose_script = generic_event_choose
		pad_choose_params = {
			state = uistate_options_data_delete
		}}
	add_menu_frontend_item \{text = qs("AUTOSAVE")
		pos = (20.0, 0.0)
		pad_choose_script = ui_options_data_toggle_autosave}
	texture = data_settings_xmark
	GetGlobalTags \{user_options}
	if (<autosave> = 1)
		<texture> = data_settings_checkmark
	endif
	CreateScreenElement {
		type = SpriteElement
		parent = <item_container_id>
		local_id = check
		pos = (0.0, 20.0)
		just = [center center]
		texture = <texture>
	}
	menu_finish
	ui_options_set_settings
endscript

script ui_destroy_options_data 
	generic_ui_destroy
endscript

script ui_options_data_toggle_autosave \{time = 0.075}
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	GetTags
	Obj_GetID
	<id> = <ObjID>
	if ResolveScreenElementId id = {<id> child = {0 child = check}}
		GetGlobalTags \{user_options}
		if (<autosave> = 1)
			SoundEvent \{event = checkbox_sfx}
			<autosave> = 0
			if ScreenElementExists id = <resolved_id>
				<resolved_id> :LegacyDoMorph alpha = 0 time = <time>
				SetScreenElementProps id = <resolved_id> texture = data_settings_xmark
				<resolved_id> :LegacyDoMorph alpha = 1 time = <time>
			endif
		else
			SoundEvent \{event = CheckBox_Check_SFX}
			<autosave> = 1
			if ScreenElementExists id = <resolved_id>
				<resolved_id> :LegacyDoMorph alpha = 0 time = <time>
				SetScreenElementProps id = <resolved_id> texture = data_settings_checkmark
				<resolved_id> :LegacyDoMorph alpha = 1 time = <time>
			endif
		endif
		SetGlobalTags user_options params = {autosave = <autosave>}
	endif
endscript
