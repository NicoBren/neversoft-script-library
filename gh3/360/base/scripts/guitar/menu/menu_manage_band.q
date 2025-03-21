manage_band_menu_font = text_a4

script create_manage_band_menu 
	get_band_game_mode_name
	formattext checksumname = bandname_id 'band%i_info_%g' i = ($current_band) g = <game_mode_name>
	getglobaltags <bandname_id>
	formattext textname = the_bands_name "''%n''" n = <name>
	new_menu \{scrollid = mb_scroll
		vmenuid = mb_vmenu
		use_backdrop = 0
		menu_pos = (732.0, 314.0)
		rot_angle = -2
		spacing = 1}
	create_menu_backdrop \{texture = toprockers_bg}
	createscreenelement \{type = containerelement
		id = mb_helper_container
		parent = root_window
		pos = (0.0, 0.0)}
	createscreenelement \{type = containerelement
		id = mb_menu_container
		parent = mb_vmenu
		pos = (0.0, 0.0)
		not_focusable}
	createscreenelement \{type = spriteelement
		parent = mb_helper_container
		id = light_overlay
		texture = venue_overlay
		pos = (640.0, 360.0)
		dims = (1280.0, 720.0)
		just = [
			center
			center
		]
		z_priority = 99}
	createscreenelement \{type = spriteelement
		parent = mb_helper_container
		id = ticket_image
		texture = band_name_ticket
		rgba = [
			255
			255
			255
			255
		]
		pos = (640.0, 360.0)
		dims = (1280.0, 720.0)
		just = [
			center
			center
		]
		z_priority = 1}
	createscreenelement {
		type = spriteelement
		parent = mb_helper_container
		id = mb_random_image
		texture = band_name_graphic03
		rgba = [255 255 255 255]
		pos = (($enter_band_name_big_vals).right_side_img_pos)
		dims = (($enter_band_name_big_vals).right_side_img_dims)
		z_priority = 2
	}
	<rand> = 0
	getrandomvalue \{name = rand
		integer
		a = 0
		b = 2}
	if (<rand> = 0)
		setscreenelementprops \{id = mb_random_image
			texture = band_name_graphic01}
	elseif (<rand> = 1)
		setscreenelementprops \{id = mb_random_image
			texture = band_name_graphic02}
	elseif (<rand> = 2)
		setscreenelementprops \{id = mb_random_image
			texture = band_name_graphic03}
	endif
	<manage_band_pos> = (725.0, 190.0)
	createscreenelement {
		type = textelement
		parent = mb_helper_container
		pos = <manage_band_pos>
		font = text_a10_large
		rgba = [90 25 5 255]
		text = "MANAGE BAND"
		scale = 1.75
		z_priority = 3
		rot_angle = -2
	}
	fit_text_in_rectangle id = <id> dims = (850.0, 200.0) pos = <manage_band_pos>
	createscreenelement {
		type = textelement
		parent = mb_helper_container
		pos = (<manage_band_pos> + (0.0, 110.0))
		font = ($choose_band_menu_font)
		rgba = [230 230 200 255]
		text = <the_bands_name>
		scale = (1.75, 1.25)
		z_priority = 3
		rot_angle = -2
	}
	getscreenelementdims id = <id>
	if (<width> > 600)
		fit_text_in_rectangle id = <id> dims = (1000.0, 70.0) pos = (<manage_band_pos> + (0.0, 110.0))
	endif
	displaysprite {
		parent = mb_helper_container
		tex = white
		rgba = [90 25 5 255]
		pos = (<manage_band_pos> + (-325.0, 92.0))
		dims = (656.0, 48.0)
		z = 3
		rot_angle = -2
	}
	<mb_hlbar_pos_1> = (408.0, 385.0)
	<mb_hlbar_pos_2> = (408.0, 441.0)
	<mb_hlbar_dims> = (654.0, 58.0)
	displaysprite {
		id = mb_hlbarid
		parent = mb_helper_container
		tex = white
		rgba = [205 105 110 255]
		pos = <mb_hlbar_pos_1>
		dims = <mb_hlbar_dims>
		z = 3
		rot_angle = -2
	}
	createscreenelement {
		id = mb_rename_band_id
		parent = mb_menu_container
		type = textelement
		font = ($choose_band_menu_font)
		rgba = ($menu_unfocus_color)
		text = "RENAME  BAND"
		just = [center top]
	}
	createscreenelement {
		parent = mb_vmenu
		type = textelement
		font = ($choose_band_menu_font)
		text = ""
		scale = 1.3
		just = [center top]
		event_handlers = [
			{focus setscreenelementprops params = {
					id = mb_hlbarid
					pos = <mb_hlbar_pos_1>
				}
			}
			{focus manage_band_highlighter params = {id = mb_rename_band_id select}}
			{unfocus manage_band_highlighter params = {id = mb_rename_band_id unselect}}
			{pad_choose menu_manage_band_rename_band}
		]
	}
	createscreenelement {
		id = mb_delete_band_id
		parent = mb_menu_container
		type = textelement
		font = ($choose_band_menu_font)
		rgba = [90 25 5 255]
		text = "DELETE  BAND"
		just = [center top]
		pos = (0.0, 56.0)
	}
	createscreenelement {
		parent = mb_vmenu
		type = textelement
		font = ($choose_band_menu_font)
		text = ""
		just = [center top]
		event_handlers = [
			{focus setscreenelementprops params = {
					id = mb_hlbarid
					pos = <mb_hlbar_pos_2>
				}
			}
			{focus setscreenelementprops params = {
					id = mb_delete_band_id
					scale = 1.3
					rgba = [255 220 140 255]
				}
			}
			{unfocus setscreenelementprops params = {
					id = mb_delete_band_id
					scale = 1.0
					rgba = [90 25 5 255]
				}
			}
			{pad_choose menu_manage_band_delete_band}
		]
	}
	add_user_control_helper \{text = "SELECT"
		button = green
		z = 100}
	add_user_control_helper \{text = "BACK"
		button = red
		z = 100}
	add_user_control_helper \{text = "UP/DOWN"
		button = strumbar
		z = 100}
endscript

script manage_band_highlighter 
	if gotparam \{select}
		setscreenelementprops id = <id> scale = 1.3 rgba = [255 220 140 255]
		getscreenelementdims id = <id>
		if (<width> > 634)
			fit_text_in_rectangle id = <id> dims = ((626.0, 0.0) + ((0.0, 1.0) * <height>)) start_x_scale = 1.3 start_y_scale = 1.3
		endif
	elseif gotparam \{unselect}
		setscreenelementprops id = <id> scale = 1.0 rgba = [90 25 5 255]
		getscreenelementdims id = <id>
		if (<width> > 634)
			fit_text_in_rectangle id = <id> dims = ((626.0, 0.0) + ((0.0, 1.0) * <height>)) start_x_scale = 1.0 start_y_scale = 1.0
		endif
	endif
endscript

script destroy_manage_band_menu 
	destroy_menu \{menu_id = mb_scroll}
	destroy_menu \{menu_id = mb_helper_container}
	destroy_menu \{menu_id = mb_menu_container}
	destroy_menu_backdrop
	clean_up_user_control_helpers
endscript

script menu_manage_band_rename_band 
	ui_flow_manager_respond_to_action \{action = select_rename_band}
endscript

script menu_manage_band_delete_band 
	ui_flow_manager_respond_to_action \{action = select_delete_band}
endscript
