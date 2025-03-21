menu_select_controller_icon_positions = [
	{
		c = (370.0, 350.0)
		g = (370.0, 350.0)
		n = (616.0, 475.0)
	}
	{
		c = (900.0, 420.0)
		g = (900.0, 420.0)
		n = (926.0, 475.0)
	}
	{
		c = (565.0, 415.0)
		g = (565.0, 405.0)
	}
	{
		c = (670.0, 440.0)
		g = (670.0, 430.0)
	}
	{
		c = (655.0, 335.0)
		g = (655.0, 325.0)
	}
	{
		c = (630.0, 395.0)
		g = (630.0, 385.0)
	}
	{
		c = (610.0, 450.0)
		g = (610.0, 440.0)
	}
	{
		c = (700.0, 370.0)
		g = (700.0, 360.0)
	}
	{
		c = (595.0, 345.0)
		g = (595.0, 335.0)
	}
]
menu_select_controller_icon_rotations = [
	0.0
	0.0
	0.0
	0.0
	0.0
	0.0
	0.0
]
menu_select_num_controllers = 0
menu_select_controller_p1_controller_id = -1
menu_select_controller_p2_controller_id = -1
menu_select_controller_light = [
	180
	180
	180
	255
]
menu_select_controller_dark = [
	100
	100
	100
	255
]
menu_select_controller_sticks_big = (192.0, 192.0)
menu_select_controller_sticks_small = (160.0, 160.0)
menu_select_controller_guitar_big = (384.0, 192.0)
menu_select_controller_guitar_small = (320.0, 160.0)
in_controller_select_menu = 0

