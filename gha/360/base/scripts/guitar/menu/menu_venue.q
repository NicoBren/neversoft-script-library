g_max_venues = 0
g_venue_index = 0
g_venue_pos_add = (0.0, 720.0)
g_venue_current_pos = (0.0, 0.0)
g_venue_poster_space = 360
g_last_venue_selected = None

script create_select_venue_menu \{Player = 1}
	Change \{g_venue_index = 0}
	Change \{g_last_venue_selected = $current_level}
	kill_start_key_binding
	UnPauseGame
	if ($game_mode = p1_career)
		formatText checksumName = bandname_id 'band%i_info_%g' i = ($current_band) g = ($game_mode_names.$game_mode)
		GetGlobalTags <bandname_id> param = first_venue_movie_played
		if (<first_venue_movie_played> = 0)
			get_progression_globals game_mode = ($game_mode)
			if StructureContains structure = ($<tier_global>) initial_movie
				menu_music_off
				PlayMovieAndWait movie = ($<tier_global>.initial_movie)
				get_movie_id_by_name movie = ($<tier_global>.initial_movie)
				SetGlobalTags <id> params = {unlocked = 1}
			endif
			SetGlobalTags <bandname_id> params = {first_venue_movie_played = 1}
		endif
	endif
	if ($progression_play_completion_movie = 1)
		get_progression_globals game_mode = ($game_mode)
		formatText checksumName = tiername 'tier%i' i = ($progression_completion_tier)
		if StructureContains structure = ($<tier_global>.<tiername>) completion_movie
			menu_music_off
			PlayMovieAndWait movie = ($<tier_global>.<tiername>.completion_movie)
			get_movie_id_by_name movie = ($<tier_global>.<tiername>.completion_movie)
			SetGlobalTags <id> params = {unlocked = 1}
		endif
		Change \{progression_play_completion_movie = 0}
	endif
	Change \{g_venue_current_pos = (0.0, 0.0)}
	SpawnScriptNow \{menu_music_on}
	if (($player1_status.bot_play = 1) || ($is_network_game))
		exclusive_device = ($primary_controller)
	else
		if ($game_mode = p2_faceoff ||
				$game_mode = p2_pro_faceoff ||
				$game_mode = p2_battle ||
				$game_mode = p2_quickplay)
			exclusive_mp_controllers = [0 , 0]
			SetArrayElement ArrayName = exclusive_mp_controllers index = 0 NewValue = ($player1_device)
			SetArrayElement ArrayName = exclusive_mp_controllers index = 1 NewValue = ($player2_device)
			exclusive_device = <exclusive_mp_controllers>
		else
			exclusive_device = ($primary_controller)
		endif
	endif
	CreateScreenElement \{Type = ContainerElement
		id = venue_container
		parent = root_window
		Pos = (0.0, 0.0)}
	CreateScreenElement \{Type = SpriteElement
		id = Venue_Overlay
		parent = root_window
		texture = Venue_Overlay
		Pos = (0.0, 0.0)
		just = [
			left
			top
		]
		z_priority = 30
		dims = (1280.0, 720.0)}
	CreateScreenElement \{Type = SpriteElement
		id = shadowhole
		parent = root_window
		texture = overlay_spotlight
		Pos = (640.0, 360.0)
		just = [
			center
			center
		]
		z_priority = 31
		dims = (1280.0, 720.0)
		rgba = [
			255
			153
			204
			255
		]
		alpha = 0.5
		blend = add}
	RunScriptOnScreenElement id = <id> circulator params = {time = 3 offs = 100 lag = 1 clockwise}
	GetRandomValue \{Name = bg_offset
		integer
		a = 5760
		b = 12240}
	<bg_1_pos> = ((-10.0, 0.0) + (<bg_offset> * (0.0, -1.0)))
	<bg_2_pos> = (<bg_1_pos> + (0.0, 6480.0))
	CreateScreenElement {
		Type = SpriteElement
		parent = venue_container
		id = backposter_1
		Pos = <bg_1_pos>
		texture = Venue_BackPoster
		z_priority = 0
		dims = (1300.0, 6480.0)
		just = [left top]
	}
	RunScriptOnScreenElement id = <id> circulator
	CreateScreenElement {
		Type = SpriteElement
		parent = venue_container
		id = backposter_2
		Pos = <bg_2_pos>
		texture = Venue_BackPoster
		z_priority = 0
		dims = (1300.0, 6480.0)
		just = [left top]
	}
	RunScriptOnScreenElement id = <id> circulator
	get_progression_globals \{game_mode = $game_mode}
	number_of_tiers = (<tier_global>.num_tiers)
	level_count = 0
	tier_num = 1
	poster_index = 0
	poster_dist = 720
	bg_pos = (0.0, 0.0)
	<poster_rot> = 1
	begin
	<poster_rot> = (<poster_rot> * -1)
	available = 1
	if (<tier_num> > <number_of_tiers>)
		break
	endif
	formatText checksumName = Tier 'tier%i' i = <tier_num>
	if StructureContains structure = (<tier_global>.<Tier>) unlocked_levels
		my_level = (<tier_global>.<Tier>.unlocked_levels [<level_count>])
		GetArraySize (<tier_global>.<Tier>.unlocked_levels)
		level_count = (<level_count> + 1)
		if (<level_count> >= <array_Size>)
			level_count = 0
			<tier_num> = (<tier_num> + 1)
		endif
	else
		my_level = (<tier_global>.<Tier>.level)
		level_count = 0
		<tier_num> = (<tier_num> + 1)
		if StructureContains structure = ($LevelZones.<my_level>) debug_only
			available = 0
		endif
		if ($game_mode = p1_career)
			get_current_band_checksum
			final_checksum = <band_checksum>
			ExtendCrc <final_checksum> ($LevelZones.<my_level>.Name) out = final_checksum
			unlocked = 1
			GetGlobalTags <final_checksum> noassert = 1
			if (<unlocked> = 0)
				<available> = 0
			endif
		else
			formatText checksumName = venue_checksum 'venue_%s' s = ($LevelZones.<my_level>.Name)
			unlocked = 1
			GetGlobalTags <venue_checksum> noassert = 1
			if (<unlocked> = 0)
				<available> = 0
			endif
		endif
		if ($is_network_game = 1)
			<available> = 1
		endif
	endif
	if (<available> = 1)
		formatText checksumName = venue_id 'venue_%d' d = <poster_index>
		CreateScreenElement {
			Type = TextElement
			parent = venue_container
			id = <venue_id>
			font = text_a1
			event_handlers = [
				{focus venue_focus params = {level_checksum = <my_level>}}
				{unfocus retail_menu_unfocus}
				{pad_up venue_scroll_up}
				{pad_down venue_scroll_down}
				{pad_back venue_go_back params = {Player = <Player>}}
				{pad_choose select_venue_choose_venue params = {level_checksum = <my_level> Player = <Player>}}
			]
			exclusive_device = <exclusive_device>
		}
		if (<poster_rot> = 1)
			<poster_angle> = RandomRange (0.0, 5.0)
		else
			<poster_angle> = RandomRange (-5.0, 0.0)
		endif
		new_poster_pos = ((640.0, 360.0) - (($g_venue_poster_space + <poster_dist>) * <poster_index>) * (0.0, 1.0))
		CreateScreenElement {
			Type = SpriteElement
			parent = venue_container
			Pos = <new_poster_pos>
			texture = ($LevelZones.<my_level>.bg)
			z_priority = 20
			dims = (720.0, 720.0)
			just = [center center]
			rot_angle = <poster_angle>
		}
		RunScriptOnScreenElement id = <id> circulator
		GetUpperCaseString ($LevelZones.<my_level>.title)
		<poster_index> = (<poster_index> + 1)
	endif
	repeat
	GetArraySize \{$LevelZoneArray}
	old_size = (<array_Size>)
	get_LevelZoneArray_size
	if (<array_Size> > <old_size>)
		venue_index = (<array_Size> - 1)
		begin
		get_LevelZoneArray_checksum index = <venue_index>
		available = 1
		if Is_LevelZone_Downloaded level_checksum = <level_checksum>
			if (<download> = 1 &&
					$is_network_game = 1)
				available = 0
			endif
		else
			available = 0
		endif
		if StructureContains structure = ($LevelZones.<level_checksum>.Name) debug_only
			available = 0
		endif
		if (<available> = 1)
			formatText checksumName = venue_id 'venue_%d' d = <poster_index>
			CreateScreenElement {
				Type = TextElement
				parent = venue_container
				id = <venue_id>
				font = text_a1
				event_handlers = [
					{focus venue_focus params = {level_checksum = <level_checksum>}}
					{unfocus retail_menu_unfocus}
					{pad_back venue_go_back params = {Player = <Player>}}
					{pad_choose select_venue_choose_venue params = {level_checksum = <level_checksum> Player = <Player>}}
				]
				exclusive_device = <exclusive_device>
			}
			new_poster_pos = ((640.0, 360.0) - (($g_venue_poster_space + <poster_dist>) * <poster_index>) * (0.0, 1.0))
			CreateScreenElement {
				parent = venue_container
				Type = SpriteElement
				Pos = <new_poster_pos>
				texture = ($LevelZones.<level_checksum>.bg)
				z_priority = 20
				dims = (720.0, 720.0)
				just = [center center]
			}
			GetUpperCaseString ($LevelZones.<level_checksum>.title)
			displaySprite parent = venue_container tex = white Pos = (<new_poster_pos> + (0.0, -100.0)) just = [center center] Scale = (90.0, 15.0) z = 21
			displayText {
				parent = venue_container
				text = <UppercaseString>
				z = 22
				just = [center center]
				rgba = [88 1 17 255]
				font = fontgrid_title_gh3
				noshadow
			}
			fit_text_in_rectangle id = <id> dims = (360.0, 70.0) Pos = (<new_poster_pos> + (0.0, -95.0))
			<poster_index> = (<poster_index> + 1)
		endif
		<venue_index> = (<venue_index> + 1)
		repeat (<array_Size> - <old_size>)
	endif
	printstruct <...>
	Change g_max_venues = <poster_index>
	Change \{disable_menu_sounds = 1}
	formatText \{checksumName = venue_id
		'venue_%d'
		d = 0}
	LaunchEvent Type = focus target = <venue_id>
	tier_num = 1
	begin
	formatText checksumName = Tier 'tier%i' i = <tier_num>
	my_level = (<tier_global>.<Tier>.level)
	if (<my_level> = $g_last_venue_selected)
		break
	endif
	venue_scroll_up \{morph = 0}
	<tier_num> = (<tier_num> + 1)
	repeat <number_of_tiers>
	Change \{disable_menu_sounds = 0}
	add_user_control_helper \{text = "SELECT"
		button = green
		z = 100}
	add_user_control_helper \{text = "BACK"
		button = red
		z = 100}
	add_user_control_helper \{text = "UP/DOWN"
		button = strumbar
		z = 100}
	SetMenuAutoRepeatTimes \{(0.3, 0.3)}
