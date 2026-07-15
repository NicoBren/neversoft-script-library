autotest_part_strings = {
	none = qs("\LNone")
	guitar = qs("\LGuitar")
	Bass = qs("\LBass")
	Vocals = qs("\LVocals")
	drum = qs("\LDrums")
}
autotest_difficulty_strings = {
	easy_rhythm = qs("\LEasyRh")
	easy = qs("\LEasy")
	medium = qs("\LMedium")
	hard = qs("\LHard")
	expert = qs("\LExpert")
}
autotest_game_mode_names = {
	p1_career = qs("\Lp1_career")
	p2_career = qs("\Lp2_career")
	p3_career = qs("\Lp3_career")
	p4_career = qs("\Lpr_career")
	p1_quickplay = qs("\Lp1_quickplay")
	p2_quickplay = qs("\Lp2_quickplay")
	p3_quickplay = qs("\Lp3_quickplay")
	p4_quickplay = qs("\Lp4_quickplay")
	p2_faceoff = qs("\Lp2_faceoff")
	p2_pro_faceoff = qs("\Lp2_pro_faceoff")
	p4_pro_faceoff = qs("\Lp4_pro_faceoff")
	p8_pro_faceoff = qs("\Lp8_pro_faceoff")
	p2_battle = qs("\Lp2_battle")
	p2_coop = qs("\Lp2_coop")
	training = qs("\Ltraining")
}
autotest_hud_on = 0
autotest_restore_globals = 0
autotest_save_bot1 = 0
autotest_save_bot2 = 0
autotest_save_bot3 = 0
autotest_save_bot4 = 0
autotest_save_current_song = 0
autotest_save_current_starttime = 0
autotest_save_current_level = 0
autotest_save_current_num_players = 0
autotest_save_current_difficulty1 = 0
autotest_save_current_difficulty2 = 0
autotest_save_current_difficulty3 = 0
autotest_save_current_difficulty4 = 0
autotest_save_game_mode = 0
autotest_save_use_worst_band = 0
autotest_save_speedfactor = 0

script autotest_save_globals 
	change autotest_save_bot1 = ($player1_status.bot_play)
	change autotest_save_bot2 = ($player2_status.bot_play)
	change autotest_save_bot3 = ($player3_status.bot_play)
	change autotest_save_bot4 = ($player4_status.bot_play)
	change autotest_save_current_song = ($current_song)
	change autotest_save_current_starttime = ($current_starttime)
	change autotest_save_current_level = ($current_level)
	change autotest_save_current_num_players = ($current_num_players)
	change autotest_save_current_difficulty1 = ($player1_status.difficulty)
	change autotest_save_current_difficulty2 = ($player2_status.difficulty)
	change autotest_save_current_difficulty3 = ($player3_status.difficulty)
	change autotest_save_current_difficulty4 = ($player4_status.difficulty)
	change autotest_save_game_mode = ($game_mode)
	change autotest_save_use_worst_band = ($use_worst_band)
	change autotest_save_speedfactor = ($current_speedfactor)
	change \{autotest_restore_globals = 1}
endscript

script autotest_autotest_restore_globals 
	SetPlayerInfo 1 bot_play = ($autotest_save_bot1)
	SetPlayerInfo 2 bot_play = ($autotest_save_bot2)
	SetPlayerInfo 3 bot_play = ($autotest_save_bot3)
	SetPlayerInfo 4 bot_play = ($autotest_save_bot4)
	change current_song = ($autotest_save_current_song)
	change current_starttime = ($autotest_save_current_starttime)
	change current_level = ($autotest_save_current_level)
	change current_num_players = ($autotest_save_current_num_players)
	change structurename = player1_status difficulty = ($autotest_save_current_difficulty1)
	change structurename = player2_status difficulty = ($autotest_save_current_difficulty2)
	change structurename = player3_status difficulty = ($autotest_save_current_difficulty3)
	change structurename = player4_status difficulty = ($autotest_save_current_difficulty4)
	change game_mode = ($autotest_save_game_mode)
	change use_worst_band = ($autotest_save_use_worst_band)
	change current_speedfactor = ($autotest_save_speedfactor)
	change \{autotest_restore_globals = 0}