script create_select_controller_menu 
	Change \{in_controller_select_menu = 1}
	Change \{p1_ready = 0}
	Change \{p2_ready = 0}
	Change \{menu_select_controller_p1_controller_id = -1}
	Change \{menu_select_controller_p2_controller_id = -1}
	Change \{player_controls_valid = 0}
	menu_font = text_a5
	CreateScreenElement \{Type = ContainerElement
		parent = root_window
		id = msc_container
		Pos = (0.0, 0.0)}
	create_menu_backdrop \{texture = Controller_2p_BG}
	if English
		<msc_title_tex> = select_controller_title_e
	elseif French
		<msc_title_tex> = select_controller_title_f
	elseif Spanish
		<msc_title_tex> = select_controller_title_s
	elseif German
		<msc_title_tex> = select_controller_title_g
	elseif Italian
		<msc_title_tex> = select_controller_title_i
	endif
	CreateScreenElement {
		Type = SpriteElement
		parent = msc_container
		id = sc_title
		texture = <msc_title_tex>
		Pos = (660.0, 200.0)
	}
	CreateScreenElement {
		Type = TextElement
		parent = msc_container
		text = $wii_move_guitar1
		Pos = (620.0, 590.0)
		Scale = 0.75
		just = [center center]
		rgba = (($g_menu_colors).white)
		font = text_a11
		z = 100
		Shadow
		shadow_rgba = (($g_menu_colors).black)
		shadow_offs = (2.0, 2.0)
	}
	GetScreenElementDims id = <id>
	if (<width> > 375)
		SetScreenElementProps id = <id> Scale = 1
		fit_text_in_rectangle id = <id> dims = ((370.0, 0.0) + <height> * (0.0, 1.0))
	endif
	CreateScreenElement {
		Type = TextElement
		parent = msc_container
		text = $wii_move_guitar2
		Pos = (620.0, 620.0)
		Scale = 0.75
		just = [center center]
		rgba = (($g_menu_colors).white)
		font = text_a11
		z = 100
		Shadow
		shadow_rgba = (($g_menu_colors).black)
		shadow_offs = (2.0, 2.0)
	}
	GetScreenElementDims id = <id>
	if (<width> > 385)
		SetScreenElementProps id = <id> Scale = 1
		fit_text_in_rectangle id = <id> dims = ((380.0, 0.0) + <height> * (0.0, 1.0))
	endif
	CreateScreenElement \{Type = SpriteElement
		parent = msc_container
		id = arrow1_container
		Pos = (450.0, 270.0)
		rot_angle = -20}
	<id> :SetTags old_pos = (450.0, 270.0)
	CreateScreenElement \{Type = SpriteElement
		parent = arrow1_container
		id = arrow1
		texture = controller_2p_arrow
		rgba = [
			180
			80
			20
			255
		]
		dims = (64.0, 128.0)
		Pos = (0.0, 0.0)
		just = [
			left
			top
		]}
	CreateScreenElement {
		Type = SpriteElement
		parent = arrow1_container
		id = arrow1_shadow
		texture = controller_2p_arrow
		rgba = (($g_menu_colors).black)
		alpha = 0.75
		dims = (64.0, 128.0)
		Pos = (-4.0, 8.0)
		just = [left top]
	}
	CreateScreenElement \{Type = ContainerElement
		parent = msc_container
		id = arrow2_container
		Pos = (705.0, 445.0)
		rot_angle = -20}
	<id> :SetTags old_pos = (680.0, 420.0)
	CreateScreenElement \{Type = SpriteElement
		parent = arrow2_container
		id = arrow2
		texture = controller_2p_arrow
		rgba = [
			90
			50
			165
			255
		]
		dims = (64.0, 128.0)
		Pos = (0.0, 0.0)
		just = [
			left
			top
		]
		flip_v
		flip_h}
	CreateScreenElement {
		Type = SpriteElement
		parent = arrow2_container
		id = arrow2_shadow
		texture = controller_2p_arrow
		rgba = (($g_menu_colors).black)
		alpha = 0.75
		dims = (64.0, 128.0)
		Pos = (-4.0, 4.0)
		just = [left top]
		flip_v
		flip_h
	}
	SpawnScriptNow \{cs_bounce_arrows}
	add_user_control_helper \{text = 'SELECT'
		button = green
		z = 100}
	add_user_control_helper \{text = 'BACK'
		button = red
		z = 100}
	add_user_control_helper \{text = 'UP/DOWN'
		button = strumbar
		z = 100}
	create_ready_icons \{pos1 = (300.0, 450.0)
		pos2 = (835.0, 510.0)}
	i = 0
	begin
	GetRandomValue \{a = -10
		b = 10
		Name = rand_rot}
	SetArrayElement ArrayName = menu_select_controller_icon_rotations globalarray index = <i> NewValue = <rand_rot>
	<i> = (<i> + 1)
	repeat 7
	SpawnScriptNow \{menu_select_controller_poll_for_controllers
		params = {
			wait_to_drop_controller = 1
		}}
endscript

script destroy_select_controller_menu 
	destroy_ready_icons
	Change \{menu_select_num_controllers = 0}
	clean_up_user_control_helpers
	KillSpawnedScript \{Name = cs_bounce_arrows}
	KillSpawnedScript \{Name = menu_select_controller_poll_for_controllers}
	destroy_menu \{menu_id = msc_container}
	destroy_menu_backdrop
	Change \{in_controller_select_menu = 0}
endscript

script cs_bounce_arrows 
	begin
	if ScreenElementExists \{id = arrow1_container}
		arrow1_container :GetTags
		DoScreenElementMorph id = arrow1_container Pos = (<old_pos> + (15.0, 25.0)) time = 0.5 motion = ease_out
	endif
	if ScreenElementExists \{id = arrow2_container}
		arrow2_container :GetTags
		DoScreenElementMorph id = arrow2_container Pos = (<old_pos>) time = 0.5 motion = ease_out
	endif
	Wait \{0.5
		Seconds}
	if ScreenElementExists \{id = arrow1_container}
		arrow1_container :GetTags
		DoScreenElementMorph id = arrow1_container Pos = (<old_pos>) time = 0.5 motion = ease_in
	endif
	if ScreenElementExists \{id = arrow2_container}
		arrow2_container :GetTags
		DoScreenElementMorph id = arrow2_container Pos = (<old_pos> + (15.0, 25.0)) time = 0.5 motion = ease_in
	endif
	Wait \{0.5
		Seconds}
	repeat
