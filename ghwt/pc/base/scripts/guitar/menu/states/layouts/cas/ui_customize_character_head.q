
script ui_create_customize_character_head 
	make_generic_menu \{vmenu_id = customize_head_vmenu
		back_state = UIstate_cas
		title = qs("Change Head")
		num_icons = 1
		show_history}
	setup_cas_menu_handlers \{vmenu_id = customize_head_vmenu
		camera_list = [
			'customize_character_head'
			'customize_character_head_R'
			'customize_character_head_B'
			'customize_character_head_L'
		]
		zoom_camera = 'customize_character_Zoom'}
	add_generic_menu_icon_item \{icon = icon_face
		text = qs("FACE")
		choose_state = UIstate_character_face_deformation}
	if NOT (is_female_char)
		add_generic_menu_icon_item \{icon = icon_facial_hair
			text = qs("FACIAL HAIR")
			choose_state = UIstate_popout_select_part
			choose_state_data = {
				text = qs("Select Facial Hair Style")
				part = CAS_Male_Facial_Hair
				num_icons = 2
				is_popup
				hist_tex = icon_facial_hair
				return_stance = Stance_Select_Head
				camera_list = [
					'customize_character_head'
					'customize_character_head_R'
					'customize_character_head_B'
					'customize_character_head_L'
				]
				zoom_camera = 'customize_character_Zoom'
			}}
	endif
	get_section_index_from_desc_id \{part = CAS_Body
		target_desc_id = `Eye Makeup`}
	if GotParam \{section_index}
		add_generic_menu_icon_item {
			icon = icon_makeup
			text = qs("EYE MAKEUP")
			choose_state = UIstate_cap_artist_layer_popout
			choose_state_data = {
				part = CAS_Body
				text = qs("EYE MAKEUP")
				section_index = <section_index>
				num_icons = 2
				hist_tex = icon_makeup
				is_popup
				additional_deinit_script = unhide_car_parts_for_face_paint
				additional_init_script = hide_car_parts_for_face_paint
				return_stance = Stance_Select_Head
				camera_list = ['customize_character_head' 'customize_character_head_R' 'customize_character_head_B' 'customize_character_head_L']
				zoom_camera = 'customize_character_Zoom'
			}
		}
		RemoveParameter \{section_index}
	endif
	get_section_index_from_desc_id \{part = CAS_Body
		target_desc_id = `Lip Makeup`}
	if GotParam \{section_index}
		add_generic_menu_icon_item {
			icon = icon_lips
			text = qs("LIP MAKEUP")
			choose_state = UIstate_cap_artist_layer_popout
			choose_state_data = {
				part = CAS_Body
				text = qs("LIP MAKEUP")
				section_index = <section_index>
				num_icons = 2
				hist_tex = icon_lips
				is_popup
				return_stance = Stance_Select_Head
				additional_deinit_script = unhide_car_parts_for_face_paint
				additional_init_script = hide_car_parts_for_face_paint
				camera_list = ['customize_character_head' 'customize_character_head_R' 'customize_character_head_B' 'customize_character_head_L']
				zoom_camera = 'customize_character_Zoom'
			}
		}
		RemoveParameter \{section_index}
	endif
	add_generic_menu_icon_item \{icon = icon_graphics
		text = qs("FACE PAINT")
		choose_state = UIstate_cap_main
		choose_state_data = {
			part = CAS_Body
			text = qs("FACE PAINT")
			div_id = Head
			num_icons = 2
			hist_tex = icon_graphics
			additional_deinit_script = unhide_car_parts_for_face_paint
			additional_init_script = hide_car_parts_for_face_paint
			return_stance = Stance_Select_Head
			camera_list = [
				'customize_character_head'
				'customize_character_head_R'
				'customize_character_head_B'
				'customize_character_head_L'
			]
			zoom_camera = 'customize_character_Zoom'
			cam_name = 'customize_character_head'
		}}
	GetCurrentCASObject
	if GotParam \{cas_object}
		BandManager_ChangeStance name = <cas_object> stance = Stance_Select_Head no_wait
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
	ui_load_cas_rawpak \{part = CAS_Body}
endscript

script hide_car_parts_for_face_paint 
	PushTemporaryCASAppearance
	SetCASAppearancePartInstance \{part = CAS_Hair
		part_instance = {
			desc_id = none
		}}
	SetCASAppearancePartInstance \{part = CAS_Hat_Hair
		part_instance = {
			desc_id = none
		}}
	SetCASAppearancePartInstance \{part = CAS_Hat
		part_instance = {
			desc_id = none
		}}
	SetCASAppearancePartInstance \{part = CAS_Acc_Face
		part_instance = {
			desc_id = none
		}}
	RebuildCurrentCASModel
endscript

script unhide_car_parts_for_face_paint 
	MergePartIntoTemporaryCASAppearance \{part_list = [
			CAS_Body
		]}
endscript
