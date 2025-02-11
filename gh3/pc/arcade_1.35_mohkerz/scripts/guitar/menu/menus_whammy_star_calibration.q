g_spc_check_pow_bool_1 = 1
g_spc_check_pow_bool_2 = 1
g_spc_whammy_is_popup = 0
g_spc_sp_is_popup = 0
SHOULD_WE_PLAY_WHAMMY_SOUND = 1

script create_whammy_bar_calibration_menu \{controller = 0
		popup = 0}
	if IsWinPort
		if (<popup> = 1)
			kill_start_key_binding
		endif
	else
		kill_start_key_binding
	endif
	CreateScreenElement \{Type = ContainerElement
		parent = root_window
		id = wbc_container
		Pos = (0.0, 0.0)
		just = [
			left
			top
		]}
	if (<popup>)
		Change \{g_spc_whammy_is_popup = 1}
		controller = ($last_start_pressed_device)
		<z> = 100
	else
		Change \{g_spc_whammy_is_popup = 0}
		<z> = 2
	endif
	if NOT (<popup>)
		create_menu_backdrop \{texture = Venue_BG}
		CreateScreenElement \{Type = SpriteElement
			parent = wbc_container
			id = wbc_light_overlay
			texture = Venue_Overlay
			Pos = (640.0, 360.0)
			dims = (1280.0, 720.0)
			just = [
				center
				center
			]
			z_priority = 99}
	endif
	displaySprite {
		id = wbc_poster_1
		parent = wbc_container
		tex = Options_Whammy_Poster_1
		Pos = (286.0, 15.0)
		dims = (896.0, 896.0)
		rot_angle = -2
		z = <z>
	}
	displaySprite {
		id = wbc_poster_2
		parent = wbc_container
		tex = Options_Whammy_Poster_2
		Pos = (286.0, 15.0)
		dims = (896.0, 896.0)
		rot_angle = -2
		z = (<z> - 1)
	}
	if NOT (<popup>)
		displaySprite {
			parent = wbc_container
			tex = Toprockers_Tape_1
			Pos = (1010.0, 450.0)
			dims = (192.0, 92.0)
			z = (<z> + 1)
			flip_v
			rot_angle = 90
		}
		displaySprite {
			parent = wbc_container
			tex = Toprockers_Tape_2
			Pos = (350.0, 200.0)
			z = (<z> + 1)
			rot_angle = 90
			dims = (192.0, 92.0)
			flip_v
			flip_h
		}
	endif
	text_block_scale = 0.65000004
	text_block_type_scale = 0.8
	text_block_1_pos = (630.0, 70.0)
	text_block_1_dims = (910.0, 200.0)
	text_block_2_pos = (650.0, 140.0)
	text_block_2_dims = (840.0, 100.0)
	text_block_3_pos = (750.0, 195.0)
	text_block_3_dims = (525.0, 300.0)
	<text_1> = "Press  the  whammy  bar  completely  down, and  gently  allow  it  to  return  to  its  resting  position."
	button_color = "Green"
	GetEnterButtonAssignment
	if (<assignment> = circle)
		button_color = "Red"
	endif
	formatText TextName = text_2 "Press  the  %a  Button  to  calibrate  using  this  position." a = <button_color>
	<text_3> = "Repeat  the  process  until  you  see  the  \\c1''Resting  position  calibrated'' \\c0message  every  time  you  return  the  whammy  bar  to  its  resting  position."
	CreateScreenElement {
		Type = TextBlockElement
		font = text_a3
		Pos = <text_block_1_pos>
		parent = wbc_container
		text = <text_1>
		rgba = [0 0 0 255]
		z_priority = (<z> + 1)
		dims = <text_block_1_dims>
		just = [center top]
		internal_just = [left top]
		Scale = <text_block_scale>
		internal_scale = <text_block_type_scale>
		rot_angle = -2
		line_spacing = 0.8
	}
	CreateScreenElement {
		Type = TextBlockElement
		font = text_a3
		Pos = <text_block_2_pos>
		parent = wbc_container
		text = <text_2>
		rgba = [220 220 220 255]
		z_priority = (<z> + 1)
		dims = <text_block_2_dims>
		just = [center top]
		internal_just = [left top]
		Scale = <text_block_scale>
		internal_scale = <text_block_type_scale>
		rot_angle = -3
		line_spacing = 0.8
	}
	CreateScreenElement {
		Type = TextBlockElement
		font = text_a3
		Pos = <text_block_3_pos>
		parent = wbc_container
		text = <text_3>
		rgba = [0 0 0 255]
		z_priority = (<z> + 1)
		dims = <text_block_3_dims>
		just = [center top]
		internal_just = [left top]
		Scale = <text_block_scale>
		internal_scale = <text_block_type_scale>
		rot_angle = -2
		line_spacing = 0.8
	}
	CreateScreenElement {
		Type = TextElement
		font = text_a5
		Pos = (760.0, 315.0)
		parent = wbc_container
		text = "Calibrate"
		rgba = [220 220 220 255]
		z_priority = (<z> + 1)
		just = [center top]
		Scale = 1.6
		rot_angle = -4
	}
	CreateScreenElement {
		Type = TextElement
		font = text_a5
		Pos = (800.0, 365.0)
		parent = wbc_container
		text = "Whammy"
		rgba = [220 220 220 255]
		z_priority = (<z> + 1)
		just = [center top]
		Scale = 1.6
		rot_angle = -4
	}
	CreateScreenElement {
		Type = TextBlockElement
		font = text_a3
		rgba = [140 235 170 255]
		Pos = (810.0, 408.0)
		text = "RESTING POSITION CALIBRATED"
		just = [center top]
		internal_just = [center center]
		dims = (400.0, 200.0)
		Scale = 0.6
		line_spacing = 0.8
		parent = wbc_container
		z_priority = (<z> + 2)
		rot_angle = -4
		id = resting_message
		font_spacing = 50
		space_spacing = 20
		Shadow
		shadow_offs = (2.0, 2.0)
		shadow_rgba = [0 0 0 255]
		event_handlers = [
			{pad_choose menu_whammy_bar_calibration_enter_sample}
			{pad_back ui_flow_manager_respond_to_action params = {action = go_back}}
		]
		exclusive_device = <controller>
	}
	LaunchEvent \{Type = focus
		target = resting_message}
	SpawnScriptNow menu_whammy_bar_update_resting_message params = {controller = <controller>}
	Change \{user_control_pill_text_color = [
			0
			0
			0
			255
		]}
	Change \{user_control_pill_color = [
			180
			180
			180
			255
		]}
	add_user_control_helper text = "SELECT" button = green z = (<z> + 100)
	add_user_control_helper text = "BACK" button = red z = (<z> + 100)