endscript

script menu_select_controller_poll_for_controllers \{wait_to_drop_controller = 0}
	begin
	active_controllers = [0 0 0 0 0 0 0]
	GetActiveControllers
	GetInputHandlerBotIndex \{Player = 1}
	total_change = 0
	controller_index = 0
	begin
	if (<active_controllers> [<controller_index>] = 1)
		menu_select_controller_add_controllable_icon controller_index = <controller_index> wait_to_drop_controller = <wait_to_drop_controller>
		<total_change> = (<total_change> + <changed>)
	endif
	if (<active_controllers> [<controller_index>] = 0)
		menu_select_controller_remove_controller_icon controller_index = <controller_index> wait_to_drop_controller = <wait_to_drop_controller>
		<total_change> = (<total_change> + <changed>)
	endif
	<controller_index> = (<controller_index> + 1)
	repeat <controller>
	<wait_to_drop_controller> = 0
	WaitOneGameFrame
	repeat
endscript

script menu_select_controller_add_controllable_icon \{controller_index = 0
		wait_to_drop_controller = 0}
	formatText checksumName = controller_icon_id 'controller%d_icon' d = <controller_index>
	if NOT ScreenElementExists id = <controller_icon_id>
		if IsGuitarController controller = <controller_index>
			c_texture = controller_2p_LesPaul
			c_pos = ($menu_select_controller_icon_positions [(<controller_index> + 2)].g)
		else
			GetPlatform
			switch <Platform>
				case Xenon
				c_texture = controller_2p_controller_XBOX
				case PS3
				c_texture = controller_2p_controller_PS3
				case ngc
				case PS2
				c_texture = 0xe347b34f
				default
				ScriptAssert \{'Unrecognized platform for controller select'}
			endswitch
			c_pos = ($menu_select_controller_icon_positions [(<controller_index> + 2)].c)
		endif
		CreateScreenElement {
			Type = SpriteElement
			parent = msc_container
			id = <controller_icon_id>
			texture = <c_texture>
			rgba = [220 220 220 250]
			Pos = <c_pos>
			dims = (128.0, 256.0)
			just = [center center]
			rot_angle = ($menu_select_controller_icon_rotations [<controller_index>])
			z_priority = 10
			rgba = <grey>
			event_handlers = [
				{pad_up menu_select_controller_move_up params = {controller_index = <controller_index>}}
				{pad_down menu_select_controller_move_down params = {controller_index = <controller_index>}}
				{pad_choose menu_select_controller_try_to_continue params = {controller_index = <controller_index>}}
				{pad_back menu_select_controller_go_back params = {controller_index = <controller_index>}}
			]
			exclusive_device = <controller_index>
		}
		<id> :SetProps Scale = 0.5 relative_scale
		grey_out_controller controller_index = <controller_index>
		<controller_icon_id> :SetTags ready = no location = p0 port = <controller_index>
		Change menu_select_num_controllers = ($menu_select_num_controllers + 1)
		SetScreenElementProps id = <id> alpha = 0
		SpawnScriptNow fall_controller params = {controller_index = <controller_index> id = <id> Wait = <wait_to_drop_controller>}
		return \{changed = 1}
	endif
	return \{changed = 0}
endscript

