g_mm_base_menu_pos = (874.0, 340.0)
g_mm_menu_max_width = 220

script create_main_menu_backdrop 
	shut_down_character_hub
	create_menu_backdrop \{texture = gh3_main_menu_bg}
	createscreenelement {
		type = containerelement
		id = main_menu_text_container
		parent = root_window
		pos = ($g_mm_base_menu_pos)
		just = [left top]
		z_priority = 3
	}
	createscreenelement \{type = containerelement
		id = main_menu_bg_container
		parent = root_window
		pos = (0.0, 0.0)
		z_priority = 3}
	createscreenelement \{type = spriteelement
		id = main_menu_godrays1
		parent = main_menu_bg_container
		texture = main_menu_bg2
		pos = (400.0, 330.0)
		dims = (1280.0, 1280.0)
		just = [
			center
			center
		]
		z_priority = 1
		alpha = 0
		blend = add}
	runscriptonscreenelement id = <id> rotate_menu_element params = {time = 30 id = <id>}
	createscreenelement \{type = spriteelement
		id = main_menu_godrays2
		parent = main_menu_bg_container
		texture = main_menu_bg2
		pos = (400.0, 330.0)
		dims = (1280.0, 1280.0)
		just = [
			center
			center
		]
		z_priority = 1
		alpha = 0
		blend = add
		flip_v}
	runscriptonscreenelement id = <id> rotate_menu_element params = {time = 60 id = <id>}
	createscreenelement \{type = spriteelement
		parent = main_menu_bg_container
		texture = main_menu_illustrations
		pos = (55.0, 0.0)
		dims = (720.0, 720.0)
		just = [
			left
			top
		]
		z_priority = 2
		alpha = 0.9}
	createscreenelement \{type = spriteelement
		parent = main_menu_bg_container
		texture = main_menu_logo
		pos = (870.0, 45.0)
		scale = 1
		just = [
			center
			top
		]
		z_priority = 2}
	if iswinport
		winportgetappfullversion
		formattext textname = version_string_display "VERSION %s" s = <version_string>
		createscreenelement {
			type = textelement
			id = version_text
			parent = main_menu_bg_container
			text = <version_string_display>
			font = text_a5
			pos = (130.0, 656.0)
			scale = (0.5, 0.5)
			rgba = (($g_menu_colors).md_violet_grey)
			just = [left top]
			font_spacing = 0
			shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba = (($g_menu_colors).block)
			z_priority = 60
		}
	endif
endscript

script winportcreatelaptopui 
	z = 1000000
	createscreenelement {
		type = spriteelement
		id = batteryelem
		parent = root_window
		texture = battery_charging
		pos = (65.0, 721.0)
		scale = (0.66, 0.66)
		just = [left bottom]
		z_priority = <z>
		hide
	}
	createscreenelement {
		type = spriteelement
		id = batterylevelelem
		parent = root_window
		texture = battery_level0
		pos = (65.0, 721.0)
		scale = (0.66, 0.66)
		just = [left bottom]
		z_priority = (<z> - 1)
		hide
	}
	createscreenelement {
		type = spriteelement
		id = wirelesselem
		parent = root_window
		texture = wifi_bar0
		pos = (1201.0, 716.0)
		scale = (0.66, 0.66)
		just = [right bottom]
		z_priority = <z>
		hide
	}
	spawnscriptnow \{winportupdatelaptopui}
endscript

script winportupdatelaptopui 
	begin
	winportgetlaptopinfo
	if (<batterypercent> > -1)
		if (<batterycharging> = 1)
			setscreenelementprops \{id = batteryelem
				unhide
				texture = battery_charging}
		else
			setscreenelementprops \{id = batteryelem
				unhide
				texture = battery}
		endif
		mathfloor ((<batterypercent> + 1) / 12.5)
		formattext checksumname = batterylevelimage 'battery_level%a' a = <floor>
		setscreenelementprops id = batterylevelelem unhide texture = <batterylevelimage>
	else
		setscreenelementprops \{id = batteryelem
			hide}
		setscreenelementprops \{id = batterylevelelem
			hide}
	endif
	if (<wirelesspercent> > -1)
		mathfloor ((<wirelesspercent> + 1) / 20)
		formattext checksumname = wirelessimage 'wifi_bar%a' a = <floor>
		setscreenelementprops id = wirelesselem unhide texture = <wirelessimage>
	else
		setscreenelementprops \{id = wirelesselem
			hide}
	endif
	wait \{5
		seconds}
	repeat
