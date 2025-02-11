is_boss_song = 0
is_guitar_controller = 0

script create_fail_song_menu 
	menu_font = fontgrid_title_gh3
	get_song_struct song = ($current_song)
	if StructureContains structure = <song_struct> boss
		Change \{is_boss_song = 1}
	else
		Change \{is_boss_song = 0}
	endif
	<menu_pos> = (640.0, 420.0)
	<song_name_pos> = (640.0, 367.0)
	<completion_text_pos> = (640.0, 422.0)
	completion = 0
	get_song_end_time song = ($current_song)
	if (<total_end_time> > 0)
		completion = (100 * $failed_song_time / <total_end_time>)
	endif
	CastToInteger \{completion}
	if (($game_mode = p1_career))
		if ($is_boss_song = 1)
			<menu_pos> = (640.0, 420.0)
		else
			<menu_pos> = (640.0, 401.0)
			<song_name_pos> = (640.0, 358.0)
			<completion_text_pos> = (640.0, 410.0)
		endif
	endif
	if ($game_mode = p2_career || $game_mode = p2_coop)
		min = ($difficulty_list_props.($current_difficulty).index)
		MathMin a = <min> b = ($difficulty_list_props.($current_difficulty2).index)
		CastToInteger \{min}
		difficulty_index = <min>
		get_difficulty_text_upper difficulty = ($difficulty_list [<difficulty_index>])
	else
		get_difficulty_text_upper difficulty = ($current_difficulty)
	endif
	get_song_title song = ($current_song)
	GetUpperCaseString <song_title>
	formatText TextName = completion_text "%d" d = <completion>
	song_failed_off = (640.0, 217.0)
	z = 100.0
	offwhite = [223 223 223 255]
	exclusive_mp_controllers = [0 , 0]
	SetArrayElement ArrayName = exclusive_mp_controllers index = 0 NewValue = ($player1_device)
	SetArrayElement ArrayName = exclusive_mp_controllers index = 1 NewValue = ($player2_device)
	new_menu event_handlers = [] scrollid = fail_song_scrolling_menu vmenuid = fail_song_vmenu_id use_backdrop = 0 spacing = -58 menu_pos = <menu_pos> exclusive_device = exclusive_mp_controllers
	create_pause_menu_frame z = (<z> - 10)
	SetScreenElementProps \{id = fail_song_vmenu_id
		internal_just = [
			center
			center
		]}
	CreateScreenElement \{Type = ContainerElement
		parent = root_window
		id = fail_song_static_text_container
		internal_just = [
			center
			center
		]
		Pos = (0.0, 0.0)
		z_priority = 2}
	displaySprite parent = fail_song_static_text_container tex = Dialog_Title_BG flip_v Pos = (416.0, 100.0) Scale = (1.75, 1.75) z = <z>
	displaySprite parent = fail_song_static_text_container tex = Dialog_Title_BG Pos = (640.0, 100.0) Scale = (1.75, 1.75) z = <z>
	if ($is_boss_song = 1)
		title = "BATTLE LOST"
	else
		title = "INCOMPLETE"
	endif
	CreateScreenElement {
		Type = TextElement
		parent = fail_song_static_text_container
		font = <menu_font>
		text = <title>
		just = [center center]
		Pos = {<song_failed_off> relative}
		rgba = [223 223 223 255]
		Scale = (1.2, 1.2)
		z_priority = (<z> + 0.1)
		Shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
	}
	GetScreenElementDims id = <id>
	fit_text_in_rectangle id = <id> dims = ((285.0, 0.0) + (<height> * (0.0, 1.0))) keep_ar = 1 only_if_larger_x = 1 start_x_scale = 1.2 start_y_scale = 1.2
	if ($current_song = bosstom || $current_song = bossslash || $current_song = bossdevil)
		final_blow_powerup = -1
		<final_blow_powerup> = ($player2_status.final_blow_powerup)
		printf channel = trchen "FINAL BLOW %s" s = <final_blow_powerup>
		if (<final_blow_powerup> > -1)
			<completion_text_pos> = (420.0, 360.0)
			<completion_text_just> = [left center]
			<completion_fit_dims> = (400.0, 400.0)
			CreateScreenElement {
				Type = HMenu
				parent = fail_song_static_text_container
				id = final_blow_stacker
				just = [right center]
				Pos = (840.0, 415.0)
				internal_just = [right center]
				Scale = <completion_text_scale>
			}
			<finalblow_scale> = 0.7
			CreateScreenElement {
				Type = TextElement
				font = <menu_font>
				parent = final_blow_stacker
				just = [center center]
				rgba = [210 130 0 255]
				Shadow
				shadow_offs = (3.0, 3.0)
				shadow_rgba = [0 0 0 255]
				z_priority = (<z> + 0.1)
				Scale = <finalblow_scale>
				text = "FINAL BLOW:"
				rgba = [223 223 223 255]
			}
			fit_text_in_rectangle {
				id = <id>
				dims = (320.0, 400.0)
				keep_ar = 1
				only_if_larger_x = 1
				start_x_scale = <finalblow_scale>
				start_y_scale = <finalblow_scale>
			}
			CreateScreenElement \{Type = ContainerElement
				parent = final_blow_stacker
				dims = (64.0, 64.0)}
			final_blow_attack_icon = ($battlemode_powerups [<final_blow_powerup>].card_texture)
			CreateScreenElement {
				Type = SpriteElement
				parent = <id>
				texture = <final_blow_attack_icon>
				rgba = [255 255 255 255]
				just = [left top]
				Pos = (10.0, -5.0)
				dims = (64.0, 64.0)
				z_priority = (<z> + 0.1)
			}
		else
			<completion_text_pos> = (640.0, 383.0)
			<completion_text_just> = [center center]
			<completion_fit_dims> = (425.0, 400.0)
		endif
		CreateScreenElement {
			Type = HMenu
			parent = fail_song_static_text_container
			id = fail_completion_stacker
			just = <completion_text_just>
			Pos = <completion_text_pos>
			internal_just = [center center]
			Scale = <completion_text_scale>
		}
		<completion_text_params> = {
			Type = TextElement
			font = <menu_font>
			parent = fail_completion_stacker
			just = [center center]
			rgba = [210 130 0 255]
			Shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba = [0 0 0 255]
			z_priority = (<z> + 0.1)
		}
		if ($current_song = bosstom)
			lost_text = "TOM MORELLO "
		elseif ($current_song = bossslash)
			lost_text = "SLASH "
		elseif ($current_song = bossdevil)
			lost_text = "LOU "
		endif
		CreateScreenElement <completion_text_params> Scale = 2 text = <lost_text> rgba = [223 223 223 255]
		CreateScreenElement <completion_text_params> Scale = 2 text = "WINS" rgba = [223 223 223 255]
		CreateScreenElement <completion_text_params> Scale = 1 text = " "
		CreateScreenElement <completion_text_params> Scale = 1 text = "ON"
		CreateScreenElement <completion_text_params> Scale = 1 text = " "
		CreateScreenElement <completion_text_params> Scale = 1 text = <difficulty_text>
		SetScreenElementLock \{id = fail_completion_stacker
			On}
		fit_text_in_rectangle {
			id = fail_completion_stacker
			dims = <completion_fit_dims>
			keep_ar = 1
			only_if_larger_x = 1
			start_x_scale = <completion_text_scale>
			start_y_scale = <completion_text_scale>
		}
	else
		<song_title_scale> = 1.65
		fill_song_title_and_completion_details <...> parent = fail_song_static_text_container
	endif
	Change \{menu_focus_color = [
			180
			50
			50
			255
		]}
	Change \{menu_unfocus_color = [
			0
			0
			0
			255
		]}
	text_scale = (0.9, 0.95)
	if NOT English
		text_scale = (0.9, 0.85)
	endif
	displaySprite parent = fail_song_static_text_container tex = white Pos = (492.0, 517.0) Scale = (75.0, 6.0) z = (<z> + 0.1) rgba = <offwhite>
	displaySprite parent = fail_song_static_text_container tex = Dialog_Frame_Joiner Pos = (480.0, 510.0) rot_angle = 5 Scale = (1.575, 1.5) z = (<z> + 0.2)
	displaySprite parent = fail_song_static_text_container tex = Dialog_Frame_Joiner Pos = (750.0, 514.0) flip_v rot_angle = -5 Scale = (1.575, 1.5) z = (<z> + 0.2)
	displaySprite id = hi_right parent = fail_song_static_text_container tex = Dialog_Highlight Pos = (770.0, 533.0) just [left top] Scale = (1.0, 1.0) z = (<z> + 0.3)
	displaySprite id = hi_left parent = fail_song_static_text_container tex = Dialog_Highlight flip_v just = [right top] Pos = (500.0, 533.0) Scale = (1.0, 1.0) z = (<z> + 0.3)
	demo_mode_disable = {}
	Change \{is_guitar_controller = 0}
	player_device = ($primary_controller)
	if IsGuitarController controller = <player_device>
		Change \{is_guitar_controller = 1}
	endif
	if (($game_mode = p1_career && $is_boss_song = 0))
		displaySprite parent = fail_song_static_text_container tex = Dialog_BG Pos = (480.0, 428.0) Scale = (1.25, 1.6) z = <z>
		displaySprite parent = fail_song_static_text_container tex = Dialog_BG flip_h Pos = (480.0, 530.0) Scale = (1.25, 1.6) z = <z>
	elseif ($is_boss_song = 1 && $is_guitar_controller = 1)
		displaySprite parent = fail_song_static_text_container tex = Dialog_BG Pos = (480.0, 450.0) Scale = (1.25, 1.6) z = <z>
		displaySprite parent = fail_song_static_text_container tex = Dialog_BG flip_h Pos = (480.0, 552.0) Scale = (1.25, 1.6) z = <z>
	else
		displaySprite parent = fail_song_static_text_container tex = Dialog_BG Pos = (480.0, 450.0) Scale = (1.25, 1.25) z = <z>
		displaySprite parent = fail_song_static_text_container tex = Dialog_BG flip_h Pos = (480.0, 530.0) Scale = (1.25, 1.25) z = <z>
	endif
	CreateScreenElement {
		Type = ContainerElement
		parent = fail_song_vmenu_id
		event_handlers = [
			{focus quit_highlight_focus params = {id = song_failed_new_quit}}
			{unfocus retail_menu_unfocus params = {id = song_failed_new_quit}}
			{pad_choose fail_song_menu_select_quit}
		]
		dims = (100.0, 180.0)
		z_priority = (<z> + 0.1)
	}
	CreateScreenElement {
		Type = TextElement
		parent = <id>
		id = song_failed_new_quit
		font = <menu_font>
		text = "CONTINUE"
		rgba = ($menu_unfocus_color)
		Scale = <text_scale>
		just = [center top]
	}
	SetScreenElementProps {
		id = <id>
		Scale = <text_scale>
	}
	GetScreenElementDims id = <id>
	if (<width> > 220)
		fit_text_in_rectangle id = <id> dims = ((220.0, 0.0) + <height> * (0.0, 1.0))
	endif
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
		z = 100}
	PauseGame
	kill_start_key_binding
	SpawnScriptNow \{update_countdown_timer}
	SpawnScriptNow \{fail_watch_timer}
