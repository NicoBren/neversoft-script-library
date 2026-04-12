xboxlive_num_results = 0

script xboxlive_menu_optimatch_results_stop 
	NetSessionFunc \{obj = match
		func = stop_server_list}
	if GotParam \{xboxlive_num_results}
		xboxlive_menu_optimatch_results_end xboxlive_num_results = <xboxlive_num_results>
	else
		xboxlive_menu_optimatch_results_end \{xboxlive_num_results = 0}
	endif
endscript

script xboxlive_menu_optimatch_results_end 
	destroy_server_list_searching_dialog
	if GotParam \{xboxlive_num_results}
		change xboxlive_num_results = <xboxlive_num_results>
	endif
	printf qs("\Lxboxlive_menu_optimatch_results_end : %d") d = ($xboxlive_num_results)
	if (($xboxlive_num_results) = 0)
		if CheckForSignIn
			if ScreenElementExists \{id = search_results_container}
				create_server_list_create_match_dialog
			else
				printf \{qs("\Lour serverlist doesn't exist any more")}
			endif
		endif
	else
		SpawnScript \{xboxlive_menu_optimatch_results_wait_and_focus}
	endif
endscript

script xboxlive_menu_optimatch_results_wait_and_focus 
	Wait \{1
		gameframes}
	set_focus_color rgba = ($online_dark_purple)
	set_unfocus_color rgba = ($online_light_blue)
	if ScreenElementExists \{id = search_results_vmenu}
		LaunchEvent \{type = focus
			target = search_results_vmenu}
		SetScreenElementProps \{id = search_results_vmenu
			enable_pad_handling}
	endif
	if ScreenElementExists \{id = search_results_container}
		GetScreenElementChildren \{id = search_results_container}
		if GotParam \{children}
			GetArraySize \{children}
			i = 0
			begin
			if ScreenElementExists id = (<children> [<i>])
				(<children> [<i>]) :GetTags
				if NOT GotParam \{highlight}
					(<children> [<i>]) :SE_SetProps preserve_flip alpha = 1.0
				endif
				<i> = (<i> + 1)
			endif
			repeat <array_size>
		endif
	endif
endscript

script xboxlive_menu_optimatch_results_item_add 
	printf \{qs("\L--- xboxlive_menu_optimatch_results_item_add")}
	printstruct <...>
	change xboxlive_num_results = (($xboxlive_num_results) + 1)
	if NOT ScreenElementExists \{id = search_results_vmenu}
		printf \{qs("\LWarning! tried to add a server when results menu not up")}
		return
	endif
	translate_server_checksums_to_strings {
		game_mode_checksum = <game_mode>
		num_songs_checksum = <num_songs>
		difficulty_checksum = <difficulty>
	}
	if ($match_type = ranked)
		<host_text> = qs("HOST")
	else
		<host_text> = <server_name>
	endif
	CreateScreenElement \{type = ContainerElement
		parent = search_results_vmenu
		dims = (210.0, 30.0)
		pos = (0.0, 0.0)
		just = [
			left
			top
		]}
	<container_element> = <id>
	<id> :SE_SetProps {
		event_handlers = [
			{focus serverlist_focus params = {parent = <id>}}
			{unfocus serverlist_unfocus params = {parent = <id>}}
			{pad_choose net_choose_server params = {id = <server_id>}}
		]
	}
	if isXenon
		if ($match_type = player)
			<id> :SE_SetProps event_handlers = [{pad_start menu_show_gamercard_from_netid params = {net_id = <player_xuid>}}]
		endif
	endif
	CreateScreenElement {
		type = SpriteElement
		parent = <container_element>
		local_id = highlight_bar
		texture = white
		dims = (625.0, 30.0)
		rgba = ($online_light_blue)
		pos = (-4.0, 0.0)
		just = [left top]
		z_priority = 4
	}
	<id> :SetTags highlight = 1
	<id> :SE_SetProps alpha = 0.0
	CreateScreenElement {
		type = SpriteElement
		parent = <container_element>
		local_id = bookend_left
		texture = character_hub_hilite_bookend
		dims = (35.0, 35.0)
		rgba = ($online_light_blue)
		pos = (-5.0, -3.0)
		just = [center top]
		z_priority = 4
	}
	<id> :SetTags highlight = 1
	<id> :SE_SetProps alpha = 0.0
	CreateScreenElement {
		type = SpriteElement
		parent = <container_element>
		local_id = bookend_right
		texture = character_hub_hilite_bookend
		dims = (35.0, 35.0)
		rgba = ($online_light_blue)
		pos = (632.0, -3.0)
		just = [center top]
		z_priority = 4
	}
	<id> :SetTags highlight = 1
	<id> :SE_SetProps alpha = 0.0
	CreateScreenElement {
		type = TextElement
		parent = <container_element>
		font = fontgrid_text_a6
		local_id = server_name
		scale = (0.75, 0.65000004)
		rgba = ($online_light_blue)
		text = <host_text>
		just = [left top]
		internal_just = [left top]
		z_priority = 10.0
	}
	<server_entry_id> = <id>
	fit_text_into_menu_item id = <id> max_width = 200
	CreateScreenElement {
		type = TextElement
		parent = <container_element>
		font = fontgrid_text_a6
		local_id = mode
		scale = (0.75, 0.65000004)
		rgba = ($online_light_blue)
		text = <game_mode_value>
		pos = (220.0, 0.0)
		just = [left top]
		internal_just = [left top]
		z_priority = 10.0
	}
	fit_text_into_menu_item id = <id> max_width = 200
	CreateScreenElement {
		type = TextElement
		parent = <container_element>
		font = fontgrid_text_a6
		local_id = songs
		scale = (0.75, 0.65000004)
		rgba = ($online_light_blue)
		text = <num_songs_value>
		pos = (460.0, 0.0)
		just = [left top]
		internal_just = [left top]
		z_priority = 10.0
	}
	get_qos_color qos = <qos>
	CreateScreenElement {
		type = SpriteElement
		parent = <container_element>
		local_id = signal_bar1
		texture = white
		pos = (552.0, 26.5)
		dims = (7.5, 5.0)
		rgba = <color>
		just = [left bottom]
		z_priority = 10.0
		alpha = 1.0
	}
	CreateScreenElement {
		type = SpriteElement
		parent = <container_element>
		local_id = signal_bar2
		texture = white
		pos = (566.0, 26.5)
		dims = (7.5, 10.0)
		rgba = <color>
		just = [left bottom]
		z_priority = 10.0
		alpha = 0.0
	}
	if (<qos> > 2.0)
		<id> :SE_SetProps alpha = 1.0
	endif
	CreateScreenElement {
		type = SpriteElement
		parent = <container_element>
		local_id = signal_bar3
		texture = white
		pos = (580.0, 26.5)
		dims = (7.5, 15.0)
		rgba = <color>
		just = [left bottom]
		z_priority = 10.0
		alpha = 0.0
	}
	if (<qos> > 4.0)
		<id> :SE_SetProps alpha = 1.0
	endif
	CreateScreenElement {
		type = SpriteElement
		parent = <container_element>
		local_id = signal_bar4
		texture = white
		pos = (594.0, 26.5)
		dims = (7.5, 20.0)
		rgba = <color>
		just = [left bottom]
		z_priority = 10.0
		alpha = 0.0
	}
	if (<qos> > 6.0)
		<id> :SE_SetProps alpha = 1.0
	endif
	CreateScreenElement {
		type = SpriteElement
		parent = <container_element>
		local_id = signal_bar5
		texture = white
		pos = (608.0, 26.5)
		dims = (7.5, 25.0)
		rgba = <color>
		just = [left bottom]
		z_priority = 10.0
		alpha = 0.0
	}
	if (<qos> > 8)
		<id> :SE_SetProps alpha = 1.0
	endif