endscript

script destroy_whammy_bar_calibration_menu 
	if IsWinPort
		if ($g_spc_whammy_is_popup = 1)
			restore_start_key_binding
		endif
	else
		restore_start_key_binding
	endif
	KillSpawnedScript \{Name = menu_whammy_bar_update_resting_message}
	destroy_menu \{menu_id = wbc_container}
	clean_up_user_control_helpers
	if NOT ($g_spc_whammy_is_popup)
		destroy_menu_backdrop
	endif
endscript

script menu_whammy_bar_calibration_enter_sample 
	if GuitarGetAnalogueInfo controller = <device_num>
		if (<rightx> = 0)
			<rightx> = 0.0001
		elseif (<rightx> = 1)
			<rightx> = 0.9998999
		endif
		switch (<device_num>)
			case 0
			SetGlobalTags user_options params = {resting_whammy_position_device_0 = <rightx>}
			case 1
			SetGlobalTags user_options params = {resting_whammy_position_device_1 = <rightx>}
			case 2
			SetGlobalTags user_options params = {resting_whammy_position_device_2 = <rightx>}
			case 3
			SetGlobalTags user_options params = {resting_whammy_position_device_3 = <rightx>}
			case 4
			SetGlobalTags user_options params = {resting_whammy_position_device_4 = <rightx>}
			case 5
			SetGlobalTags user_options params = {resting_whammy_position_device_5 = <rightx>}
			case 6
			SetGlobalTags user_options params = {resting_whammy_position_device_6 = <rightx>}
		endswitch
		if (<device_num> = $player1_status.controller)
			get_resting_whammy_position controller = <device_num>
			Change structurename = player1_status resting_whammy_position = <resting_whammy_position>
		else
			if (<device_num> = $player2_status.controller)
				get_resting_whammy_position controller = <device_num>
				Change structurename = player2_status resting_whammy_position = <resting_whammy_position>
			endif
		endif
	endif