endscript

script fail_song_menu_select_tutorial 
	player_device = ($primary_controller)
	if IsGuitarController controller = <player_device>
		ui_flow_manager_respond_to_action \{action = select_tutorial}
	endif
endscript

script destroy_fail_song_menu 
	clean_up_user_control_helpers
	restore_start_key_binding
	destroy_menu \{menu_id = fail_song_scrolling_menu}
	destroy_pause_menu_frame
	destroy_menu \{menu_id = fail_song_static_text_container}
endscript

script fail_song_menu_select_practice 
	GH3_SFX_fail_song_stop_sounds
	ui_flow_manager_respond_to_action \{action = select_practice}
endscript

script fail_song_menu_select_retry_song 
	GH3_SFX_fail_song_stop_sounds
	UnPauseGame
	ui_flow_manager_respond_to_action \{action = select_retry}
	restart_song
endscript

script fail_song_menu_select_new_song 
	GH3_SFX_fail_song_stop_sounds
	if ($coop_dlc_active = 1)
		Change \{game_mode = p2_faceoff}
	endif
	ui_flow_manager_respond_to_action \{action = select_new_song}
endscript

script fail_song_menu_select_quit 
	KillSpawnedScript \{Name = fail_watch_timer}
	KillSpawnedScript \{Name = update_countdown_timer}
	ui_flow_manager_respond_to_action \{action = select_quit}