endscript
main_menu_movie_first_time = 1
main_menu_created = 0

script create_main_menu 
	0x1e7cdcc8
	if iswinport
		shut_down_net_play
		if ($main_menu_created = 0)
			if winportsioiskeyboard \{devicenum = $primary_controller}
				setglobaltags \{user_options
					params = {
						lefty_flip_p1 = 1
					}}
			else
				guitarcount = 0
				if isguitarcontroller \{controller = 0}
					guitarcount = (<guitarcount> + 1)
				endif
				if isguitarcontroller \{controller = 1}
					guitarcount = (<guitarcount> + 1)
				endif
				if isguitarcontroller \{controller = 2}
					guitarcount = (<guitarcount> + 1)
				endif
				if (<guitarcount> < 2)
					setglobaltags \{user_options
						params = {
							lefty_flip_p2 = 1
						}}
				endif
			endif
			winportcreatelaptopui
		endif
	endif
	change \{winport_is_in_online_menu_system = 0}
	change \{main_menu_created = 1}
	resetscoreupdateready
	getglobaltags \{user_options}
	menu_audio_settings_update_guitar_volume vol = <guitar_volume>
	menu_audio_settings_update_band_volume vol = <band_volume>
	menu_audio_settings_update_sfx_volume vol = <sfx_volume>
	setsoundbussparams {crowd = {vol = ($default_bussset.crowd.vol)}}
	if ($main_menu_movie_first_time = 0)
		fadetoblack \{on
			time = 0
			alpha = 1.0
			z_priority = 900}
	endif
	create_main_menu_backdrop
	if ($main_menu_movie_first_time = 0 && $invite_controller = -1)
		change \{main_menu_movie_first_time = 1}
		fadetoblack \{off
			time = 0}
	endif
	setmenuautorepeattimes \{(0.3, 0.05)}
	kill_start_key_binding
	unpausegame
	change \{current_num_players = 1}
	change structurename = player1_status controller = ($primary_controller)
	change \{player_controls_valid = 0}
	disable_pause
	spawnscriptnow \{menu_music_on}
	if ($is_demo_mode = 1)
		demo_mode_disable = {rgba = [128 128 128 255] not_focusable}
	else
		demo_mode_disable = {}
	endif
	deregisteratoms
	registeratoms \{name = achievement
		$achievement_atoms}
	change \{setlist_previous_tier = 1}
	change \{setlist_previous_song = 0}
	change \{setlist_previous_tab = tab_setlist}
	change \{current_song = beyondbeautiful}
	change \{end_credits = 0}
	change \{battle_sudden_death = 0}
	change \{structurename = player1_status
		character_id = axel}
	change \{structurename = player2_status
		character_id = axel}
	safe_create_gh3_pause_menu
	new_menu {
		scrollid = main_menu_scrolling_menu
		vmenuid = vmenu_main_menu
		use_backdrop = 0
		menu_pos = ($g_mm_base_menu_pos)
		focus_color = dk_violet_red
		unfocus_color = md_violet_grey
		event_handlers = [
			{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
			{pad_back generic_menu_pad_back params = {callback = menu_flow_go_back}}
		]
	}
	change \{rich_presence_context = presence_main_menu}
	<text_x_scale> = 0.8
	<text_y_scale> = 1.0
	text_params = {
		type = textelement
		font = text_a5
		scale = ((<text_x_scale> * (1.0, 0.0)) + (<text_y_scale> * (0.0, 1.0)))
		rgba = (($g_menu_colors).md_violet_grey)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = (($g_menu_colors).block)
		z_priority = 60
	}
	<menu_offset> = (0.0, 45.0)
	<hlbar_dims> = (240.0, 45.0)
	<be_dims> = (32.0, 46.0)
	<bel_pos> = ((((<hlbar_dims>.(-1.0, 0.0)) / 2) * (1.0, 0.0)) + (-16.0, 0.0))
	<ber_pos> = ((((<hlbar_dims>.(1.0, 0.0)) / 2) * (1.0, 0.0)) + (16.0, 0.0))
	mm_hilite_color = (($g_menu_colors).lt_plum)
	0xaa32c7f4 = 0
	createscreenelement \{type = containerelement
		id = main_menu_career
		parent = vmenu_main_menu
		event_handlers = [
			{
				focus
				main_menu_highlight
				params = {
					option = 'career'
				}
			}
			{
				unfocus
				main_menu_unhighlight
				params = {
					option = 'career'
				}
			}
			{
				pad_choose
				main_menu_select_career
			}
		]}
	createscreenelement {
		<text_params>
		parent = main_menu_career
		id = main_menu_career_text
		text = "CAREER"
	}
	getscreenelementdims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	createscreenelement \{type = containerelement
		id = main_menu_career_hl
		pos = (0.0, -8.0)
		parent = main_menu_career
		alpha = 0}
	createscreenelement {
		type = spriteelement
		id = main_menu_career_hlbar
		parent = main_menu_career_hl
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <hlbar_dims>
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_career_bel
		parent = main_menu_career_hl
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <bel_pos>
		flip_v
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_career_ber
		parent = main_menu_career_hl
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <ber_pos>
	}
	doscreenelementmorph \{id = main_menu_career_hl
		scale = (1.0, 0.01)
		relative_scale}
	<0xaa32c7f4> = (<0xaa32c7f4> + 1)
	createscreenelement \{type = containerelement
		id = main_menu_quickplay
		parent = vmenu_main_menu
		event_handlers = [
			{
				focus
				main_menu_highlight
				params = {
					option = 'quickplay'
				}
			}
			{
				unfocus
				main_menu_unhighlight
				params = {
					option = 'quickplay'
				}
			}
			{
				pad_choose
				main_menu_select_quickplay
			}
		]}
	createscreenelement {
		<text_params>
		parent = main_menu_quickplay
		id = main_menu_quickplay_text
		pos = (<menu_offset> * <0xaa32c7f4>)
		text = "QUICKPLAY"
	}
	getscreenelementdims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	createscreenelement {
		type = containerelement
		id = main_menu_quickplay_hl
		parent = main_menu_career
		pos = ((<menu_offset> * <0xaa32c7f4>) + (0.0, -8.0))
		alpha = 0
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_quickplay_hlbar
		parent = main_menu_quickplay_hl
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <hlbar_dims>
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_quickplay_bel
		parent = main_menu_quickplay_hl
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <bel_pos>
		flip_v
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_quickplay_ber
		parent = main_menu_quickplay_hl
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <ber_pos>
	}
	doscreenelementmorph \{id = main_menu_quickplay_hl
		scale = (1.0, 0.01)
		relative_scale}
	<0xaa32c7f4> = (<0xaa32c7f4> + 1)
	createscreenelement \{type = containerelement
		id = main_menu_multiplayer
		parent = vmenu_main_menu
		event_handlers = [
			{
				focus
				main_menu_highlight
				params = {
					option = 'multiplayer'
				}
			}
			{
				unfocus
				main_menu_unhighlight
				params = {
					option = 'multiplayer'
				}
			}
			{
				pad_choose
				main_menu_select_multiplayer
			}
		]}
	createscreenelement {
		<text_params>
		parent = main_menu_multiplayer
		id = main_menu_multiplayer_text
		pos = (<menu_offset> * <0xaa32c7f4>)
		text = "MULTIPLAYER"
	}
	getscreenelementdims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	createscreenelement {
		type = containerelement
		id = main_menu_multiplayer_hl
		parent = main_menu_career
		pos = ((<menu_offset> * <0xaa32c7f4>) + (0.0, -8.0))
		alpha = 0
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_multiplayer_hlbar
		parent = main_menu_multiplayer_hl
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <hlbar_dims>
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_multiplayer_bel
		parent = main_menu_multiplayer_hl
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <bel_pos>
		flip_v
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_multiplayer_ber
		parent = main_menu_multiplayer_hl
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <ber_pos>
	}
	doscreenelementmorph \{id = main_menu_multiplayer_hl
		scale = (1.0, 0.01)
		relative_scale}
	<0xaa32c7f4> = (<0xaa32c7f4> + 1)
	createscreenelement {
		type = containerelement
		id = main_menu_training
		parent = vmenu_main_menu
		event_handlers = [
			{focus main_menu_highlight params = {option = 'training'}}
			{unfocus main_menu_unhighlight params = {option = 'training'}}
			{pad_choose main_menu_select_training}
		]
		<demo_mode_disable>
	}
	createscreenelement {
		<text_params>
		parent = main_menu_training
		id = main_menu_training_text
		pos = (<menu_offset> * <0xaa32c7f4>)
		text = "TRAINING"
	}
	getscreenelementdims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	createscreenelement {
		type = containerelement
		id = main_menu_training_hl
		parent = main_menu_career
		pos = ((<menu_offset> * <0xaa32c7f4>) + (0.0, -8.0))
		alpha = 0
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_training_hlbar
		parent = main_menu_training_hl
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <hlbar_dims>
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_training_bel
		parent = main_menu_training_hl
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <bel_pos>
		flip_v
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_training_ber
		parent = main_menu_training_hl
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <ber_pos>
	}
	doscreenelementmorph \{id = main_menu_training_hl
		scale = (1.0, 0.01)
		relative_scale}
	<0xaa32c7f4> = (<0xaa32c7f4> + 1)
	createscreenelement {
		type = containerelement
		id = 0x00e8a246
		parent = vmenu_main_menu
		event_handlers = [
			{focus main_menu_highlight params = {option = 'custom_menu'}}
			{unfocus main_menu_unhighlight params = {option = 'custom_menu'}}
			{pad_choose 0x15010b8a}
		]
	}
	createscreenelement {
		<text_params>
		parent = 0x00e8a246
		id = 0x37acddbe
		pos = (<menu_offset> * <0xaa32c7f4>)
		text = "CUSTOM MENU"
	}
	getscreenelementdims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	createscreenelement {
		type = containerelement
		id = 0xc837e002
		parent = main_menu_career
		pos = ((<menu_offset> * <0xaa32c7f4>) + (0.0, -8.0))
		alpha = 0
	}
	createscreenelement {
		type = spriteelement
		id = 0x6cf9d7fd
		parent = 0xc837e002
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <hlbar_dims>
	}
	createscreenelement {
		type = spriteelement
		id = 0x76974520
		parent = 0xc837e002
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <bel_pos>
		flip_v
	}
	createscreenelement {
		type = spriteelement
		id = 0x8c987843
		parent = 0xc837e002
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <ber_pos>
	}
	doscreenelementmorph {
		id = 0xc837e002
		scale = (1.0, 0.01)
		relative_scale
	}
	<0xaa32c7f4> = (<0xaa32c7f4> + 1)
	createscreenelement {
		type = containerelement
		id = main_menu_leaderboards
		parent = vmenu_main_menu
		event_handlers = [
			{focus main_menu_highlight params = {option = 'leaderboards'}}
			{unfocus main_menu_unhighlight params = {option = 'leaderboards'}}
			{pad_choose main_menu_select_winport_online}
		]
		<demo_mode_disable>
	}
	if isxenon
		createscreenelement {
			<text_params>
			parent = main_menu_leaderboards
			id = main_menu_leaderboards_text
			pos = (<menu_offset> * <0xaa32c7f4>)
			text = "ONLINE"
		}
	else
		createscreenelement {
			<text_params>
			parent = main_menu_leaderboards
			id = main_menu_leaderboards_text
			pos = (<menu_offset> * <0xaa32c7f4>)
			text = "ONLINE"
		}
	endif
	getscreenelementdims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	createscreenelement {
		type = containerelement
		id = main_menu_leaderboards_hl
		parent = main_menu_career
		pos = ((<menu_offset> * <0xaa32c7f4>) + (0.0, -8.0))
		alpha = 0
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_leaderboards_hlbar
		parent = main_menu_leaderboards_hl
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <hlbar_dims>
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_leaderboards_bel
		parent = main_menu_leaderboards_hl
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <bel_pos>
		flip_v
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_leaderboards_ber
		parent = main_menu_leaderboards_hl
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <ber_pos>
	}
	doscreenelementmorph \{id = main_menu_leaderboards_hl
		scale = (1.0, 0.01)
		relative_scale}
	<0xaa32c7f4> = (<0xaa32c7f4> + 1)
	createscreenelement \{type = containerelement
		id = main_menu_options
		parent = vmenu_main_menu
		event_handlers = [
			{
				focus
				main_menu_highlight
				params = {
					option = 'options'
				}
			}
			{
				unfocus
				main_menu_unhighlight
				params = {
					option = 'options'
				}
			}
			{
				pad_choose
				main_menu_select_options
			}
		]}
	createscreenelement {
		<text_params>
		parent = main_menu_options
		id = main_menu_options_text
		pos = (<menu_offset> * <0xaa32c7f4>)
		text = "OPTIONS"
	}
	getscreenelementdims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	createscreenelement {
		type = containerelement
		id = main_menu_options_hl
		parent = main_menu_career
		pos = ((<menu_offset> * <0xaa32c7f4>) + (0.0, -8.0))
		alpha = 0
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_options_hlbar
		parent = main_menu_options_hl
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <hlbar_dims>
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_options_bel
		parent = main_menu_options_hl
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <bel_pos>
		flip_v
	}
	createscreenelement {
		type = spriteelement
		id = main_menu_options_ber
		parent = main_menu_options_hl
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <be_dims>
		pos = <ber_pos>
	}
	doscreenelementmorph \{id = main_menu_options_hl
		scale = (1.0, 0.01)
		relative_scale}
	if iswinport
		<0xaa32c7f4> = (<0xaa32c7f4> + 1)
		createscreenelement \{type = containerelement
			id = main_menu_exit
			parent = vmenu_main_menu
			event_handlers = [
				{
					focus
					main_menu_highlight
					params = {
						option = 'exit'
					}
				}
				{
					unfocus
					main_menu_unhighlight
					params = {
						option = 'exit'
					}
				}
				{
					pad_choose
					main_menu_select_exit
				}
			]}
		createscreenelement {
			<text_params>
			parent = main_menu_exit
			id = main_menu_exit_text
			pos = (<menu_offset> * <0xaa32c7f4>)
			text = "EXIT"
		}
		getscreenelementdims id = <id>
		fit_text_in_rectangle {
			id = <id>
			dims = ((<height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
			only_if_larger_x = 1
			start_x_scale = <text_x_scale>
			start_y_scale = <text_y_scale>
		}
		createscreenelement {
			type = containerelement
			id = main_menu_exit_hl
			parent = main_menu_career
			pos = ((<menu_offset> * <0xaa32c7f4>) + (0.0, -8.0))
			alpha = 0
		}
		createscreenelement {
			type = spriteelement
			id = main_menu_exit_hlbar
			parent = main_menu_exit_hl
			texture = hilite_bar_01
			rgba = <mm_hilite_color>
			alpha = 1
			dims = <hlbar_dims>
		}
		createscreenelement {
			type = spriteelement
			id = main_menu_exit_bel
			parent = main_menu_exit_hl
			texture = character_hub_hilite_bookend
			rgba = <mm_hilite_color>
			alpha = 1
			dims = <be_dims>
			pos = <bel_pos>
			flip_v
		}
		createscreenelement {
			type = spriteelement
			id = main_menu_exit_ber
			parent = main_menu_exit_hl
			texture = character_hub_hilite_bookend
			rgba = <mm_hilite_color>
			alpha = 1
			dims = <be_dims>
			pos = <ber_pos>
		}
		doscreenelementmorph \{id = main_menu_exit_hl
			scale = (1.0, 0.01)
			relative_scale}
	endif
	if ($enable_button_cheats = 1)
		<0xaa32c7f4> = (<0xaa32c7f4> + 1)
		createscreenelement \{type = containerelement
			id = main_menu_debug_menu
			parent = vmenu_main_menu
			event_handlers = [
				{
					focus
					main_menu_highlight
					params = {
						option = 'debug_menu'
					}
				}
				{
					unfocus
					main_menu_unhighlight
					params = {
						option = 'debug_menu'
					}
				}
				{
					pad_choose
					ui_flow_manager_respond_to_action
					params = {
						action = select_debug_menu
					}
				}
			]}
		createscreenelement {
			<text_params>
			scale = (0.5, 0.5)
			parent = main_menu_debug_menu
			id = main_menu_debug_menu_text
			pos = (<menu_offset> * <0xaa32c7f4>)
			text = "DEBUG MENU"
		}
	endif
	change \{user_control_pill_text_color = [
			0
			0
			0
			255
		]}
	change \{user_control_pill_color = [
			180
			180
			180
			255
		]}
	add_user_control_helper \{text = "SELECT"
		button = green
		z = 100}
	add_user_control_helper \{text = "UP/DOWN"
		button = strumbar
		z = 100}
	if NOT ($invite_controller = -1)
		change \{invite_controller = -1}
		ui_flow_manager_respond_to_action \{action = select_xbox_live}
		fadetoblack \{off
			time = 0}
	else
		launchevent \{type = focus
			target = vmenu_main_menu}
	endif
endscript

script main_menu_highlight 
	<time> = 0
	<a> = 0.6
	formattext checksumname = text_id 'main_menu_%o_text' o = <option>
	setscreenelementprops id = <text_id> no_shadow
	doscreenelementmorph {
		id = <text_id>
		rgba = ($menu_focus_color)
		time = <time>
	}
	if NOT (<option> = 'debug_menu')
		formattext checksumname = hl_id 'main_menu_%o_HL' o = <option>
		doscreenelementmorph id = <hl_id> alpha = <a> scale = (1.0, 1.0) time = <time>
		runscriptonscreenelement id = <hl_id> wiggle_hilite params = {id = <hl_id>}
	endif
endscript

script main_menu_unhighlight 
	<time> = 0.6
	formattext checksumname = text_id 'main_menu_%o_text' o = <option>
	setscreenelementprops id = <text_id> shadow shadow_offs = (3.0, 3.0) shadow_rgba = (($g_menu_colors).black)
	doscreenelementmorph {
		id = <text_id>
		rgba = ($menu_unfocus_color)
		time = (<time> / 4)
	}
	if NOT (<option> = 'debug_menu')
		formattext checksumname = hl_id 'main_menu_%o_HL' o = <option>
		doscreenelementmorph id = <hl_id> alpha = 0.2 scale = 1
		doscreenelementmorph id = <hl_id> alpha = 0 scale = 0.9 time = <time> motion = ease_out
	endif
endscript

script wiggle_hilite 
	if NOT screenelementexists id = <id>
		return
	endif
	<id> :domorph pos = {(0.0, 2.0) relative} scale = 1.02 time = 0.05
	<id> :domorph pos = {(0.0, -3.0) relative} scale = 0.97999996 time = 0.05
	<id> :domorph pos = {(0.0, 1.0) relative} scale = 1.0 time = 0.05
	return
endscript

script glow_new_downloads_text 
	begin
	if screenelementexists \{id = new_downloads_text_glow}
		new_downloads_text_glow :domorph alpha = 0 time = <time>
	endif
	if screenelementexists \{id = new_downloads_text_glow}
		new_downloads_text_glow :domorph alpha = 1 time = <time>
	endif
	repeat
endscript

script glow_menu_element \{on = 1
		off = 1
		tween = 1}
	if NOT screenelementexists id = <id>
		return
	endif
	wait RandomRange (0.0, 5.0) seconds
	begin
	<id> :domorph alpha = 1 time = <tween> motion = smooth
	wait <on> seconds
	<id> :domorph alpha = 0 time = <tween> motion = smooth
	wait <off> seconds
	repeat
endscript

script rotate_menu_element \{time = 30}
	if NOT screenelementexists id = <id>
		return
	endif
	rot_interval = (<time> / 4)
	wait RandomRange (0.0, 2.0) seconds
	clockwise = Random (@ 1 @ 0 )
	if (<clockwise> = 1)
		begin
		<id> :domorph alpha = 0 rot_angle = 0
		<id> :domorph rot_angle = 90 alpha = Random (@ 0.25 @ 0.5 )time = <rot_interval>
		<id> :domorph rot_angle = 180 alpha = Random (@ 1.0 @ 0.0 )time = <rot_interval>
		<id> :domorph rot_angle = 270 alpha = Random (@ 0.25 @ 0.5 )time = <rot_interval>
		<id> :domorph rot_angle = 359 alpha = 0 time = <rot_interval>
		repeat
	else
		begin
		<id> :domorph alpha = 0 rot_angle = 0
		<id> :domorph rot_angle = -90 alpha = Random (@ 0.25 @ 0.5 )time = <rot_interval>
		<id> :domorph rot_angle = -180 alpha = Random (@ 1.0 @ 0.0 )time = <rot_interval>
		<id> :domorph rot_angle = -270 alpha = Random (@ 0.25 @ 0.5 )time = <rot_interval>
		<id> :domorph rot_angle = -359 alpha = 0 time = <rot_interval>
		repeat
	endif
endscript

script destroy_main_menu 
	killspawnedscript \{name = glow_new_downloads_text}
	clean_up_user_control_helpers
	printstruct x = ($ui_flow_manager_state)
	destroy_menu \{menu_id = main_menu_scrolling_menu}
	destroy_menu \{menu_id = main_menu_text_container}
	destroy_menu_backdrop
	destroyscreenelement \{id = main_menu_bg_container}
endscript

script main_menu_select_career 
	change \{game_mode = p1_career}
	change \{current_num_players = 1}
	change \{structurename = player1_status
		part = guitar}
	change \{structurename = player2_status
		part = guitar}
	ui_flow_manager_respond_to_action \{action = select_career}
endscript

script main_menu_select_quickplay 
	change \{game_mode = p1_quickplay}
	change \{current_num_players = 1}
	change \{structurename = player1_status
		part = guitar}
	change \{structurename = player2_status
		part = guitar}
	ui_flow_manager_respond_to_action \{action = select_quickplay}
endscript

script main_menu_select_multiplayer 
	change \{game_mode = p2_faceoff}
	change \{current_num_players = 2}
	change \{structurename = player1_status
		part = guitar}
	change \{structurename = player2_status
		part = guitar}
	ui_flow_manager_respond_to_action \{action = select_multiplayer}
endscript

script main_menu_select_training 
	change \{game_mode = training}
	change \{current_num_players = 1}
	change \{came_to_practice_from = main_menu}
	change \{structurename = player1_status
		part = guitar}
	change \{structurename = player2_status
		part = guitar}
	ui_flow_manager_respond_to_action \{action = select_training}
endscript

script main_menu_select_xbox_live 
	ui_flow_manager_respond_to_action \{action = select_xbox_live}
endscript
winport_is_in_online_menu_system = 0

script main_menu_select_winport_online 
	change \{winport_is_in_online_menu_system = 1}
	ui_flow_manager_respond_to_action \{action = select_winport_online}
endscript

script main_menu_select_options 
	ui_flow_manager_respond_to_action \{action = select_options}
endscript

script main_menu_select_exit 
	ui_flow_manager_respond_to_action \{action = select_winport_exit}
endscript
winport_confirm_exit_msg = "Are you sure you want to exit?"

script winport_create_confirm_exit_popup 
	create_popup_warning_menu \{textblock = {
			text = $winport_confirm_exit_msg
		}
		menu_pos = (640.0, 490.0)
		dialog_dims = (288.0, 64.0)
		options = [
			{
				func = {
					ui_flow_manager_respond_to_action
					params = {
						action = continue
					}
				}
				text = "Yes"
				scale = (1.0, 1.0)
			}
			{
				func = {
					ui_flow_manager_respond_to_action
					params = {
						action = go_back
					}
				}
				text = "No"
				scale = (1.0, 1.0)
			}
		]}
endscript

script winport_destroy_confirm_exit_popup 
	destroy_popup_warning_menu
endscript