endscript

script menu_whammy_bar_update_resting_message 
	begin
	if is_whammy_resting controller = <controller>
		if ($SHOULD_WE_PLAY_WHAMMY_SOUND = 0)
			SoundEvent \{event = Whammy_Test_SFX}
			Change \{SHOULD_WE_PLAY_WHAMMY_SOUND = 1}
		endif
		SetScreenElementProps \{id = resting_message
			unhide}
		SetScreenElementProps \{id = wbc_poster_1
			alpha = 1}
	else
		Change \{SHOULD_WE_PLAY_WHAMMY_SOUND = 0}
		SetScreenElementProps \{id = resting_message
			Hide}
		menu_whammy_bar_do_poster_morph controller = <controller>
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script menu_whammy_bar_do_poster_morph 
	if GuitarGetAnalogueInfo controller = <controller>
		if (<rightx> >= 0)
			SetScreenElementProps id = wbc_poster_1 alpha = ((1 - <rightx>) * 0.5)
		else
			SetScreenElementProps id = wbc_poster_1 alpha = ((0.5 * (<rightx> * -1)) + 0.5)
		endif
	endif
endscript

script create_star_power_trigger_calibration_menu \{controller = 0
		popup = 0}
	kill_start_key_binding
	CreateScreenElement \{id = spc_container
		Type = ContainerElement
		parent = root_window
		Pos = (0.0, 0.0)
		just = [
			left
			top
		]}
	if (<popup>)
		<z> = 100
		controller = ($last_start_pressed_device)
	else
		<z> = -4
	endif
	if NOT (<popup>)
		create_menu_backdrop \{texture = Options_Calibrate_Starpower_Posterwall}
	else
		displaySprite \{parent = spc_container
			tex = Options_Calibrate_Starpower_Posterwall
			Pos = (0.0, 0.0)
			dims = (1280.0, 720.0)
			z = 107}
	endif
	displaySprite {
		parent = spc_container
		tex = Options_Calibrate_Starpower_BG
		Pos = (326.0, 0.0)
		dims = (512.0, 512.0)
		rot_angle = -2
		z = <z>
	}
	displaySprite {
		id = spc_rotating_bg_lines
		parent = spc_container
		tex = Options_Calibrate_Starpower_BG2
		Pos = (578.0, 156.0)
		dims = (640.0, 640.0)
		just = [center center]
		rot_angle = 25
		z = (<z> + 1)
	}
	displaySprite {
		id = spc_rotating_bg_planes
		parent = spc_container
		tex = Options_Calibrate_Starpower_BG3
		Pos = (568.0, 114.0)
		dims = (512.0, 384.0)
		just = [center center]
		rot_angle = 20
		z = (<z> + 2)
	}
	displaySprite \{parent = spc_container
		id = spc_guitar_1
		Pos = (310.0, 360.0)
		tex = star_power_test_image_rt
		rgba = [
			255
			255
			255
			255
		]
		just = [
			center
			center
		]
		Scale = 0.75
		z = 5}
	displaySprite \{parent = spc_container
		id = spc_guitar_2
		Pos = (1160.0, 360.0)
		tex = star_power_test_image_rt
		rgba = [
			255
			255
			255
			255
		]
		just = [
			center
			center
		]
		Scale = 0.75
		z = 5}
	displayText \{parent = spc_container
		id = spc_guitar_1_val_label
		Pos = (90.0, 530.0)
		just = [
			left
			top
		]
		text = "Current:"
		Scale = 0.7
		rgba = [
			255
			255
			255
			255
		]
		font = text_a4
		z = 10}
	displayText \{parent = spc_container
		id = spc_guitar_1_val
		Pos = (250.0, 530.0)
		just = [
			left
			top
		]
		text = "0.0"
		Scale = 0.7
		rgba = [
			255
			255
			255
			255
		]
		font = text_a4
		z = 10}
	displayText \{parent = spc_container
		id = spc_guitar_2_val_label
		Pos = (940.0, 530.0)
		just = [
			left
			top
		]
		text = "Current:"
		Scale = 0.7
		rgba = [
			255
			255
			255
			255
		]
		font = text_a4
		z = 10}
	displayText \{parent = spc_container
		id = spc_guitar_2_val
		Pos = (1100.0, 530.0)
		just = [
			left
			top
		]
		text = "0.0"
		Scale = 0.7
		rgba = [
			255
			255
			255
			255
		]
		font = text_a4
		z = 10}
	formatText TextName = threshtext "%d" d = ($player1_status.star_tilt_threshold_di)
	displayText \{parent = spc_container
		id = spc_guitar_1_thresh_label
		Pos = (90.0, 560.0)
		just = [
			left
			top
		]
		text = "Star Power:"
		Scale = 0.7
		rgba = [
			255
			255
			255
			255
		]
		font = text_a4
		z = 10}
	displayText {
		parent = spc_container
		id = spc_guitar_1_thresh
		Pos = (250.0, 560.0)
		just = [left top]
		text = <threshtext>
		Scale = 0.7
		rgba = [255 255 255 255]
		font = text_a4
		z = 10
	}
	formatText TextName = threshtext "%d" d = ($player2_status.star_tilt_threshold_di)
	displayText \{parent = spc_container
		id = spc_guitar_2_thresh_label
		Pos = (940.0, 560.0)
		just = [
			left
			top
		]
		text = "Star Power:"
		Scale = 0.7
		rgba = [
			255
			255
			255
			255
		]
		font = text_a4
		z = 10}
	displayText {
		parent = spc_container
		id = spc_guitar_2_thresh
		Pos = (1100.0, 560.0)
		just = [left top]
		text = <threshtext>
		Scale = 0.7
		rgba = [255 255 255 255]
		font = text_a4
		z = 10
	}
	displaySprite \{parent = spc_container
		id = spc_val_bg_1
		Pos = (208.0, 575.0)
		tex = guitar_select_2p_frame
		rgba = [
			255
			255
			255
			255
		]
		just = [
			center
			center
		]
		Scale = 1.25
		z = 3}
	displaySprite \{parent = spc_container
		id = spc_val_bg_2
		Pos = (1058.0, 575.0)
		tex = guitar_select_2p_frame
		rgba = [
			255
			255
			255
			255
		]
		just = [
			center
			center
		]
		Scale = 1.25
		z = 3}
	CreateScreenElement \{Type = SpriteElement
		parent = spc_container
		texture = menu_pause_frame_banner
		rgba = [
			255
			255
			255
			255
		]
		id = guitar1_titlebg
		Pos = (208.0, 80.0)
		just = [
			center
			center
		]
		z_priority = 1
		Scale = 1.2}
	displayText \{parent = spc_container
		id = guitar1_title
		Pos = (208.0, 52.0)
		just = [
			center
			center
		]
		text = "Left Guitar"
		rgba = [
			255
			255
			255
			255
		]
		font = text_a4
		z = 10
		Shadow}
	CreateScreenElement \{Type = SpriteElement
		parent = spc_container
		texture = menu_pause_frame_banner
		rgba = [
			255
			255
			255
			255
		]
		id = guitar2_titlebg
		Pos = (1058.0, 80.0)
		just = [
			center
			center
		]
		z_priority = 1
		Scale = 1.2}
	displayText \{parent = spc_container
		id = guitar2_title
		Pos = (1058.0, 52.0)
		just = [
			center
			center
		]
		text = "Right Guitar"
		rgba = [
			255
			255
			255
			255
		]
		font = text_a4
		z = 10
		Shadow}
	if English
		starpower_pow_tex = Options_Calibrate_Starpower_Pow
	elseif French
		starpower_pow_tex = options_calibrate_starpower_pow_fr
	elseif Spanish
		starpower_pow_tex = options_calibrate_starpower_pow_sp
	elseif German
		starpower_pow_tex = options_calibrate_starpower_pow_de
	elseif Italian
		starpower_pow_tex = options_calibrate_starpower_pow_fr
	elseif korean
		starpower_pow_tex = Options_Calibrate_Starpower_Pow
	endif
	displaySprite {
		id = spc_pow_1
		parent = spc_container
		tex = <starpower_pow_tex>
		Pos = (0.0, 0.0)
		Scale = 1.0
		relative_scale
		z = (<z> + 3)
	}
	SetScreenElementProps id = <id> Hide
	displaySprite {
		id = spc_pow_2
		parent = spc_container
		tex = <starpower_pow_tex>
		Pos = (0.0, 0.0)
		Scale = 1.0
		relative_scale
		z = (<z> + 3)
	}
	SetScreenElementProps id = <id> Hide
	button_color = "Green"
	GetEnterButtonAssignment
	if (<assignment> = circle)
		button_color = "Red"
	endif
	formatText TextName = element_text "Raise the Guitar up to the point at which you would like Star Power to be triggered and press the %a Button to set this value." a = <button_color>
	CreateScreenElement {
		Type = TextBlockElement
		id = star_calibration_text
		parent = spc_container
		font = text_a6
		Pos = (608.0, 520.0)
		just = [center top]
		internal_just = [left top]
		line_spacing = 0.85
		dims = (940.0, 300.0)
		Scale = (0.5, 0.65000004)
		rgba = [225 200 120 255]
		text = <element_text>
		event_handlers = [
			{pad_choose menu_star_power_trigger_enter_position params = {controller = <controller>}}
			{pad_back ui_flow_manager_respond_to_action params = {action = go_back}}
		]
		z_priority = (<z> + 6.1)
		rot_angle = -2
	}
	LaunchEvent \{Type = focus
		target = star_calibration_text}
	Change \{g_spc_check_pow_bool_1 = 1}
	Change \{g_spc_check_pow_bool_2 = 1}
	SpawnScriptNow menu_star_power_trigger_pow_check params = {controller = <controller>}
	Change \{user_control_pill_text_color = [
			0
			0
			0
			255
		]}
	Change \{user_control_pill_color = [
			180
			180
			180
			255
		]}
	add_user_control_helper \{text = "SELECT"
		button = green
		z = 110}
	add_user_control_helper \{text = "BACK"
		button = red
		z = 110}