endscript

script create_autotest_menu 
	ui_menu_select_sfx
	destroy_debugging_menu
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	change \{autotest_on = 1}
	autotest_save_globals
	SetPlayerInfo \{1
		bot_play = 1}
	SetPlayerInfo \{2
		bot_play = 1}
	SetPlayerInfo \{3
		bot_play = 1}
	SetPlayerInfo \{4
		bot_play = 1}
	CreateScreenElement {
		type = MenuElement
		id = autotest_vmenu
		parent = Pause_Menu
		font = debug
		dims = (400.0, 480.0)
		pos = ($menu_pos - (30.0, 0.0))
		scale = 1
		rgba = [210 210 210 250]
		text = <basename>
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_back generic_menu_pad_back params = {callback = back_to_debug_menu}}
		]
	}
	FormatText \{TextName = suite_text
		qs("\LSelect Test Suite")}
	CreateScreenElement {
		type = TextElement
		id = suite_select
		parent = autotest_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = <suite_text>
		just = [left top]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose create_test_suite_select_menu}
		]
	}
	if ($autotest_hud_on = 0)
		FormatText \{TextName = Hud_Text
			qs("\LToggle HUD: Off")}
	else
		FormatText \{TextName = Hud_Text
			qs("\LToggle HUD: On")}
	endif
	CreateScreenElement {
		type = TextElement
		id = hud_toggle
		parent = autotest_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = <Hud_Text>
		just = [left top]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_left autotest_toggle_hud params = {hud_toggle = hud_toggle}}
			{pad_right autotest_toggle_hud params = {hud_toggle = hud_toggle}}
			{pad_choose autotest_toggle_hud params = {hud_toggle = hud_toggle}}
		]
	}
	if ($autotest_turbo_mode = 0)
		FormatText \{TextName = turbo_mode_text
			qs("\LTurbo Mode: Off")}
	else
		FormatText \{TextName = turbo_mode_text
			qs("\LTurboMode: On")}
	endif
	CreateScreenElement {
		type = TextElement
		id = turbo_mode_toggle
		parent = autotest_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = <turbo_mode_text>
		just = [left top]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_left autotest_toggle_turbo_mode params = {turbo_mode_toggle = hud_toggle}}
			{pad_right autotest_toggle_turbo_mode params = {turbo_mode_toggle = hud_toggle}}
			{pad_choose autotest_toggle_turbo_mode params = {turbo_mode_toggle = hud_toggle}}
		]
	}
	CreateScreenElement \{type = TextElement
		id = start_autotest_button
		parent = autotest_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LStart Autotesting . . .")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				autotest_start
			}
		]}
	autotest_create_suite_list
	change \{autotest_test_index = 0}
	LaunchEvent \{type = focus
		target = autotest_vmenu}
endscript

script create_test_suite_select_menu 
	ui_menu_select_sfx
	destroy_autotest_menu \{still_testing = 1}
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = test_suite_scrolling_menu
		just = [left top]
		dims = (400.0, 550.0)
		pos = ($menu_pos)
	}
	CreateScreenElement \{type = VMenu
		parent = test_suite_scrolling_menu
		id = test_suite_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_autotest_menu
				}
			}
		]}
	autotest_create_suite_list
	<suite_num> = 0
	begin
	<found_suite> = 0
	FormatText checksumname = suite_struct 'autotest_suite%x' x = <suite_num>
	if GlobalExists name = <suite_struct> type = Structure
		<found_suite> = 1
	endif
	if (<found_suite> = 1)
		autotest_get_suite suite_num = <suite_num>
		CreateScreenElement {
			type = TextElement
			parent = test_suite_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = (<suite_struct>.name)
			just = [left top]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose autotest_push_test_suite params = {suite_num = <suite_num>}}
				{pad_square autotest_pop_test_suite}
			]
		}
	endif
	<suite_num> = (<suite_num> + 1)
	repeat $autotest_max_suites
	LaunchEvent \{type = focus
		target = test_suite_vmenu}
	add_user_control_helper \{text = qs("ADD SELECTED SUITE")
		button = green
		z = 1000}
	add_user_control_helper \{text = qs("REMOVE LAST SUITE")
		button = Blue
		z = 1000}
