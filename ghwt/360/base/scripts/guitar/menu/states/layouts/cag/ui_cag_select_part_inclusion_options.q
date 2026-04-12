
script ui_create_cag_select_part_inclusion_options 
	spawnscriptnow ui_create_cag_select_part_inclusion_options_worker params = {<...>}
endscript

script ui_create_cag_select_part_inclusion_options_worker 
	RequireParams \{[
			part
		]
		all}
	make_generic_menu \{vmenu_id = create_cag_custom_part_pickguard_options_vmenu
		pad_back_script = ui_event
		pad_back_params = {
			event = menu_back
			data = {
				num_states = 2
			}
		}}
	create_ui_history_header text = <text>
	setup_cas_menu_handlers \{vmenu_id = create_cag_custom_part_pickguard_options_vmenu}
	get_section_index_from_desc_id part = <part> target_desc_id = Finishes
	if GotParam \{section_index}
		add_generic_menu_icon_item {
			text = qs("Finishes")
			choose_state = UIstate_cap_artist_layer
			choose_state_data = {part = <part> text = qs("Finishes") section_index = <section_index>}
		}
		RemoveParameter \{section_index}
	endif
	get_section_index_from_desc_id part = <part> target_desc_id = Details
	if GotParam \{section_index}
		add_generic_menu_icon_item {
			text = qs("Details")
			choose_state = UIstate_cap_artist_layer
			choose_state_data = {part = <part> text = qs("Details") section_index = <section_index>}
		}
		RemoveParameter \{section_index}
	endif
	menu_finish \{car_helper_text}
	if GotParam \{cam_name}
		change \{generic_menu_block_input = 1}
		task_menu_default_anim_in base_name = <cam_name>
		change \{generic_menu_block_input = 0}
	endif
	LaunchEvent type = focus target = create_cag_custom_part_pickguard_options_vmenu data = {child_index = <selected_index>}
endscript

script ui_destroy_cag_select_part_inclusion_options 
	destroy_generic_menu
endscript
