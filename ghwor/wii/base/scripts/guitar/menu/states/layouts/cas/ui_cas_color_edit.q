
script ui_create_cas_color_edit \{title = qs(0xc420923e)}
	ui_event_add_params hist_tex = <hist_tex>
	resolvebodyspecificpartinappearance part = <part>
	GetArraySize <part_materials>
	if (<array_Size> = 0)
		ScriptAssert \{'No part_materials!'}
	endif
	if NOT GotParam \{material_index}
		material_index = 0
	endif
	color_edit_get_current_colors part = <part> part_material = ((<part_materials> [<material_index>]).desc_id)
	make_generic_car_menu {
		vmenu_id = create_cas_color_edit_vmenu
		title = <title>
		num_icons = <num_icons>
		exclusive_device = <state_device>
		show_history
	}
	setup_cas_menu_handlers vmenu_id = create_cas_color_edit_vmenu camera_list = <camera_list> zoom_camera = <zoom_camera>
	if GotParam \{cam_name}
		SpawnScriptNow task_menu_default_anim_in params = {base_name = <cam_name>}
	endif
	colorwheel_add_item {
		Scale = 0.6
		pad_choose_script = color_edit_exit_accept
		pad_choose_params = {num_states = <num_states> material_index = <material_index> part = <part> part_materials = <part_materials>}
		increment_focus_script = color_edit_focus_change
		increment_focus_params = {part = <part> part_material = ((<part_materials> [<material_index>]).desc_id)}
		initial_rgb = <rgb>
		special_exit_script = color_wheel_reset
		special_exit_params = {hide_parts = <hide_parts>}
		lookup_table = <color_wheel>
		camera_list = <camera_list>
		zoom_camera = <zoom_camera>
	}
	add_user_control_helper controller = <state_device> text = qs(0xc18d5e76) button = green z = 100000
	add_user_control_helper controller = <state_device> text = qs(0xf7723015) button = red z = 100000
	menu_finish car_rotate_zoom controller = <state_device>
	SpawnScriptLater \{choose_color_wheel}
	if ScreenElementExists \{id = color_wheel_menu_item}
		setup_cas_menu_handlers vmenu_id = color_wheel_menu_item no_zoom = <no_zoom> camera_list = <camera_list> zoom_camera = <zoom_camera>
	endif
endscript

script choose_color_wheel 
	LaunchEvent \{Type = pad_choose}
endscript

script ui_return_cas_color_edit 
	menu_finish car_helper_text_extra controller = <state_device>
endscript

script ui_destroy_cas_color_edit 
	destroy_generic_menu
endscript

script ui_init_cas_color_edit 
	ui_event_add_params \{hist_tex = menu_history_color_edit}
	pushtemporarycasappearance
	color_edit_hide_parts_enter hide_parts = <hide_parts>
	if GotParam \{stance}
		if getcurrentcasobject
			bandmanager_changestance Name = <cas_object> stance = <stance> no_wait
		endif
	endif
endscript

script ui_deinit_cas_color_edit 
	color_edit_hide_parts_exit hide_parts = <hide_parts>
	poptemporarycasappearance
	if NOT GotParam \{skip_deinit_script}
		if GotParam \{additional_deinit_script}
			<additional_deinit_script>
		endif
		if getcurrentcasobject
			if GotParam \{return_stance}
				bandmanager_changestance Name = <cas_object> stance = <return_stance> no_wait
			else
				bandmanager_changestance Name = <cas_object> stance = stance_frontend no_wait
			endif
		endif
	endif
endscript

script color_edit_focus_change 
	setcasappearancematerial part = <part> material = <part_material> value = <Color>
	if ((<part> = cas_female_hair) || (<part> = cas_male_hair))
		if getcasappearancepartdescid part = <part>
			cas_propogate_hair_color
		endif
	endif
	cas_propogate_guitar_color_to part = <part>
	updatecurrentcasmodel \{buildscript = modelbuilder_update_colors
		do_asset_load = 0}
endscript

script color_edit_get_current_colors 
	RequireParams \{[
			part
			part_material
		]
		all}
	if getcasmaterialvalue part = <part> material = <part_material>
		lookup = ($color_lookup_table.<value>)
		if GotParam \{lookup}
			if StructureContains structure = <lookup> diffuse
				diff_r = (<lookup>.diffuse [0])
				diff_g = (<lookup>.diffuse [1])
				diff_b = (<lookup>.diffuse [2])
				if isfloat <diff_r>
					diff_r = (<diff_r> * 255.0)
					diff_g = (<diff_g> * 255.0)
					diff_b = (<diff_b> * 255.0)
					CastToInteger \{diff_r}
					CastToInteger \{diff_g}
					CastToInteger \{diff_b}
				endif
				rgb = [0 0 0]
				SetArrayElement ArrayName = rgb index = 0 NewValue = <diff_r>
				SetArrayElement ArrayName = rgb index = 1 NewValue = <diff_g>
				SetArrayElement ArrayName = rgb index = 2 NewValue = <diff_b>
			endif
		else
			printstruct <...>
		endif
	endif
	if NOT GotParam \{rgb}
		AddArrayElement array = [] element = ($default_cas_hue)
		AddArrayElement array = <array> element = ($default_cas_sat)
		AddArrayElement array = <array> element = ($default_cas_value)
		hsvtorgb hsv = <array>
	endif
	return rgb = <rgb>
endscript

script color_edit_exit_accept \{num_states = 2}
	GetArraySize <part_materials>
	material_index = (<material_index> + 1)
	if (<material_index> < <array_Size>)
		ui_event event = menu_change data = {
			state = uistate_cas_color_edit
			part = <part>
			part_materials = <part_materials>
			material_index = <material_index>
			hist_tex = menu_history_color_edit
			num_states = (<num_states> + 1)
		}
	else
		generic_event_back nosound data = {num_states = <num_states>}
	endif
endscript

script color_edit_hide_parts_enter 
	if GotParam \{hide_parts}
		GetArraySize <hide_parts>
		i = 0
		if (<array_Size> > 0)
			begin
			setcasappearancepartinstance part = (<hide_parts> [<i>]) part_instance = {desc_id = None}
			i = (<i> + 1)
			repeat <array_Size>
			rebuildcurrentcasmodel
		endif
	endif
endscript

script color_edit_hide_parts_exit 
	if GotParam \{hide_parts}
		if NOT is_accepting_invite_or_sigining_out
			mergepartintotemporarycasappearance \{part_list = [
					cas_body
				]}
		endif
	endif
endscript