endscript

script destroy_select_venue_menu 
	destroy_menu \{menu_id = Venue_Overlay}
	clean_up_user_control_helpers
	destroy_menu \{menu_id = venue_container}
	DestroyScreenElement \{id = shadowhole}
	SetMenuAutoRepeatTimes \{(0.3, 0.05)}
endscript

script venue_go_back 
	Change \{current_level = $g_last_venue_selected}
	ui_flow_manager_respond_to_action action = go_back create_params = {Player = <Player>}
endscript

script venue_focus 
	Change current_level = <level_checksum>
	retail_menu_focus
endscript

script venue_scroll_down \{time = 0.35000002
		morph = 1}
	if ($g_venue_index - 1 < 0)
		return
	endif
	Change g_venue_index = ($g_venue_index - 1)
	formatText \{checksumName = venue_id
		'venue_%d'
		d = $g_venue_index}
	LaunchEvent Type = focus target = <venue_id>
	generic_menu_up_or_down_sound \{up}
	if ScreenElementExists \{id = venue_container}
		Change g_venue_current_pos = ($g_venue_current_pos - $g_venue_pos_add - ($g_venue_poster_space * (0.0, 1.0)))
		if (<morph> = 1)
			venue_container :DoMorph Pos = $g_venue_current_pos time = <time> motion = ease_out
		else
			venue_container :SetProps \{Pos = $g_venue_current_pos}
		endif
	endif
