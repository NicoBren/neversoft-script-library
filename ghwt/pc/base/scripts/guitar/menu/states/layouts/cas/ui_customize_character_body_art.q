
script ui_create_customize_character_body_art 
	make_generic_menu \{vmenu_id = create_customize_character_body_art_vmenu
		title = qs("Tattoos")
		num_icons = 2
		show_history}
	setup_cas_menu_handlers \{vmenu_id = create_customize_character_body_art_vmenu
		camera_list = [
			'customize_tat_torso'
			'customize_tat_torso_R'
			'customize_tat_torso_B'
			'customize_tat_torso_L'
		]
		zoom_camera = 'customize_character_Zoom'}
	add_generic_menu_icon_item {
		icon = BodyArt_Chest
		text = qs("Torso")
		choose_state = UIstate_cap_main
		choose_state_data = {
			savegame = ($cas_current_savegame)
			part = CAS_Body
			text = qs("Torso Tattoo")
			cam_name = 'customize_tat_torso'
			camera_list = ['customize_tat_torso' 'customize_tat_torso_R' 'customize_tat_torso_B' 'customize_tat_torso_L']
			zoom_camera = 'customize_character_Zoom'
			div_id = Body
			hist_tex = BodyArt_Chest
			stance = Stance_Select_Tat_Chest
			additional_init_script = hide_torso_parts_for_body_art
			additional_deinit_script = unhide_torso_parts_for_body_art
		}
	}
	add_generic_menu_icon_item {
		icon = BodyArt_RightArm
		text = qs("Right Arm")
		choose_state = UIstate_cap_main
		choose_state_data = {
			savegame = ($cas_current_savegame)
			part = CAS_Body
			text = qs("Right Arm")
			cam_name = 'customize_tat_right_arm'
			camera_list = ['customize_tat_right_arm' 'customize_tat_right_arm_R' 'customize_tat_right_arm_B' 'customize_tat_right_arm_L']
			zoom_camera = 'customize_character_Zoom'
			div_id = `Right Arm`
			hist_tex = BodyArt_RightArm
			stance = Stance_Select_Tat_Arm_R
			additional_init_script = hide_torso_parts_for_body_art
			additional_deinit_script = unhide_torso_parts_for_body_art
		}
	}
	add_generic_menu_icon_item {
		icon = BodyArt_LeftArm
		text = qs("Left Arm")
		choose_state = UIstate_cap_main
		choose_state_data = {
			savegame = ($cas_current_savegame)
			part = CAS_Body
			text = qs("Left Arm")
			cam_name = 'customize_tat_left_arm'
			camera_list = ['customize_tat_left_arm' 'customize_tat_left_arm_R' 'customize_tat_left_arm_B' 'customize_tat_left_arm_L']
			zoom_camera = 'customize_character_Zoom'
			div_id = `Left Arm`
			hist_tex = BodyArt_LeftArm
			stance = Stance_Select_Tat_Arm_L
			additional_init_script = hide_torso_parts_for_body_art
			additional_deinit_script = unhide_torso_parts_for_body_art
		}
	}
	menu_finish \{car_helper_text}
	LaunchEvent type = focus target = create_customize_character_body_art_vmenu data = {child_index = <selected_index>}
endscript

script ui_destroy_customize_character_body_art 
	destroy_generic_menu
endscript

script hide_torso_parts_for_body_art 
	PushTemporaryCASAppearance
	SetCASAppearancePartInstance \{part = CAS_Acc_Left
		part_instance = {
			desc_id = none
		}}
	SetCASAppearancePartInstance \{part = CAS_Acc_Right
		part_instance = {
			desc_id = none
		}}
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

script unhide_torso_parts_for_body_art 
	MergePartIntoTemporaryCASAppearance \{part_list = [
			CAS_Body
		]}
endscript
