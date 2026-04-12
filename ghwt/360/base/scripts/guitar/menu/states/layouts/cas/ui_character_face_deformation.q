
script ui_create_character_face_deformation 
	make_generic_menu \{vmenu_id = face_deformation_vmenu
		title = qs("EDIT FACE")
		num_icons = 2
		show_history}
	setup_cas_menu_handlers \{vmenu_id = face_deformation_vmenu
		camera_list = [
			'customize_character_head'
			'customize_character_head_R'
			'customize_character_head_B'
			'customize_character_head_L'
		]
		zoom_camera = 'customize_character_Zoom'}
	add_generic_menu_icon_item \{icon = Head_Age
		text = qs("AGE")
		choose_state = UIstate_popout_select_part
		choose_state_data = {
			text = qs("AGE")
			part = CAS_Age
			num_icons = 2
			is_popup
			hist_tex = Head_Age
			return_stance = Stance_Select_Head
			camera_list = [
				'customize_character_head'
				'customize_character_head_R'
				'customize_character_head_B'
				'customize_character_head_L'
			]
			zoom_camera = 'customize_character_Zoom'
		}}
	add_generic_menu_icon_item {
		text = qs("SHAPE")
		icon = icon_head_scale
		choose_state = UIstate_character_face_deformation_options
		choose_state_data = {text = qs("SHAPE") option_array = ($cas_head_bone_options) hist_tex = icon_head_scale}
	}
	add_generic_menu_icon_item {
		icon = Head_Nose
		text = qs("NOSE")
		choose_state = UIstate_character_face_deformation_options
		choose_state_data = {text = qs("NOSE") option_array = ($cas_nose_bone_options) hist_tex = Head_Nose stance = Stance_Select_Profile}
	}
	add_generic_menu_icon_item {
		icon = Head_Mouth
		text = qs("MOUTH")
		choose_state = UIstate_character_face_deformation_options
		choose_state_data = {text = qs("MOUTH") option_array = ($cas_mouth_bone_options) hist_tex = Head_Mouth}
	}
	add_generic_menu_icon_item {
		icon = Head_Eye
		text = qs("EYES")
		choose_state = UIstate_character_face_deformation_options
		choose_state_data = {text = qs("EYES") option_array = ($cas_eye_bone_options) hist_tex = Head_Eye return_stance = Stance_Select_Head}
	}
	add_generic_menu_icon_item {
		icon = Head_Eyebrow
		text = qs("EYEBROWS")
		choose_state = UIstate_character_face_deformation_options
		choose_state_data = {text = qs("EYEBROWS") option_array = ($cas_brow_bone_options) hist_tex = Head_Eyebrow}
	}
	GetGlobalTags savegame = ($cas_current_savegame) cas_helper_dialogue param = visit_deformation
	if (<visit_deformation> = 0)
		SetGlobalTags savegame = ($cas_current_savegame) cas_helper_dialogue params = {visit_deformation = 1}
		ui_event_wait \{event = menu_change
			data = {
				state = UIstate_helper_dialogue
				is_popup
				life = 30
				text = qs("The FACE option allows you to alter the various aspects of your Rocker's face.")
			}}
	endif
	menu_finish \{car_helper_text}
endscript

script ui_return_character_face_deformation 
	clean_up_user_control_helpers
	menu_finish \{car_helper_text}
endscript

script ui_destroy_character_face_deformation 
	destroy_generic_menu
endscript

script ui_init_character_face_deformation 
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

script ui_deinit_character_face_deformation 
	MergePartIntoTemporaryCASAppearance \{part_list = [
			CAS_Body
			CAS_Age
			CAS_Eyes
		]}
endscript