endscript

script translate_server_checksums_to_strings 
	printstruct <...>
	if GotParam \{game_mode_checksum}
		switch (<game_mode_checksum>)
			case p2_battle
			<game_mode_value> = qs("BATTLE")
			case p2_faceoff
			<game_mode_value> = qs("FACE-OFF")
			case p2_pro_faceoff
			<game_mode_value> = qs("PRO FACE-OFF")
			case p2_coop
			<game_mode_value> = qs("CO-OP")
		endswitch
	endif
	if GotParam \{num_songs_checksum}
		switch (<num_songs_checksum>)
			case num_1
			<num_songs_value> = qs("1")
			case num_3
			<num_songs_value> = qs("3")
			case num_5
			<num_songs_value> = qs("5")
			case num_7
			<num_songs_value> = qs("7")
		endswitch
	endif
	return num_songs_value = <num_songs_value> game_mode_value = <game_mode_value>
endscript

script serverlist_focus 
	Obj_GetID
	LegacyDoScreenElementMorph id = {<ObjID> child = server_name} rgba = ($online_dark_purple)
	LegacyDoScreenElementMorph id = {<ObjID> child = mode} rgba = ($online_dark_purple)
	LegacyDoScreenElementMorph id = {<ObjID> child = songs} rgba = ($online_dark_purple)
	LegacyDoScreenElementMorph id = {<ObjID> child = highlight_bar} alpha = 1.0
	LegacyDoScreenElementMorph id = {<ObjID> child = bookend_left} alpha = 1.0
	LegacyDoScreenElementMorph id = {<ObjID> child = bookend_right} alpha = 1.0
endscript

script serverlist_unfocus 
	Obj_GetID
	LegacyDoScreenElementMorph id = {<ObjID> child = server_name} rgba = ($online_light_blue)
	LegacyDoScreenElementMorph id = {<ObjID> child = mode} rgba = ($online_light_blue)
	LegacyDoScreenElementMorph id = {<ObjID> child = songs} rgba = ($online_light_blue)
	LegacyDoScreenElementMorph id = {<ObjID> child = highlight_bar} alpha = 0.0
	LegacyDoScreenElementMorph id = {<ObjID> child = bookend_left} alpha = 0.0
	LegacyDoScreenElementMorph id = {<ObjID> child = bookend_right} alpha = 0.0
endscript

script get_qos_color 
	color = ($online_red)
	if (<qos> > 3)
		color = ($online_orange)
	endif
	if (<qos> > 5)
		color = ($online_yellow)
	endif
	if (<qos> > 7)
		color = ($online_green)
	endif
	return color = <color>
endscript