endscript

script destroy_star_power_trigger_calibration_menu 
	restore_start_key_binding
	destroy_menu \{menu_id = spc_container}
	clean_up_user_control_helpers
	KillSpawnedScript \{Name = menu_star_power_trigger_pow_check}
	destroy_menu_backdrop
endscript

script menu_star_power_trigger_pow_check 
	line_rot_1 = 0
	line_rot_2 = 0
	begin
	GuitarGetAnalogueInfo \{controller = $player1_device}
	<line_rot_1> = (<l2raw> * 90.0 / 128.0)
	printf "msptpc: line_rot_1 = %a" a = <line_rot_1>
	l2raw_1 = <l2raw>
	spc_guitar_1 :DoMorph rot_angle = <line_rot_1> time = 0.04 motion = ease_out
	formatText TextName = star_text_val "%d" d = <l2raw>
	spc_guitar_1_val :SetProps text = <star_text_val>
	GuitarGetAnalogueInfo \{controller = $player2_device}
	<line_rot_2> = (<l2raw> * 90.0 / 128.0)
	printf "msptpc: line_rot_2 = %a" a = <line_rot_2>
	l2raw_2 = <l2raw>
	spc_guitar_2 :DoMorph rot_angle = <line_rot_2> time = 0.04 motion = ease_out
	formatText TextName = star_text_val "%d" d = <l2raw>
	spc_guitar_2_val :SetProps text = <star_text_val>
	if (<l2raw_1> >= $player1_status.star_tilt_threshold_di)
		if ($g_spc_check_pow_bool_1 = 1)
			if NOT (IsSoundEventPlaying POW_SFX)
				SoundEvent \{event = POW_SFX}
			endif
			<spc_pow_rand_x> = 0
			<spc_pow_rand_y> = 0
			<spc_pow_rand_scale> = 0
			<spc_pow_rand_rot> = 0
			GetRandomValue \{Name = spc_pow_rand_x
				integer
				a = 360
				b = 400}
			GetRandomValue \{Name = spc_pow_rand_y
				integer
				a = 70
				b = 120}
			GetRandomValue \{Name = spc_pow_rand_scale
				a = 0.6
				b = 0.8}
			GetRandomValue \{Name = spc_pow_rand_rot
				a = -3.0
				b = 3.0}
			SetScreenElementProps {
				id = spc_pow_1
				unhide
				Pos = (((1.0, 0.0) * <spc_pow_rand_x>) + ((0.0, 1.0) * <spc_pow_rand_y>))
				rot_angle = <spc_pow_rand_rot>
				Scale = <spc_pow_rand_scale>
				relative_scale
			}
			Change \{g_spc_check_pow_bool_1 = 0}
		endif
	else
		SetScreenElementProps \{id = spc_pow_1
			Hide}
		Change \{g_spc_check_pow_bool_1 = 1}
	endif
	if (<l2raw_2> >= $player2_status.star_tilt_threshold_di)
		if ($g_spc_check_pow_bool_2 = 1)
			if NOT (IsSoundEventPlaying POW_SFX)
				SoundEvent \{event = POW_SFX}
			endif
			<spc_pow_rand_x> = 0
			<spc_pow_rand_y> = 0
			<spc_pow_rand_scale> = 0
			<spc_pow_rand_rot> = 0
			GetRandomValue \{Name = spc_pow_rand_x
				integer
				a = 580
				b = 620}
			GetRandomValue \{Name = spc_pow_rand_y
				integer
				a = 10
				b = 60}
			GetRandomValue \{Name = spc_pow_rand_scale
				a = 0.6
				b = 0.8}
			GetRandomValue \{Name = spc_pow_rand_rot
				a = -3.0
				b = 3.0}
			SetScreenElementProps {
				id = spc_pow_2
				unhide
				Pos = (((1.0, 0.0) * <spc_pow_rand_x>) + ((0.0, 1.0) * <spc_pow_rand_y>))
				rot_angle = <spc_pow_rand_rot>
				Scale = <spc_pow_rand_scale>
				relative_scale
			}
			Change \{g_spc_check_pow_bool_2 = 0}
		endif
	else
		SetScreenElementProps \{id = spc_pow_2
			Hide}
		Change \{g_spc_check_pow_bool_2 = 1}
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script menu_star_power_trigger_enter_position 
	if GuitarGetAnalogueInfo controller = <device_num>
		GetGlobalTags \{arcade_hardware_adjustments}
		if (<device_num> = $player1_device)
			SoundEvent \{event = POW_SFX}
			<arcade_tilt_p1> = <l2raw>
			SetGlobalTags arcade_hardware_adjustments params = {arcade_tilt_p1 = <arcade_tilt_p1>}
			Change structurename = player1_status star_tilt_threshold_di = <arcade_tilt_p1>
			formatText TextName = threshtext "%d" d = ($player1_status.star_tilt_threshold_di)
			spc_guitar_1_thresh :SetProps text = <threshtext>
			memcard_sequence_begin_autosave
			memcard_sequence_cleanup_generic \{display_anything = 0}
		elseif (<device_num> = $player2_device)
			SoundEvent \{event = POW_SFX}
			<arcade_tilt_p2> = <l2raw>
			SetGlobalTags arcade_hardware_adjustments params = {arcade_tilt_p2 = <arcade_tilt_p2>}
			Change structurename = player2_status star_tilt_threshold_di = <arcade_tilt_p2>
			formatText TextName = threshtext "%d" d = ($player2_status.star_tilt_threshold_di)
			spc_guitar_2_thresh :SetProps text = <threshtext>
			memcard_sequence_begin_autosave
			memcard_sequence_cleanup_generic \{display_anything = 0}
		endif
	endif
