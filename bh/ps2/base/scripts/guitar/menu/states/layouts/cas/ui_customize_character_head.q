
script ui_create_customize_character_head 
	make_generic_menu \{vmenu_id = customize_head_vmenu
		back_state = uistate_cas
		title = qs(0x888dd748)
		num_icons = 1
		show_history}
	if <desc_id> :desc_resolvealias Name = 0x44475582 param = 0x7363d093
		<0x7363d093> :obj_spawnscript 0xa7a510a8 params = {0x4d641ae8 0xe99089a3 = $0x187899ed 0xffd05882 = $0xddccbea4}
	else

	endif
	if <desc_id> :desc_resolvealias Name = 0xf313b252 param = 0x7c09a415
		<0x7c09a415> :obj_spawnscript 0xa7a510a8 params = {0x4d641ae8 0xe99089a3 = $0x52565f88 0xffd05882 = $0xddccbea4}
	else

	endif
	setup_cas_menu_handlers \{vmenu_id = customize_head_vmenu
		camera_list = [
			'customize_character_head'
			'customize_character_head_R'
			'customize_character_head_B'
			'customize_character_head_L'
		]
		zoom_camera = 'customize_character_Zoom'}
	add_generic_menu_text_item \{text = qs(0xb5847ea6)
		choose_state = uistate_popout_select_part
		choose_state_data = {
			text = qs(0xbae5b37d)
			part = cas_base_torso
			num_icons = 2
			is_popup
			stance = stance_select_head
			return_stance = stance_select_head
			camera_list = [
				'customize_character_head'
				'customize_character_head_R'
				'customize_character_head_B'
				'customize_character_head_L'
			]
			zoom_camera = 'customize_character_Zoom'
		}}
	if NOT (is_female_char)
		add_generic_menu_text_item \{text = qs(0xea973ef8)
			choose_state = uistate_cag_select_part_inclusion
			choose_state_data = {
				part = cas_male_facial_hair
				body_part = cas_male_base_torso
				text = qs(0xea973ef8)
				is_popup
				hist_tex = icon_facial_hair
				cam_name = 'customize_character_head'
				camera_list = [
					'customize_character_head'
					'customize_character_head_R'
					'customize_character_head_B'
					'customize_character_head_L'
				]
				zoom_camera = 'customize_character_Zoom'
				is_esp = 0
			}}
	endif
	if (is_female_char)
		add_generic_menu_text_item \{text = qs(0xa9884efa)
			choose_state = uistate_popout_select_part
			choose_state_data = {
				text = qs(0xa9884efa)
				part = cas_eye_makeup
				num_icons = 2
				is_popup
				additional_deinit_script = unhide_car_parts_for_face_paint
				additional_init_script = hide_car_parts_for_face_paint
				hist_tex = icon_makeup
				return_stance = stance_select_head
				camera_list = [
					'customize_character_head'
					'customize_character_head_R'
					'customize_character_head_B'
					'customize_character_head_L'
				]
				zoom_camera = 'customize_character_Zoom'
			}}
		add_generic_menu_text_item \{text = qs(0xe3e91c9e)
			choose_state = uistate_popout_select_part
			choose_state_data = {
				text = qs(0xe3e91c9e)
				part = cas_lip_makeup
				num_icons = 2
				is_popup
				additional_deinit_script = unhide_car_parts_for_face_paint
				additional_init_script = hide_car_parts_for_face_paint
				hist_tex = icon_lips
				return_stance = stance_select_head
				camera_list = [
					'customize_character_head'
					'customize_character_head_R'
					'customize_character_head_B'
					'customize_character_head_L'
				]
				zoom_camera = 'customize_character_Zoom'
			}}
	endif
	getcurrentcasobject
	if GotParam \{cas_object}
		bandmanager_changestance Name = <cas_object> stance = stance_select_head no_wait
	endif
	menu_finish \{car_helper_text}
endscript

script ui_return_customize_character_head 
	menu_finish \{car_helper_text}
endscript

script ui_destroy_customize_character_head 
	destroy_generic_menu
endscript

script ui_init_customize_character_head 
	ui_load_cas_rawpak \{part = cas_body}
endscript

script hide_car_parts_for_face_paint 
	pushtemporarycasappearance
	setcasappearancepartinstance \{part = cas_hair
		part_instance = {
			desc_id = None
		}}
	setcasappearancepartinstance \{part = cas_hat_hair
		part_instance = {
			desc_id = None
		}}
	setcasappearancepartinstance \{part = cas_hat
		part_instance = {
			desc_id = None
		}}
	setcasappearancepartinstance \{part = cas_acc_face
		part_instance = {
			desc_id = None
		}}
	rebuildcurrentcasmodel
endscript

script unhide_car_parts_for_face_paint 
	mergepartintotemporarycasappearance \{part_list = [
			cas_body
			cas_eye_makeup
			cas_lip_makeup
		]}
endscript