script fall_controller \{Wait = 0}
	if (<Wait> = 1)
		Wait \{0.25
			Seconds}
	endif
	if ScreenElementExists id = <id>
		GetScreenElementProps id = <id>
		hipos = (<Pos> - (0.0, 720.0))
		SetScreenElementProps id = <id> Pos = <hipos> alpha = 1
		<id> :DoMorph Pos = (<Pos> + (0.0, 50.0)) motion = ease_in time = 0.5
		if ScreenElementExists id = <id>
			<id> :DoMorph Pos = (<Pos> - (0.0, 25.0)) motion = ease_out time = 0.1 rot_angle = RandomRange (-10.0, 10.0)
		endif
		if ScreenElementExists id = <id>
			<id> :DoMorph Pos = <Pos> motion = ease_in time = 0.1 rot_angle = RandomRange (-5.0, 5.0)
		endif
		if (<controller_index> = $primary_controller)
			menu_select_controller_move_up controller_index = <controller_index> Force = 1
		endif
		if ScreenElementExists id = <id>
			LaunchEvent Type = focus target = <id>
		endif
	endif
endscript

script menu_select_controller_leave_spot \{controller_index = 0}
	formatText checksumName = controller_icon_id 'controller%d_icon' d = <controller_index>
	i = 1
	begin
	formatText checksumName = controller_id 'menu_select_controller_p%d_controller_id' d = <i>
	formatText checksumName = player_ready 'p%d_ready' d = <i>
	if ($<controller_id> = <controller_index>)
		Change GlobalName = <controller_id> NewValue = -1
		<controller_icon_id> :SetTags ready = no location = p0
		grey_out_controller controller_index = <controller_index>
		generic_menu_up_or_down_sound \{down}
		if ($<player_ready>)
			select_controller_drop_out_ready_sign Player = <i>
			Change GlobalName = <player_ready> NewValue = 0
		endif
		return
	endif
	<i> = (<i> + 1)
	repeat 2
endscript

script menu_select_controller_get_spot \{controller_index = 0
		Spot = p1
		Force = 0}
	formatText checksumName = controller_icon_id 'controller%d_icon' d = <controller_index>
	<controller_icon_id> :GetTags
	if (<Spot> = p1)
		if ($menu_select_controller_p1_controller_id = -1 || <Force> = 1)
			if (<Force> = 1)
				if NOT ($menu_select_controller_p1_controller_id = -1)
					menu_select_controller_leave_spot controller_index = ($menu_select_controller_p1_controller_id)
				endif
			endif
			Change menu_select_controller_p1_controller_id = <controller_index>
			<controller_icon_id> :SetTags ready = yes location = p1
			light_up_controller controller_index = <controller_index>
			generic_menu_up_or_down_sound \{up}
		endif
	elseif (<Spot> = p2)
		if ($menu_select_controller_p2_controller_id = -1)
			Change menu_select_controller_p2_controller_id = <controller_index>
			<controller_icon_id> :SetTags ready = yes location = p2
			light_up_controller controller_index = <controller_index>
			generic_menu_up_or_down_sound \{down}
		endif
	endif
endscript

script menu_select_controller_move_up \{controller_index = 0
		Force = 0}
	unfocus_all_controllers
	formatText checksumName = controller_icon_id 'controller%d_icon' d = <controller_index>
	if ScreenElementExists id = <controller_icon_id>
		<controller_icon_id> :GetTags
		if (<location> = p2)
			if ($p2_ready)
				focus_all_controllers
				return
			endif
			if (<controller_index> = $primary_controller)
				if ($menu_select_controller_p1_controller_id = -1)
					menu_select_controller_leave_spot controller_index = <controller_index>
					menu_select_controller_get_spot controller_index = <controller_index> Spot = p1
				endif
			else
				menu_select_controller_leave_spot controller_index = <controller_index>
			endif
		elseif (<location> = p0)
			menu_select_controller_get_spot controller_index = <controller_index> Spot = p1 Force = <Force>
		endif
	endif
	focus_all_controllers
endscript