endscript

script autotest_create_suite_list 
	CreateScreenElement {
		type = VMenu
		parent = Pause_Menu
		id = test_suite_list
		just = [left top]
		dims = (400.0, 550.0)
		pos = ($menu_pos - (500.0, 0.0))
		rgba = [128 128 128 250]
	}
	autotest_populate_test_suite_list
endscript

script destroy_test_suite_select_menu 
	if ScreenElementExists \{id = test_suite_scrolling_menu}
		DestroyScreenElement \{id = test_suite_scrolling_menu}
	endif
	if ScreenElementExists \{id = test_suite_list}
		DestroyScreenElement \{id = test_suite_list}
	endif
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script autotest_suite_transition_set_props 
	GetTrueElapsedTime \{StartTime = $autotest_initial_time}
	change autotest_total_time = <ElapsedTime>
	autotest_format_time \{time = $autotest_total_time
		mode = hours_minutes_seconds}
	autotest_suite_transition :SE_SetProps test_suite_text = (<suite_struct>.name)
	autotest_suite_transition :SE_SetProps total_time_text = <formatted_time>
	if ($autotest_total_frames > 0)
		change autotest_average_fps = ($autotest_average_fps / $autotest_total_frames)
	endif
	FormatText \{TextName = average_fps_text
		qs("\L%f")
		f = $autotest_average_fps}
	autotest_format_time \{time = $autotest_highest_fps_time
		mode = minutes_seconds_ms}
	FormatText \{TextName = highest_fps_text
		qs("\L%f")
		f = $autotest_highest_fps}
	FormatText TextName = highest_fps_info qs("\LTest %s  at  %t") s = $autotest_highest_fps_test t = <formatted_time>
	autotest_format_time \{time = $autotest_lowest_fps_time
		mode = minutes_seconds_ms}
	FormatText \{TextName = lowest_fps_text
		qs("\L%f")
		f = $autotest_lowest_fps}
	FormatText TextName = lowest_fps_info qs("\LTest %s  at  %t") s = $autotest_lowest_fps_test t = <formatted_time>
	autotest_suite_transition :SE_SetProps average_fps_text = <average_fps_text>
	autotest_suite_transition :SE_SetProps highest_fps_text = <highest_fps_text>
	autotest_suite_transition :SE_SetProps highest_fps_info_text = <highest_fps_info>
	autotest_suite_transition :SE_SetProps lowest_fps_text = <lowest_fps_text>
	autotest_suite_transition :SE_SetProps lowest_fps_info_text = <lowest_fps_info>
endscript

