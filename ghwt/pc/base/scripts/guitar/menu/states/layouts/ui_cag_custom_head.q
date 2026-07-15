
script ui_create_cag_custom_head 
	make_generic_menu \{vmenu_id = create_cag_custom_head_id
		show_history
		title = qs("Change Head")}
	setup_cas_menu_handlers \{vmenu_id = create_cag_custom_head_id
		camera_list = [
			'cag_custom_head'
			'cag_custom_head_R'
			'cag_custom_head_B'
			'cag_custom_head_L'
		]
		zoom_camera = 'customize_cag_Zoom'}
	add_generic_menu_icon_item {
		icon = icon_cag_head_type
		text = qs("STYLE")
		choose_state = UIstate_cag_select_part_inclusion
		choose_state_data = {
			part = <part>
			body_part = <body_part>
			text = qs("CHOOSE HEAD")
			is_popup
			hist_tex = icon_cag_head_type
			color_wheel = ($guitar_colorwheel)
			camera_list = ['cag_custom_head' 'cag_custom_head_R' 'cag_custom_head_B' 'cag_custom_head_L']
			zoom_camera = 'customize_cag_Zoom'
			no_edit
		}
	}
	get_section_index_from_desc_id part = <part> target_desc_id = Finishes
	if GotParam \{section_index}
		add_generic_menu_icon_item {
			icon = icon_cag_head_finishes
			text = qs("FINISHES")
			choose_state = UIstate_cap_artist_layer_popout
			choose_state_data = {
				part = <part>
				text = qs("Finishes")
				section_index = <section_index>
				is_popup
				hist_tex = icon_cag_head_finishes
				color_wheel = ($guitar_colorwheel)
				camera_list = ['cag_custom_head' 'cag_custom_head_R' 'cag_custom_head_B' 'cag_custom_head_L']
				zoom_camera = 'customize_cag_Zoom'
			}
		}
		RemoveParameter \{section_index}
	endif
	get_section_index_from_desc_id part = <part> target_desc_id = Details
	if GotParam \{section_index}
		add_generic_menu_icon_item {
			icon = icon_details
			text = qs("DETAILS")
			choose_state = UIstate_cap_artist_layer_popout
			choose_state_data = {
				part = <part>
				text = qs("Details")
				section_index = <section_index>
				is_popup hist_tex = icon_details
				color_wheel = ($guitar_colorwheel)
				camera_list = ['cag_custom_head' 'cag_custom_head_R' 'cag_custom_head_B' 'cag_custom_head_L']
				zoom_camera = 'customize_cag_Zoom'
			}
		}
		RemoveParameter \{section_index}
	endif
	if is_part_capable part = <part>
		add_generic_menu_icon_item {
			icon = icon_graphics
			text = qs("GRAPHICS")
			choose_state = UIstate_cap_main
			choose_state_data = {
				savegame = ($cas_current_savegame)
				part = <part>
				text = qs("Graphics")
				hist_tex = icon_graphics
				return_stance = Stance_Select_Guitar
				camera_list = ['cag_custom_head' 'cag_custom_head_R' 'cag_custom_head_B' 'cag_custom_head_L']
				zoom_camera = 'customize_cag_Zoom'
			}
		}
	endif
	menu_finish \{car_helper_text}
	LaunchEvent type = focus target = create_cag_custom_head_id data = {child_index = <selected_index>}
endscript

script ui_destroy_cag_custom_head 
	destroy_generic_menu
endscript

script ui_return_cag_custom_head 
	spawnscriptnow \{ui_event_block
		params = {
			event = menu_refresh
		}}
endscript