script menu_select_controller_move_down \{controller_index = 0}
	unfocus_all_controllers
	formatText checksumName = controller_icon_id 'controller%d_icon' d = <controller_index>
	if ScreenElementExists id = <controller_icon_id>
		<controller_icon_id> :GetTags
		if (<location> = p1)
			if ($p1_ready)
				focus_all_controllers
				return
			endif
			if (<controller_index> = $primary_controller)
				if ($menu_select_controller_p2_controller_id = -1)
					menu_select_controller_leave_spot controller_index = <controller_index>
					menu_select_controller_get_spot controller_index = <controller_index> Spot = p2
				endif
			else
				menu_select_controller_leave_spot controller_index = <controller_index>
			endif
		elseif (<location> = p0)
			menu_select_controller_get_spot controller_index = <controller_index> Spot = p2
		endif
	endif
	focus_all_controllers
endscript

script menu_select_controller_remove_controller_icon 
	formatText checksumName = controller_icon_id 'controller%d_icon' d = <controller_index>
	if ScreenElementExists id = <controller_icon_id>
		if ($menu_select_controller_p1_controller_id = <controller_index>)
			Change \{menu_select_controller_p1_controller_id = -1}
		elseif ($menu_select_controller_p2_controller_id = <controller_index>)
			Change \{menu_select_controller_p2_controller_id = -1}
		endif
		<controller_icon_id> :GetTags
		if (<location> = p1 && $p1_ready = 2)
			select_controller_drop_out_ready_sign \{Player = 1}
			Change \{p1_ready = 0}
		endif
		if (<location> = p2 && $p2_ready = 2)
			select_controller_drop_out_ready_sign \{Player = 2}
			Change \{p2_ready = 0}
		endif
		DestroyScreenElement id = <controller_icon_id>
		Change menu_select_num_controllers = ($menu_select_num_controllers - 1)
		return \{changed = 1}
	endif
	return \{changed = 0}
endscript

script unfocus_all_controllers 
	i = 0
	begin
	formatText checksumName = controller_icon_id 'controller%d_icon' d = <i>
	if ScreenElementExists id = <controller_icon_id>
		LaunchEvent Type = unfocus target = <controller_icon_id>
	endif
	<i> = (<i> + 1)
	repeat 7
endscript

script focus_all_controllers 
	i = 0
	begin
	formatText checksumName = controller_icon_id 'controller%d_icon' d = <i>
	if ScreenElementExists id = <controller_icon_id>
		LaunchEvent Type = focus target = <controller_icon_id>
	endif
	<i> = (<i> + 1)
	repeat 7
endscript

script menu_select_controller_try_to_continue 
	formatText checksumName = controller_icon_id 'controller%d_icon' d = <controller_index>
	unfocus_all_controllers
	<controller_icon_id> :GetTags
	if (<location> = p1)
		if (<ready> = yes)
			Change player1_device = <controller_index>
			if ($p1_ready = 0)
				if ($p2_ready = 0 || $primary_controller = $player1_device || $primary_controller = $player2_device)
					Change \{p1_ready = 1}
					select_controller_drop_in_ready_sign \{Player = 1}
					Change \{p1_ready = 2}
				endif
			endif
		endif
	elseif (<location> = p2)
		if (<ready> = yes)
			Change player2_device = <controller_index>
			if ($p2_ready = 0)
				if ($p1_ready = 0 || $primary_controller = $player1_device || $primary_controller = $player2_device)
					Change \{p2_ready = 1}
					select_controller_drop_in_ready_sign \{Player = 2}
					Change \{p2_ready = 2}
				endif
			endif
		endif
	endif
	if (($p1_ready = 2) && ($p2_ready = 2))
		Change \{p1_ready = 0}
		Change \{p2_ready = 0}
		Change structurename = player1_status controller = ($player1_device)
		Change structurename = player2_status controller = ($player2_device)
		Change \{player_controls_valid = 1}
		ui_flow_manager_respond_to_action \{action = continue}
	else
		focus_all_controllers
	endif
endscript