endscript

script create_guitar_diagnostic_menu 
	CreateScreenElement \{Type = ContainerElement
		parent = root_window
		id = gd_container
		Pos = (0.0, 0.0)
		just = [
			left
			top
		]}
	CreateScreenElement \{Type = SpriteElement
		parent = gd_container
		Pos = (0.0, 0.0)
		just = [
			left
			top
		]
		dims = (1280.0, 1024.0)
		rgba = [
			80
			80
			80
			255
		]
		z_priority = -1}
	font = text_a4
	text_params = {Type = TextElement parent = gd_container font = <font> just = [left top]}
	CreateScreenElement {
		<text_params>
		id = title_text
		text = "Guitar info"
		Pos = (540.0, 100.0)
	}
	CreateScreenElement {
		<text_params>
		id = leftx
		text = "Left X "
		Pos = (580.0, 200.0)
	}
	CreateScreenElement {
		<text_params>
		id = rightx
		text = "Right X "
		Pos = (580.0, 240.0)
	}
	CreateScreenElement {
		<text_params>
		id = lefty
		text = "Left Y "
		Pos = (580.0, 280.0)
	}
	CreateScreenElement {
		<text_params>
		id = righty
		text = "Right Y "
		Pos = (580.0, 320.0)
	}
	CreateScreenElement {
		<text_params>
		id = leftlength
		text = "Left Length "
		Pos = (580.0, 360.0)
	}
	CreateScreenElement {
		<text_params>
		id = rightlength
		text = "Right Length "
		Pos = (580.0, 400.0)
	}
	CreateScreenElement {
		<text_params>
		id = lefttrigger
		text = "Left Trigger "
		Pos = (580.0, 440.0)
	}
	CreateScreenElement {
		<text_params>
		id = righttrigger
		text = "Right Trigger "
		Pos = (580.0, 480.0)
	}
	CreateScreenElement {
		<text_params>
		id = verticaldist
		text = "Vertical Dist "
		Pos = (580.0, 520.0)
	}
	SpawnScriptNow \{update_guitar_diagnostic_menu}