endscript

script retry_highlight_focus 
	retail_menu_focus id = <id>
	if ScreenElementExists \{id = hi_left}
		if ScreenElementExists \{id = hi_right}
			GetScreenElementDims id = <id>
			SetScreenElementProps id = hi_left Pos = ((635.0, 475.0) - <width> * (0.5, 0.0)) flip_v
			SetScreenElementProps id = hi_right Pos = ((645.0, 475.0) + <width> * (0.5, 0.0))
			if ($game_mode = p1_career)
				if ($is_boss_song = 1)
					if ($is_guitar_controller = 1)
						SetScreenElementProps id = hi_left Pos = ((635.0, 471.0) - <width> * (0.5, 0.0)) flip_v
						SetScreenElementProps id = hi_right Pos = ((645.0, 471.0) + <width> * (0.5, 0.0))
					endif
				else
					SetScreenElementProps id = hi_left Pos = ((635.0, 455.0) - <width> * (0.5, 0.0)) flip_v
					SetScreenElementProps id = hi_right Pos = ((645.0, 455.0) + <width> * (0.5, 0.0))
				endif
			endif
		endif
	endif
endscript

script practice_highlight_focus 
	retail_menu_focus id = <id>
	if ScreenElementExists \{id = hi_left}
		if ScreenElementExists \{id = hi_right}
			GetScreenElementDims id = <id>
			SetScreenElementProps id = hi_left Pos = ((635.0, 495.0) - <width> * (0.5, 0.0)) flip_v
			SetScreenElementProps id = hi_right Pos = ((645.0, 495.0) + <width> * (0.5, 0.0))
			if ($game_mode = p1_career)
				if ($is_boss_song = 1)
					if ($is_guitar_controller = 1)
						SetScreenElementProps id = hi_left Pos = ((635.0, 515.0) - <width> * (0.5, 0.0)) flip_v
						SetScreenElementProps id = hi_right Pos = ((645.0, 515.0) + <width> * (0.5, 0.0))
					endif
				else
					SetScreenElementProps id = hi_left Pos = ((635.0, 495.0) - <width> * (0.5, 0.0)) flip_v
					SetScreenElementProps id = hi_right Pos = ((645.0, 495.0) + <width> * (0.5, 0.0))
				endif
			endif
		endif
	endif