script select_controller_drop_in_ready_sign 
	formatText checksumName = ready_container 'ready_container_p%d' d = <Player>
	if NOT ScreenElementExists id = <ready_container>
		create_ready_icons
	endif
	SetScreenElementProps id = <ready_container> alpha = 1
	formatText checksumName = sound_event 'CheckBox_Check_SFX_P%d' d = <Player>
	spawnscript SoundEvent params = {event = <sound_event>}
endscript

script select_controller_drop_out_ready_sign 
	formatText checksumName = ready_container 'ready_container_p%d' d = <Player>
	formatText checksumName = sound_event 'Checkbox_SFX_P%d' d = <Player>
	spawnscript SoundEvent params = {event = <sound_event>}
	SetScreenElementProps id = <ready_container> alpha = 0
endscript

script menu_select_controller_go_back 
	formatText checksumName = controller_icon_id 'controller%d_icon' d = <controller_index>
	<controller_icon_id> :GetTags
	if (<location> = p1)
		if ($p1_ready = 2)
			Change \{p1_ready = 0}
			select_controller_drop_out_ready_sign \{Player = 1}
		else
			ui_flow_manager_respond_to_action \{action = go_back}
		endif
	elseif (<location> = p2)
		if ($p2_ready = 2)
			Change \{p2_ready = 0}
			select_controller_drop_out_ready_sign \{Player = 2}
		else
			ui_flow_manager_respond_to_action \{action = go_back}
		endif
	else
		ui_flow_manager_respond_to_action \{action = go_back}
	endif
endscript

script grey_out_controller 
	formatText checksumName = controller_icon_id 'controller%d_icon' d = <controller_index>
	grey = [150 150 150 255]
	if ScreenElementExists id = <controller_icon_id>
		<controller_icon_id> :GetTags
		if IsGuitarController controller = <port>
			c_pos = ($menu_select_controller_icon_positions [(<controller_index> + 2)].g)
		else
			c_pos = ($menu_select_controller_icon_positions [(<controller_index> + 2)].c)
		endif
		DoScreenElementMorph id = <controller_icon_id> Pos = <c_pos> Scale = 0.5 alpha = 0.75 time = 0.25 relative_scale motion = ease_in
		SetScreenElementProps id = <controller_icon_id> rgba = <grey>
	endif
endscript

script light_up_controller 
	formatText checksumName = controller_icon_id 'controller%d_icon' d = <controller_index>

	white = [255 255 255 255]
	if ScreenElementExists id = <controller_icon_id>
		<controller_icon_id> :GetTags
		<controller_icon_id> :SetTags old_pos = <Pos>
		<controller_icon_id> :GetTags
		index = 0
		if (<location> = p2)
			index = 1
		endif
		if IsGuitarController controller = <port>
			new_pos = ($menu_select_controller_icon_positions [<index>].g)
		else
			new_pos = ($menu_select_controller_icon_positions [<index>].c)
		endif
		SetScreenElementProps id = <controller_icon_id> rgba = <white>
		LaunchEvent Type = unfocus target = <controller_icon_id>
		RunScriptOnScreenElement id = <controller_icon_id> controller_move_and_jiggle params = {Pos = <new_pos> Scale = 1.5 alpha = 1}
		Wait \{0.5
			Seconds}
		if ScreenElementExists id = <controller_icon_id>
			LaunchEvent Type = focus target = <controller_icon_id>
		endif
	endif
endscript

script controller_move_and_jiggle \{Scale = 0.5
		alpha = 0.75}
	if GotParam \{Pos}
		DoMorph Pos = <Pos> Scale = <Scale> alpha = <alpha> relative_scale time = 0.25 motion = ease_in
	endif
	DoMorph \{Pos = {
			(5.0, 0.0)
			relative
		}
		time = 0.1
		motion = ease_in}
	DoMorph \{Pos = {
			(-10.0, 0.0)
			relative
		}
		time = 0.05}
	DoMorph \{Pos = {
			(5.0, 0.0)
			relative
		}
		time = 0.1
		motion = ease_out}
endscript