endscript

script venue_scroll_up \{time = 0.35000002
		morph = 1}
	if ($g_venue_index + 1 >= $g_max_venues)
		return
	endif
	Change g_venue_index = ($g_venue_index + 1)
	formatText \{checksumName = venue_id
		'venue_%d'
		d = $g_venue_index}
	LaunchEvent Type = focus target = <venue_id>
	generic_menu_up_or_down_sound \{down}
	if ScreenElementExists \{id = venue_container}
		Change g_venue_current_pos = ($g_venue_current_pos + $g_venue_pos_add + ($g_venue_poster_space * (0.0, 1.0)))
		if (<morph> = 1)
			venue_container :DoMorph Pos = $g_venue_current_pos time = <time> motion = ease_out
		else
			venue_container :SetProps \{Pos = $g_venue_current_pos}
		endif
	endif
endscript

script select_venue_choose_venue 
	Change \{g_last_venue_selected = $current_level}
	ui_flow_manager_respond_to_action action = continue create_params = {Player = <Player>}
endscript

script circulator \{time = 2
		lag = 0
		offs = 5}
	GetTags
	if GotParam \{clockwise}
		offs00 = (<offs> * (1.0, 0.0))
		offs04 = (<offs> * (1.0, 1.0))
		offs03 = (<offs> * (1.0, -1.0))
		offs02 = (<offs> * (-1.0, -1.0))
		offs01 = (<offs> * (-1.0, 1.0))
		DoMorph Pos = {<offs00> relative}
	else
		offs00 = (<offs> * (-1.0, 0.0))
		offs01 = (<offs> * (1.0, 1.0))
		offs02 = (<offs> * (1.0, -1.0))
		offs03 = (<offs> * (-1.0, -1.0))
		offs04 = (<offs> * (-1.0, 1.0))
		DoMorph Pos = {<offs00> relative}
	endif
	if NOT ScreenElementExists id = <id>
		return
	endif
	Wait <lag> Seconds
	begin
	DoMorph Pos = {<offs01> relative} time = <time> motion = smooth
	DoMorph Pos = {<offs02> relative} time = <time> motion = smooth
	DoMorph Pos = {<offs03> relative} time = <time> motion = smooth
	DoMorph Pos = {<offs04> relative} time = <time> motion = smooth
	repeat
endscript
