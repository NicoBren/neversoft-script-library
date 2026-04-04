
script ui_create_customize_character_outfit_accessories 
	make_generic_menu \{back_state = UIstate_cas
		vmenu_id = create_customize_character_outfit_accessories_vmenu
		title = qs("Accessories")
		num_icons = 2
		show_history}
	setup_cas_menu_handlers \{vmenu_id = create_customize_character_outfit_accessories_vmenu
		camera_list = [
			'customize_character'
			'customize_character_R'
			'customize_character_B'
			'customize_character_L'
		]
		zoom_camera = 'customize_character_Zoom'}
	add_generic_menu_icon_item {
		icon = icon_face_acc
		text = qs("FACE")
		choose_state = UIstate_popout_select_part
		choose_state_data = {
			text = qs("CHOOSE FACE ACCESSORY")
			cam_name = 'customize_face'
			camera_list = ['customize_character_hair' 'customize_character_hair_R' 'customize_character_hair_B' 'customize_character_hair_L']
			zoom_camera = 'customize_character_Zoom'
			part = CAS_Acc_Face
			stance = Stance_Select_Head
			is_popup
			hist_tex = icon_face_acc
			color_wheel = ($clothing_colorwheel)
			purchase_menu
			stance = Stance_Select_Glasses
		}
	}
	add_generic_menu_icon_item {
		icon = AccessoriesHat
		text = qs("HAT")
		choose_state = UIstate_popout_select_part
		choose_state_data = {
			text = qs("CHOOSE HAT")
			cam_name = 'customize_hat'
			camera_list = ['customize_character_hair' 'customize_character_hair_R' 'customize_character_hair_B' 'customize_character_hair_L']
			zoom_camera = 'customize_character_Zoom'
			part = CAS_Hat
			hist_tex = AccessoriesHat
			stance = Stance_Select_Head
			is_popup
			color_wheel = ($clothing_colorwheel)
			purchase_menu
			stance = Stance_Select_Hat
		}
	}
	add_generic_menu_icon_item {
		icon = AccessoriesLeftArm
		text = qs("LEFT ARM")
		choose_state = UIstate_popout_select_part
		choose_state_data = {
			text = qs("CHOOSE LEFT ARM ACCESSORY")
			cam_name = 'customize_left_arm'
			camera_list = ['customize_left_arm' 'customize_left_arm_R' 'customize_left_arm_B' 'customize_left_arm_L']
			zoom_camera = 'customize_character_Zoom'
			part = CAS_Acc_Left
			hist_tex = AccessoriesLeftArm
			stance = Stance_Select_Arm_L
			is_popup
			color_wheel = ($clothing_colorwheel)
			purchase_menu
			stance = Stance_Select_Arm_L
			additional_init_script = hide_car_parts_accessories
			additional_deinit_script = unhide_car_parts_accessories
		}
	}
	add_generic_menu_icon_item {
		icon = AccessoriesRightArm
		text = qs("RIGHT ARM")
		choose_state = UIstate_popout_select_part
		choose_state_data = {
			text = qs("CHOOSE RIGHT ARM ACCESSORY")
			cam_name = 'customize_right_arm'
			camera_list = ['customize_right_arm' 'customize_right_arm_R' 'customize_right_arm_B' 'customize_right_arm_L']
			zoom_camera = 'customize_character_Zoom'
			part = CAS_Acc_Right
			hist_tex = AccessoriesRightArm
			stance = Stance_Select_Arm_R
			is_popup
			color_wheel = ($clothing_colorwheel)
			purchase_menu
			stance = Stance_Select_Arm_R
			additional_init_script = hide_car_parts_accessories
			additional_deinit_script = unhide_car_parts_accessories
		}
	}
	add_generic_menu_icon_item {
		icon = icon_face_piercing
		text = qs("PIERCINGS")
		choose_state = UIstate_popout_select_part
		choose_state_data = {
			hist_tex = icon_face_piercing
			cam_name = 'customize_piercings'
			camera_list = ['customize_character_head' 'customize_character_head_R' 'customize_character_head_B' 'customize_character_head_L']
			zoom_camera = 'customize_character_Zoom'
			part = CAS_Acc_Ears
			stance = Stance_Select_Head
			is_popup
			color_wheel = ($clothing_colorwheel)
			purchase_menu
			stance = Stance_Select_Head
			additional_init_script = hide_car_parts_piercings
			additional_deinit_script = unhide_car_parts_piercings
		}
	}
	menu_finish \{car_helper_text}
endscript

script ui_return_customize_character_outfit_accessories 
	menu_finish \{car_helper_text}
endscript

script ui_destroy_customize_character_outfit_accessories 
	destroy_generic_menu
endscript

script hide_car_parts_accessories 
	PushTemporaryCASAppearance
	if is_female_char
		SetCASAppearancePartInstance \{part = CAS_Torso
			part_instance = {
				desc_id = F_Fun_Torso_Bra
			}}
	else
		SetCASAppearancePartInstance \{part = CAS_Torso
			part_instance = {
				desc_id = Shirtless
			}}
	endif
	RebuildCurrentCASModel
endscript

script unhide_car_parts_accessories 
	MergePartIntoTemporaryCASAppearance \{part_list = [
			CAS_Acc_Left
			CAS_Acc_Right
		]}
endscript

script hide_car_parts_piercings 
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

script unhide_car_parts_piercings 
	MergePartIntoTemporaryCASAppearance \{part_list = [
			CAS_Acc_Ears
		]}
endscript