endscript

script newsong_highlight_focus 
	retail_menu_focus id = <id>
	if ScreenElementExists \{id = hi_left}
		if ScreenElementExists \{id = hi_right}
			GetScreenElementDims id = <id>
			SetScreenElementProps id = hi_left Pos = ((635.0, 515.0) - <width> * (0.5, 0.0)) flip_v
			SetScreenElementProps id = hi_right Pos = ((645.0, 515.0) + <width> * (0.5, 0.0))
			if ($game_mode = p1_career)
				if ($is_boss_song = 1)
					if ($is_guitar_controller = 1)
						SetScreenElementProps id = hi_left Pos = ((635.0, 555.0) - <width> * (0.5, 0.0)) flip_v
						SetScreenElementProps id = hi_right Pos = ((645.0, 555.0) + <width> * (0.5, 0.0))
					endif
				else
					SetScreenElementProps id = hi_left Pos = ((635.0, 535.0) - <width> * (0.5, 0.0)) flip_v
					SetScreenElementProps id = hi_right Pos = ((645.0, 535.0) + <width> * (0.5, 0.0))
				endif
			endif
		endif
	endif
endscript

script quit_highlight_focus 
	retail_menu_focus id = <id>
	if ScreenElementExists \{id = hi_left}
		if ScreenElementExists \{id = hi_right}
			GetScreenElementDims id = <id>
			SetScreenElementProps id = hi_left Pos = ((635.0, 515.0) - <width> * (0.5, 0.0)) flip_v
			SetScreenElementProps id = hi_right Pos = ((645.0, 515.0) + <width> * (0.5, 0.0))
		endif
	endif
endscript

script fill_song_title_and_completion_details 
	RequireParams \{[
			parent
			UppercaseString
		]
		all}
	CreateScreenElement {
		Type = TextElement
		parent = <parent>
		id = fail_song_song_name
		font = <menu_font>
		just = [center center]
		text = <UppercaseString>
		Pos = <song_name_pos>
		rgba = [223 223 223 255]
		Scale = <song_title_scale>
		Shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
		z_priority = (<z> + 0.1)
	}
	fit_text_in_rectangle {
		id = fail_song_song_name
		dims = (430.0, 65.0)
		keep_ar = 1
		only_if_larger_x = 1
		start_x_scale = <song_title_scale>
		start_y_scale = <song_title_scale>
	}
	<completion_text_scale> = 0.5
	CreateScreenElement {
		Type = HMenu
		parent = <parent>
		id = fail_completion_stacker
		just = [center center]
		Pos = <completion_text_pos>
		internal_just = [center center]
		Scale = <completion_text_scale>
	}
	<completion_text_params> = {
		Type = TextElement
		font = <menu_font>
		parent = fail_completion_stacker
		just = [center center]
		rgba = [210 130 0 255]
		Shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
		z_priority = (<z> + 0.1)
	}
	CreateScreenElement <completion_text_params> Scale = 1 text = "COMPLETED"
	CreateScreenElement <completion_text_params> Scale = 1 text = " "
	CreateScreenElement <completion_text_params> Scale = 2 text = <completion_text>
	CreateScreenElement <completion_text_params> Scale = 1 text = "% "
	CreateScreenElement <completion_text_params> Scale = 1 text = "ON"
	CreateScreenElement <completion_text_params> Scale = 1 text = " "
	CreateScreenElement <completion_text_params> Scale = 2 text = <difficulty_text>
	SetScreenElementLock \{id = fail_completion_stacker
		On}
	fit_text_in_rectangle {
		id = fail_completion_stacker
		dims = (405.0, 400.0)
		keep_ar = 1
		only_if_larger_x = 1
		start_x_scale = <completion_text_scale>
		start_y_scale = <completion_text_scale>
	}
endscript

script fail_watch_timer 
	printf \{"fail_watch_timer: spawn"}
	SpawnScriptNow \{set_countdown_timer}
	begin
	check_countdown_timer
	if (<timer_has_expired> = 1)
		break
	endif
	Wait \{1
		Second}
	repeat
	SpawnScriptNow \{ui_flow_manager_respond_to_action
		params = {
			action = select_quit
		}}
endscript