script autotest_transition_set_props 
	autotest_get_suite \{suite_num = $autotest_suite_index
		FromSuiteList}
	autotest_get_test \{suite_num = $autotest_suite_index
		test_num = $autotest_test_index}
	FormatText TextName = suite_and_test_text qs("\L%s / Test #%t") s = (<suite_struct>.name) t = $autotest_test_index
	autotest_transition :SE_SetProps test_suite_text = <suite_and_test_text>
	<song_name> = (<test_struct>.song)
	<song_struct> = ($permanent_songlist_props.<song_name>)
	<song_text> = (<song_struct>.title)
	autotest_transition :SE_SetProps song_text = <song_text>
	<venue_name> = (<test_struct>.venue)
	<venue_struct> = ($LevelZones.<venue_name>)
	<venue_text> = (<venue_struct>.title)
	autotest_transition :SE_SetProps venue_text = <venue_text>
	<game_mode> = (<test_struct>.game_mode)
	autotest_transition :SE_SetProps game_mode_text = ($autotest_game_mode_names.<game_mode>)
	<starttime_text> = qs("\LBeginning")
	<endtime_text> = qs("\LEnd")
	if ($autotest_has_starttime = 1)
		autotest_format_time \{mode = minutes_seconds_ms
			time = $current_starttime}
		FormatText TextName = starttime_text qs("\L%s") s = <formatted_time>
	endif
	if ($autotest_has_endtime = 1)
		autotest_format_time \{mode = minutes_seconds_ms
			time = $autotest_endtime}
		FormatText TextName = endtime_text qs("\L%e") e = <formatted_time>
	endif
	FormatText TextName = time_span_text qs("\L%s to %e") s = <starttime_text> e = <endtime_text>
	autotest_transition :SE_SetProps time_span_text = <time_span_text>
	FormatText TextName = speed_text qs("\L%s") s = <Speed>
	autotest_transition :SE_SetProps speed_text = <speed_text>
	if (<test_struct>.p1_part != none)
		autotest_transition :SE_SetProps p1_part_text = ($autotest_part_strings.(<test_struct>.p1_part))
		autotest_transition :SE_SetProps p1_difficulty_text = ($autotest_difficulty_strings.(<test_struct>.p1_difficulty))
	else
		autotest_transition :SE_SetProps \{p1_part_text = qs("\LDISABLED")}
		autotest_transition :SE_SetProps \{p1_difficulty_text = qs("\L")}
	endif
	if (<test_struct>.p2_part != none)
		autotest_transition :SE_SetProps p2_part_text = ($autotest_part_strings.(<test_struct>.p2_part))
		autotest_transition :SE_SetProps p2_difficulty_text = ($autotest_difficulty_strings.(<test_struct>.p2_difficulty))
	else
		autotest_transition :SE_SetProps \{p2_part_text = qs("\LDISABLED")}
		autotest_transition :SE_SetProps \{p2_difficulty_text = qs("\L")}
	endif
	if (<test_struct>.p3_part != none)
		autotest_transition :SE_SetProps p3_part_text = ($autotest_part_strings.(<test_struct>.p3_part))
		autotest_transition :SE_SetProps p3_difficulty_text = ($autotest_difficulty_strings.(<test_struct>.p3_difficulty))
	else
		autotest_transition :SE_SetProps \{p3_part_text = qs("\LDISABLED")}
		autotest_transition :SE_SetProps \{p3_difficulty_text = qs("\L")}
	endif
	if (<test_struct>.p4_part != none)
		autotest_transition :SE_SetProps p4_part_text = ($autotest_part_strings.(<test_struct>.p4_part))
		autotest_transition :SE_SetProps p4_difficulty_text = ($autotest_difficulty_strings.(<test_struct>.p4_difficulty))
	else
		autotest_transition :SE_SetProps \{p4_part_text = qs("\LDISABLED")}
		autotest_transition :SE_SetProps \{p4_difficulty_text = qs("\L")}
	endif
endscript

script destroy_autotest_menu 
	if ScreenElementExists \{id = autotest_vmenu}
		DestroyScreenElement \{id = autotest_vmenu}
	endif
	if ScreenElementExists \{id = test_suite_list}
		DestroyScreenElement \{id = test_suite_list}
	endif
	destroy_menu_backdrop
	KillSpawnedScript \{name = autotest_check_end_time}
	KillSpawnedScript \{name = autotest_update_gpu_info}
	if NOT GotParam \{still_testing}
		change \{autotest_on = 0}
		change \{autotest_suite_index = 0}
		change \{autotest_test_index = 0}
		if ($autotest_restore_globals = 1)
			autotest_autotest_restore_globals
		endif
	endif
endscript

script back_to_autotest_menu 
	destroy_test_suite_select_menu
	destroy_autotest_complete
	create_autotest_menu
endscript

script destroy_autotest_complete 
	if ScreenElementExists \{id = autotest_complete}
		DestroyScreenElement \{id = autotest_complete}
	endif
endscript

script autotest_create_hud 
	if ($autotest_hud_on)
		if NOT ScreenElementExists \{id = autotest_hud}
			CreateScreenElement \{parent = root_window
				id = autotest_hud
				type = DescInterface
				desc = 'autotest_hud'}
			spawnscriptnow \{autotest_update_in_game_hud}
		endif
	endif
endscript

script autotest_destroy_hud 
	KillSpawnedScript \{name = autotest_update_in_game_hud}
	if ScreenElementExists \{id = autotest_hud}
		DestroyScreenElement \{id = autotest_hud}
	endif
endscript