endscript

script destroy_guitar_diagnostic_menu 
	KillSpawnedScript \{Name = update_guitar_diagnostic_menu}
	destroy_menu \{menu_id = gd_container}
endscript

script update_guitar_diagnostic_menu 
	begin
	if GuitarGetAnalogueInfo \{controller = 0}
		formatText TextName = leftxtext "Left X - %v" v = <leftx>
		formatText TextName = rightxtext "Whammy position - %v" v = <rightx>
		formatText TextName = leftytext "Left Y - %v" v = <lefty>
		formatText TextName = rightytext "Right Y - %v" v = <righty>
		formatText TextName = leftlengthtext "Left Length - %v" v = <leftlength>
		formatText TextName = rightlengthtext "Right Length - %v" v = <rightlength>
		formatText TextName = lefttriggertext "Left Trigger - %v" v = <lefttrigger>
		formatText TextName = righttriggertext "Right Trigger - %v" v = <righttrigger>
		formatText TextName = verticaldisttext "Vertical orientation - %v" v = <verticaldist>
		SetScreenElementProps id = leftx text = <leftxtext>
		SetScreenElementProps id = rightx text = <rightxtext>
		SetScreenElementProps id = lefty text = <leftytext>
		SetScreenElementProps id = righty text = <rightytext>
		SetScreenElementProps id = leftlength text = <leftlengthtext>
		SetScreenElementProps id = rightlength text = <rightlengthtext>
		SetScreenElementProps id = lefttrigger text = <lefttriggertext>
		SetScreenElementProps id = righttrigger text = <righttriggertext>
		SetScreenElementProps id = verticaldist text = <verticaldisttext>
	endif
	Wait \{1
		gameframe}
	repeat
endscript
