gfx_need_restart = 0
gfx_physics_id = 0

script ui_create_options_graphics 
	GetGlobalTags \{user_options}
	make_menu_frontend \{id = graphics_options
		screen = Guitarist
		title = qs(0xc1e39a57)
		pad_back_script = activate_resolution_warning}
	add_menu_frontend_item \{text = qs(0x79f30cde)
		pos = (20.0, 0.0)
		pad_choose_script = ui_options_graphics_select_resolution
		pad_choose_params = {
			no_restart
			player = 1
		}}
	WinPortGfxGetOptionChoices \{option = 0}
	GetArraySize <choices>
	choiceCount = <array_size>
	WinPortGfxGetOptionValue \{option = 0}
	WinPortGfxSetOptionValue option = 0 value = <value>
	CreateScreenElement {
		id = current_resolution
		parent = <item_container_id>
		type = TextBlockElement
		pos = (20.0, 20.0)
		text = (<choices> [<value>])
		font = fontgrid_title_a1
		dims = (0.0, 26.0)
		fit_height = `scale down if larger`
		fit_width = `expand dims`
		rgba = [255 255 255 255]
		internal_just = [center , center]
		just = [center , center]
		pos_anchor = [center , center]
		z_priority = 50
	}
	add_menu_frontend_item \{text = qs(0xc67b1e73)
		pos = (20.0, 0.0)
		pad_choose_script = ui_options_graphics_select_graphics
		pad_choose_params = {
			no_restart
			player = 1
		}}
	WinPortGfxGetOptionValue \{option = 1}
	graphics_on = <value>
	if (<graphics_on> = 1)
		graphics_texture = data_settings_checkmark
	else
		graphics_texture = data_settings_xmark
	endif
	CreateScreenElement {
		id = gfx_high_detail_check
		type = SpriteElement
		parent = <item_container_id>
		local_id = check
		pos = (0.0, 20.0)
		just = [center center]
		texture = <graphics_texture>
	}
	add_menu_frontend_item \{text = qs("CROWD")
		pos = (20.0, 0.0)
		pad_choose_script = ui_options_graphics_select_crowd
		pad_choose_params = {
			no_restart
			player = 1
		}}
	WinPortGfxGetOptionValue \{option = 2}
	crowd_on = <value>
	if (<crowd_on> = 0)
		crowd_texture = data_settings_xmark
	else
		crowd_texture = data_settings_checkmark
	endif
	CreateScreenElement {
		id = gfx_crowd_check
		type = SpriteElement
		parent = <item_container_id>
		local_id = check
		pos = (0.0, 20.0)
		just = [center center]
		texture = <crowd_texture>
	}
	add_menu_frontend_item \{text = qs(0x91e877ec)
		pos = (20.0, 0.0)
		pad_choose_script = ui_options_graphics_select_physics
		pad_choose_params = {
			no_restart
			player = 1
		}}
	if (<graphics_on> = 0)
		<item_id> :SE_SetProps not_focusable text_rgba = [64 64 64 255]
	endif
	change gfx_physics_id = <item_id>
	WinPortGfxGetOptionValue \{option = 3}
	physics_on = <value>
	if (<physics_on> = 0)
		physics_texture = data_settings_xmark
	else
		physics_texture = data_settings_checkmark
	endif
	CreateScreenElement {
		id = gfx_physics_check
		type = SpriteElement
		parent = <item_container_id>
		local_id = check
		pos = (0.0, 20.0)
		just = [center center]
		texture = <physics_texture>
	}
	add_menu_frontend_item \{text = qs(0x4765710e)
		pos = (20.0, 0.0)
		pad_choose_script = ui_options_graphics_reset
		pad_choose_params = {
			player = 1
		}}
	menu_finish
endscript

script activate_resolution_warning 
	WinPortGfxApplyOptions
	generic_ui_destroy
	if ($gfx_need_restart = 0)
		generic_event_back
	else
		ui_resolution_change_warning
		change \{gfx_need_restart = 0}
	endif
endscript

script ui_return_options_graphics 
	clean_up_user_control_helpers
	add_gamertag_helper \{exclusive_device = $primary_controller}
	menu_finish
endscript

script ui_options_graphics_select_graphics 
	Obj_GetID
	<id> = <ObjID>
	ResolveScreenElementId id = {<id> child = {0 child = check}}
	WinPortGfxGetOptionValue \{option = 1}
	graphics_on = <value>
	if (<graphics_on> = 0)
		WinPortGfxSetOptionValue \{option = 1
			value = 1}
		SoundEvent \{event = CheckBox_Check_SFX}
		<resolved_id> :SetProps texture = data_settings_checkmark
	else
		WinPortGfxSetOptionValue \{option = 1
			value = 0}
		SoundEvent \{event = checkbox_sfx}
		<resolved_id> :SetProps texture = data_settings_xmark
	endif
	WinPortGfxApplyOptions
	if (<graphics_on> = 0)
		($gfx_physics_id) :SE_SetProps focusable text_rgba = ($menu_unfocus_color)
	else
		($gfx_physics_id) :SE_SetProps not_focusable text_rgba = [64 64 64 255]
		ResolveScreenElementId \{id = {
				$gfx_physics_id
				child = {
					0
					child = check
				}
			}}
		<resolved_id> :SetProps texture = data_settings_xmark
	endif
	change \{gfx_need_restart = 1}
