
script ui_create_customize_character_mic_main 
	make_generic_menu \{vmenu_id = create_customize_character_mic_vmenu
		title = qs("CHOOSE MIC")
		show_history
		hist_tex = icon_customize}
	SpawnScript \{generic_menu_animate_in}
	setup_cas_menu_handlers \{vmenu_id = create_customize_character_mic_vmenu
		camera_list = [
			'customize_character_mic'
			'customize_character_mic_R'
			'customize_character_mic_B'
			'customize_character_mic_L'
		]
		zoom_camera = 'customize_mic_Zoom'}
	add_generic_menu_icon_item \{icon = icon_mic
		text = qs("MIC")
		choose_state = UIstate_popout_select_part
		choose_state_data = {
			text = qs("MIC")
			part = CAS_Mic
			hist_tex = icon_mic
			is_popup
			cam_name = 'customize_microphone'
			camera_list = [
				'customize_microphone_F'
				'customize_microphone_R'
				'customize_microphone_B'
				'customize_microphone_L'
			]
			zoom_camera = 'customize_mic_Zoom'
			stance = Stance_Select_Microphone
			return_stance = Stance_Select_Mic
		}}
	add_generic_menu_icon_item \{icon = icon_mic_stand
		text = qs("MIC STAND")
		choose_state = UIstate_popout_select_part
		choose_state_data = {
			text = qs("MIC STAND")
			part = CAS_Mic_Stand
			hist_tex = icon_mic_stand
			is_popup
			cam_name = 'customize_character_mic'
			camera_list = [
				'customize_character_mic'
				'customize_character_mic_R'
				'customize_character_mic_B'
				'customize_character_mic_L'
			]
			zoom_camera = 'customize_mic_Zoom'
			stance = Stance_Select_Mic
			return_stance = Stance_Select_Mic
		}}
	menu_finish \{car_helper_text}
	GetCurrentCASObject
	printf \{qs("\L---------------------------------Mic-------------------------------------------")}
	BandManager_ChangeStance name = <cas_object> stance = Stance_Select_Mic no_wait
	LaunchEvent type = focus target = create_customize_character_mic_vmenu data = {child_index = <selected_index>}
endscript

script ui_destroy_customize_character_mic_main 
	destroy_generic_menu
endscript

script ui_return_customize_character_mic_main 
	menu_finish \{car_helper_text}
endscript