endscript

script ui_options_graphics_select_crowd 
	Obj_GetID
	<id> = <ObjID>
	ResolveScreenElementId id = {<id> child = {0 child = check}}
	WinPortGfxGetOptionValue \{option = 2}
	crowd_on = <value>
	if (<crowd_on> = 0)
		WinPortGfxSetOptionValue \{option = 2
			value = 2}
		SoundEvent \{event = CheckBox_Check_SFX}
		<resolved_id> :SetProps texture = data_settings_checkmark
	else
		WinPortGfxSetOptionValue \{option = 2
			value = 0}
		SoundEvent \{event = checkbox_sfx}
		<resolved_id> :SetProps texture = data_settings_xmark
	endif
	WinPortGfxApplyOptions
endscript

script ui_options_graphics_select_physics 
	Obj_GetID
	<id> = <ObjID>
	ResolveScreenElementId id = {<id> child = {0 child = check}}
	WinPortGfxGetOptionValue \{option = 3}
	physics_on = <value>
	if (<physics_on> = 0)
		WinPortGfxSetOptionValue \{option = 3
			value = 1}
		SoundEvent \{event = CheckBox_Check_SFX}
		<resolved_id> :SetProps texture = data_settings_checkmark
	else
		WinPortGfxSetOptionValue \{option = 3
			value = 0}
		SoundEvent \{event = checkbox_sfx}
		<resolved_id> :SetProps texture = data_settings_xmark
	endif
	WinPortGfxApplyOptions
endscript

script ui_options_graphics_select_resolution 
	WinPortGfxGetOptionChoices \{option = 0}
	GetArraySize <choices>
	choiceCount = (<array_size> - 1)
	WinPortGfxGetOptionValue \{option = 0}
	if (<value> = <choiceCount>)
		WinPortGfxSetOptionValue \{option = 0
			value = 0}
	else
		WinPortGfxSetOptionValue option = 0 value = (<value> + 1)
	endif
	WinPortGfxApplyOptions
	WinPortGfxGetOptionValue \{option = 0}
	current_resolution :SetProps text = (<choices> [<value>])
	change \{gfx_need_restart = 1}
endscript

script ui_options_graphics_reset 
	WinPortGfxGetDefaultOptionValue \{option = 0}
	WinPortGfxSetOptionValue option = 0 value = <value>
	WinPortGfxGetOptionChoices \{option = 0}
	current_resolution :SetProps text = (<choices> [<value>])
	WinPortGfxGetDefaultOptionValue \{option = 1}
	WinPortGfxSetOptionValue option = 1 value = <value>
	graphics_on = <value>
	if ScreenElementExists \{id = gfx_high_detail_check}
		if (<graphics_on> = 1)
			SetScreenElementProps \{id = gfx_high_detail_check
				texture = data_settings_checkmark}
			($gfx_physics_id) :SE_SetProps focusable text_rgba = ($menu_unfocus_color)
		else
			SetScreenElementProps \{id = gfx_high_detail_check
				texture = data_settings_xmark}
			($gfx_physics_id) :SE_SetProps not_focusable text_rgba = [64 64 64 255]
		endif
	endif
	WinPortGfxGetDefaultOptionValue \{option = 2}
	WinPortGfxSetOptionValue option = 2 value = <value>
	crowd_on = <value>
	if ScreenElementExists \{id = gfx_crowd_check}
		if (<crowd_on> = 2)
			SetScreenElementProps \{id = gfx_crowd_check
				texture = data_settings_checkmark}
		else
			SetScreenElementProps \{id = gfx_crowd_check
				texture = data_settings_xmark}
		endif
	endif
	WinPortGfxGetDefaultOptionValue \{option = 3}
	WinPortGfxSetOptionValue option = 3 value = <value>
	crowd_on = <value>
	if ScreenElementExists \{id = gfx_physics_check}
		if (<crowd_on> = 1)
			SetScreenElementProps \{id = gfx_physics_check
				texture = data_settings_checkmark}
		else
			SetScreenElementProps \{id = gfx_physics_check
				texture = data_settings_xmark}
		endif
	endif
	WinPortGfxApplyOptions
	change \{gfx_need_restart = 1}
endscript

script gfx_get_choices 
	WinPortGfxGetOptionChoices \{option = 0}
	text = <choices>
endscript

script ui_resolution_change_warning 
	printstruct <...>
	create_popup_warning_menu \{textblock = {
			text = qs(0x3fe70f90)
			dims = (800.0, 400.0)
			scale = 0.55
		}
		use_all_controllers
		no_background
		menu_pos = (640.0, 520.0)
		options = [
			{
				func = resolution_warning_select
				text = qs(0x472ed33d)
			}
		]
		pad_back_script = resolution_warning_select}
endscript

script resolution_warning_select 
	destroy_popup_warning_menu
	generic_event_back
endscript
