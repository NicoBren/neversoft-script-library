autotest_max_suites = 1000
autotest_on = 0
autotest_turbo_mode = 0
autotest_transition = intro
autotest_next_test_screen_time = 5
autotest_next_suite_screen_time = 5
autotest_suite_list_index = 0
autotest_suite_index = 0
autotest_suite_name = none
autotest_test_index = 0
autotest_initial_time = 0
autotest_total_time = 0
autotest_ingame = 0
autotest_starttime = 0
autotest_endtime = 999999999
autotest_has_starttime = 0
autotest_has_endtime = 0
autotest_suite_list = [
	-1
	-1
	-1
	-1
	-1
	-1
	-1
	-1
	-1
	-1
	-1
	-1
	-1
	-1
	-1
]
autotest_num_suites = 0
autotest_total_frames = 0
autotest_average_fps = 0
autotest_highest_fps = 0
autotest_highest_fps_time = 0
autotest_highest_fps_test = -1
autotest_lowest_fps = 120
autotest_lowest_fps_time = 0
autotest_lowest_fps_test = -1
autotest_log_gpu = 0
autotest_gpu_total_frames = 0
autotest_gpu_under_15ms = 0
autotest_gpu_15ms_to_16ms = 0
autotest_gpu_16ms_to_18ms = 0
autotest_gpu_18ms_to_20ms = 0
autotest_gpu_over_20ms = 0
autotest_gpu_spike = 0
autotest_gpu_spike_time = 0
autotest_num_worst_cams = 5
autotest_worst_cam_strings = [
	qs("\Lnull")
	qs("\Lnull")
	qs("\Lnull")
	qs("\Lnull")
	qs("\Lnull")
]
autotest_worst_cam_ms = [
	0.0
	0.0
	0.0
	0.0
	0.0
]
autotest_worst_cam_times = [
	0.0
	0.0
	0.0
	0.0
	0.0
]
autotest_least_worst_cam_index = 0

script autotest_start 
	if ($autotest_turbo_mode = 1)
		change \{autotest_next_test_screen_time = 1}
		change \{autotest_transition = none}
	endif
	if (($autotest_num_suites) = 0 && autolaunch = 0)
		return
	endif
	destroy_autotest_menu \{still_testing = 1}
	if ($autotest_suite_name = none)
		GetArraySize ($autotest_suite_list)
		<suite_list_size> = <array_size>
	else
		<suite_list_size> = 1
	endif
	<suite_index> = 0
	begin
	if (($autotest_suite_list [<suite_index>]) = -1 && ($autotest_suite_name = none))
		break
	endif
	autotest_get_suite suite_num = <suite_index> FromSuiteList
	GetArraySize (<suite_struct>.tests)
	<i> = 0
	begin
	autotest_get_test suite_num = <suite_index> test_num = <i>
	autotest_set_test_params test_struct = <test_struct>
	autotest_check_test_params suite_num = <suite_index> test_num = <i>
	if (<check_passed> = 0)
		if NOT GotParam \{autolaunch}
			back_to_autotest_menu
		endif
		return \{started = 0}
	endif
	<i> = (<i> + 1)
	repeat <array_size>
	<suite_index> = (<suite_index> + 1)
	repeat <suite_list_size>
	autotest_get_test \{suite_num = $autotest_suite_index
		test_num = $autotest_test_index}
	autotest_set_test_params test_struct = <test_struct>
	autotest_show_next_test_screen length = ($autotest_next_test_screen_time) test_struct = <test_struct>
	GetTrueStartTime
	change autotest_initial_time = <StartTime>
	generic_event_choose \{data = {
			state = uistate_play_song
			StartTime = $autotest_starttime
		}}
	spawnscriptnow \{autotest_update_fps_info}
	if ($autotest_log_gpu = 1)
		spawnscriptnow \{autotest_update_gpu_info}
	endif
	if ($autotest_has_endtime)
		spawnscriptnow \{autotest_check_end_time}
	endif
	if ($autotest_hud_on = 1)
		spawnscriptnow \{autotest_create_hud}
	endif
	change \{autotest_ingame = 1}
endscript

script autotest_set_test_params 
	change current_song = (<test_struct>.song)
	change \{num_quickplay_song_list = 1}
	change \{quickplay_song_list_current = 0}
	change current_level = (<test_struct>.venue)
	<diff_array> = []
	<num_players> = 0
	if NOT (<test_struct>.p1_part = none)
		SetPlayerInfo (<num_players> + 1) part = (<test_struct>.p1_part)
		<num_players> = (<num_players> + 1)
		<diff_array> = (<diff_array> + (<test_struct>.p1_difficulty))
	endif
	if NOT (<test_struct>.p2_part = none)
		SetPlayerInfo (<num_players> + 1) part = (<test_struct>.p2_part)
		<num_players> = (<num_players> + 1)
		<diff_array> = (<diff_array> + (<test_struct>.p2_difficulty))
	endif
	if NOT (<test_struct>.p3_part = none)
		SetPlayerInfo (<num_players> + 1) part = (<test_struct>.p3_part)
		<num_players> = (<num_players> + 1)
		<diff_array> = (<diff_array> + (<test_struct>.p3_difficulty))
	endif
	if NOT (<test_struct>.p4_part = none)
		SetPlayerInfo (<num_players> + 1) part = (<test_struct>.p4_part)
		<num_players> = (<num_players> + 1)
		<diff_array> = (<diff_array> + (<test_struct>.p4_difficulty))
	endif
	change current_num_players = <num_players>
	change structurename = player1_status difficulty = (<diff_array> [0])
	if (<num_players> > 1)
		change structurename = player2_status difficulty = (<diff_array> [1])
	endif
	if (<num_players> > 2)
		change structurename = player3_status difficulty = (<diff_array> [2])
	endif
	if (<num_players> > 3)
		change structurename = player4_status difficulty = (<diff_array> [3])
	endif
	<player> = 1
	begin
	SetPlayerInfo <player> star_power_debug_mode = (<test_struct>.star_power_always_on)
	<player> = (<player> + 1)
	repeat 4
	change game_mode = (<test_struct>.game_mode)
	change use_worst_band = (<test_struct>.worst_case_band)
	change \{current_starttime = 0}
	if StructureContains Structure = <test_struct> start_time
		change current_starttime = (<test_struct>.start_time)
		change \{autotest_has_starttime = 1}
	else
		change \{autotest_starttime = 0}
		change \{autotest_has_starttime = 0}
	endif
	if StructureContains Structure = <test_struct> end_time
		change autotest_endtime = (<test_struct>.end_time)
		change \{autotest_has_endtime = 1}
	else
		change \{autotest_endtime = 999999999}
		change \{autotest_has_endtime = 0}
	endif
	if StructureContains Structure = <test_struct> speed_factor
		change current_speedfactor = (<test_struct>.speed_factor)
		setslomo \{$current_speedfactor}
	else
		change \{current_speedfactor = 1.0}
		setslomo \{$current_speedfactor}
	endif
	if StructureContains Structure = <test_struct> force_score
		change debug_forcescore = (<test_struct>.force_score)
		SpawnScriptLater \{autotest_force_crowd}
	else
		change \{debug_forcescore = off}
	endif
endscript

script autotest_force_crowd 
	begin
	if ($debug_forcescore = medium)
		break
	endif
	if ($debug_forcescore = good)
		CrowdIncrease \{player_status = player1_status}
		CrowdIncrease \{player_status = player2_status}
		CrowdIncrease \{player_status = player3_status}
		CrowdIncrease \{player_status = player4_status}
	elseif ($debug_forcescore = poor)
		CrowdDecrease \{player_status = player1_status}
		CrowdDecrease \{player_status = player2_status}
		CrowdDecrease \{player_status = player3_status}
		CrowdDecrease \{player_status = player4_status}
	endif
	Wait \{1
		seconds}
	repeat 10
endscript

script autotest_next_test 
	change \{autotest_ingame = 0}
	KillSpawnedScript \{name = autotest_update_gpu_info}
	ui_event_wait \{event = menu_back
		data = {
			state = uistate_gameplay
		}}
	change \{current_speedfactor = 1.0}
	setslomo \{$current_speedfactor}
	autotest_write_song_data_to_file
	autotest_reset_gpu_info
	autotest_reset_worst_cam_info
	change autotest_test_index = ($autotest_test_index + 1)
	autotest_get_suite \{suite_num = $autotest_suite_index
		FromSuiteList}
	GetArraySize (<suite_struct>.tests)
	<end_of_tests> = 0
	if ($autotest_test_index = <array_size>)
		<end_of_tests> = 1
		autotest_show_next_suite_screen length = ($autotest_next_suite_screen_time) suite_struct = <suite_struct>
	endif
	<end_of_suites> = 0
	if (<end_of_tests> = 1)
		change autotest_suite_index = ($autotest_suite_index + 1)
		change \{autotest_test_index = 0}
		<next_index> = ($autotest_suite_list [($autotest_suite_index)])
		if (<next_index> = -1)
			<end_of_suites> = 1
		endif
	endif
	if (<end_of_suites> = 0)
		autotest_get_test \{suite_num = $autotest_suite_index
			test_num = $autotest_test_index}
		autotest_set_test_params test_struct = <test_struct>
		autotest_show_next_test_screen length = ($autotest_next_test_screen_time) test_struct = <test_struct>
		restart_song
		KillSpawnedScript \{name = autotest_check_end_time}
		if ($autotest_has_endtime)
			spawnscriptnow \{autotest_check_end_time}
		endif
		change \{autotest_ingame = 1}
		return
	endif
	CreateScreenElement \{parent = root_window
		id = autotest_complete
		type = DescInterface
		desc = 'autotest_complete'}
	if autotest_complete :Desc_ResolveAlias \{name = continue_menu}
		CreateScreenElement {
			type = TextElement
			parent = <resolved_id>
			font = fontgrid_title_A2
			scale = 1.0
			rgba = [250 250 250 250]
			text = qs("\LReturn to Main Menu")
			just = [center center]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose autotest_finished}
			]
		}
		LaunchEvent type = focus target = <resolved_id>
	endif
	autotest_write_end_file
	KillSpawnedScript \{name = autotest_update_fps_info}
	KillSpawnedScript \{name = autotest_check_end_time}
	KillSpawnedScript \{name = autotest_update_gpu_info}
endscript

script autotest_get_suite \{suite_num = 0}
	if ($autotest_suite_name != none)
		<suite_name> = ($autotest_suite_name)
	else
		if GotParam \{FromSuiteList}
			<suite_num> = ($autotest_suite_list [<suite_num>])
		endif
		FormatText checksumname = suite_name 'autotest_suite%n' n = <suite_num>
	endif
	if NOT GlobalExists name = <suite_name> type = Structure
		FormatText TextName = text qs("\L%s does not exist") s = <suite_name> DontAssertForChecksums
		ScriptAssert <text>
	endif
	return suite_struct = $<suite_name> suite_name = <suite_name> resolved_suite_num = <suite_num>
endscript

script autotest_get_test 
	autotest_get_suite suite_num = <suite_num> FromSuiteList
	GetArraySize (<suite_struct>.tests)
	if ($autotest_suite_name = none)
		if (<array_size> < 1)
			ScriptAssert qs("\Lautotest_suite%n does not contain any tests") n = <resolved_suite_num>
		endif
		if (<test_num> >= <array_size>)
			ScriptAssert qs("\Lautotest_suite%n Test %i out of range of array_size of %a") n = <resolved_suite_num> i = <test_num> a = <array_size>
		endif
		if (<test_num> < 0)
			ScriptAssert qs("\Lautotest_suite%n Test %i less than 0") n = <resolved_suite_num> i = <test_num>
		endif
	endif
	return test_struct = (<suite_struct>.tests [<test_num>])
endscript

script autotest_finished 
	change \{autotest_on = 0}
	autotest_destroy_hud
	destroy_autotest_complete
	generic_event_back \{state = UIstate_mainmenu}
endscript

script autotest_update_fps_info 
	autotest_reset_fps_info
	begin
	if ($autotest_on = 0)
		break
	endif
	if NOT ScreenElementExists \{id = loading_screen_container}
		GetSongTimeMs
		if ($autotest_ingame = 1 && $transition_playing = false)
			change autotest_total_frames = ($autotest_total_frames + 1)
			change autotest_average_fps = ($autotest_average_fps + $framerate_value)
			if (($framerate_value) < ($autotest_lowest_fps))
				change autotest_lowest_fps = ($framerate_value)
				change autotest_lowest_fps_time = <time>
				change autotest_lowest_fps_test = ($autotest_test_index)
			endif
			if (($framerate_value) > ($autotest_highest_fps))
				change autotest_highest_fps = ($framerate_value)
				change autotest_highest_fps_time = <time>
				change autotest_highest_fps_test = ($autotest_test_index)
			endif
		endif
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script autotest_reset_fps_info 
	change \{autotest_total_frames = 0}
	change \{autotest_average_fps = 0}
	change \{autotest_highest_fps = 0}
	change \{autotest_highest_fps_time = 0}
	change \{autotest_highest_fps_test = -1}
	change \{autotest_lowest_fps = 120}
	change \{autotest_lowest_fps_time = 0}
	change \{autotest_lowest_fps_time = -1}
endscript

script autotest_check_end_time 
	Wait \{5
		seconds}
	autotest_get_test \{suite_num = $autotest_suite_index
		test_num = $autotest_test_index}
	begin
	if ($autotest_on = 0)
		break
	endif
	GetSongTimeMs
	if ((<time> > (<test_struct>.end_time)) && ($transition_playing = false))
		GuitarEvent_SongWon
		Wait \{10
			seconds}
		autotest_get_test \{suite_num = $autotest_suite_index
			test_num = $autotest_test_index}
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script autotest_update_gpu_info 
	begin
	GetProfileData \{cpu = 6
		name = gpu}
	<Ms> = (<microseconds> / 1000.0)
	GetSongTimeMs
	if (<Ms> < 15.0)
		change autotest_gpu_under_15ms = ($autotest_gpu_under_15ms + 1)
	elseif (<Ms> <= 16.67)
		change autotest_gpu_15ms_to_16ms = ($autotest_gpu_15ms_to_16ms + 1)
	elseif (<Ms> <= 18.0)
		change autotest_gpu_16ms_to_18ms = ($autotest_gpu_16ms_to_18ms + 1)
	elseif (<Ms> <= 20.0)
		change autotest_gpu_18ms_to_20ms = ($autotest_gpu_18ms_to_20ms + 1)
	else
		change autotest_gpu_over_20ms = ($autotest_gpu_over_20ms + 1)
	endif
	if (<Ms> > ($autotest_gpu_spike))
		change autotest_gpu_spike = <Ms>
		change autotest_gpu_spike_time = <time>
	endif
	autotest_update_worst_cam_info Ms = <Ms> time = <time>
	change autotest_gpu_total_frames = ($autotest_gpu_total_frames + 1)
	Wait \{1
		gameframes}
	repeat
endscript

script autotest_reset_gpu_info 
	change \{autotest_gpu_total_frames = 0}
	change \{autotest_gpu_under_15ms = 0}
	change \{autotest_gpu_15ms_to_16ms = 0}
	change \{autotest_gpu_16ms_to_18ms = 0}
	change \{autotest_gpu_18ms_to_20ms = 0}
	change \{autotest_gpu_over_20ms = 0}
	change \{autotest_gpu_spike = 0}
	change \{autotest_gpu_spike_time = 0}
endscript

script autotest_update_worst_cam_info 
	<index> = $autotest_least_worst_cam_index
	if (<Ms> < ($autotest_worst_cam_ms [<index>]))
		return
	endif
	GetArraySize \{$CameraCuts_LastArray}
	<new_cam_name> = qs("\LUnknown")
	if (<array_size> > ($CameraCuts_LastIndex))
		if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex]) name
			FormatText TextName = new_cam_name qs("\L%c") c = ($CameraCuts_LastArray [$CameraCuts_LastIndex].name) DontAssertForChecksums
		elseif StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex]) params
			if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex].params) name
				FormatText TextName = new_cam_name qs("\L%c") c = ($CameraCuts_LastArray [$CameraCuts_LastIndex].params.name) DontAssertForChecksums
			endif
		endif
	endif
	<new_cam_ms> = <Ms>
	<new_cam_time> = <time>
	<match_found> = 0
	<i> = 0
	begin
	if (($autotest_worst_cam_strings [<i>]) = <new_cam_name>)
		<match_found> = 1
		if (($autotest_worst_cam_ms [<i>]) < <new_cam_ms>)
			<index> = <i>
			break
		endif
	endif
	<i> = (<i> + 1)
	repeat $autotest_num_worst_cams
	<new_worst_cam> = 0
	if (<match_found> = 0)
		<temp_array> = $autotest_worst_cam_strings
		SetArrayElement {
			ArrayName = temp_array
			index = <index>
			newvalue = <new_cam_name>
		}
		change autotest_worst_cam_strings = <temp_array>
		<temp_array> = $autotest_worst_cam_ms
		SetArrayElement {
			ArrayName = temp_array
			index = <index>
			newvalue = <new_cam_ms>
		}
		change autotest_worst_cam_ms = <temp_array>
		<temp_array> = $autotest_worst_cam_times
		SetArrayElement {
			ArrayName = temp_array
			index = <index>
			newvalue = <new_cam_time>
		}
		change autotest_worst_cam_times = <temp_array>
		<new_worst_cam> = 1
	endif
	if (<new_worst_cam> = 1)
		<new_cam_index> = 0
		<i> = 1
		begin
		if (($autotest_worst_cam_ms [<i>]) < ($autotest_worst_cam_ms [<new_cam_index>]))
			<new_cam_index> = <i>
		endif
		<i> = (<i> + 1)
		repeat ($autotest_num_worst_cams - 1)
		change autotest_least_worst_cam_index = <new_cam_index>
	endif
endscript

script autotest_reset_worst_cam_info 
	change \{autotest_worst_cam_strings = [
			qs("\Lnull")
			qs("\Lnull")
			qs("\Lnull")
			qs("\Lnull")
			qs("\Lnull")
		]}
	change \{autotest_worst_cam_ms = [
			0.0
			0.0
			0.0
			0.0
			0.0
		]}
	change \{autotest_worst_cam_times = [
			0.0
			0.0
			0.0
			0.0
			0.0
		]}
	change \{autotest_least_worst_cam_index = 0}
endscript

script autotest_toggle_hud 
	change autotest_hud_on = (1 - $autotest_hud_on)
	if ($autotest_hud_on = 0)
		FormatText \{TextName = Hud_Text
			qs("\LToggle HUD: Off")}
	else
		FormatText \{TextName = Hud_Text
			qs("\LToggle HUD: On")}
	endif
	hud_toggle :SE_SetProps text = <Hud_Text>
endscript

script autotest_update_in_game_hud 
	if ($autotest_hud_on)
		autotest_get_suite \{suite_num = $autotest_suite_index
			FromSuiteList}
		autotest_get_test \{suite_num = $autotest_suite_index
			test_num = $autotest_test_index}
		autotest_hud :SE_SetProps test_suite_text = (<suite_struct>.name)
		FormatText \{TextName = test_number
			qs("\L%t")
			t = $autotest_test_index}
		autotest_hud :SE_SetProps test_text = <test_number>
		begin
		if ($autotest_on = 0)
			break
		endif
		if NOT ScreenElementExists \{id = loading_screen_container}
			if ($autotest_ingame = 1)
				GetSongTimeMs
				autotest_format_time time = <time> mode = minutes_seconds_ms
				autotest_hud :SE_SetProps song_time_text = <formatted_time>
			endif
		endif
		Wait \{1
			gameframe}
		repeat
	endif
endscript

script autotest_toggle_turbo_mode 
	change autotest_turbo_mode = (1 - $autotest_turbo_mode)
	if ($autotest_turbo_mode = 0)
		FormatText \{TextName = turbo_mode_text
			qs("\LTurbo Mode: Off")}
	else
		FormatText \{TextName = turbo_mode_text
			qs("\LTurbo Mode: On")}
	endif
	turbo_mode_toggle :SE_SetProps text = <turbo_mode_text>
endscript

script autotest_push_test_suite 
	GetArraySize ($autotest_suite_list)
	if (($autotest_num_suites) = <array_size>)
		return
	endif
	<temp_array> = ($autotest_suite_list)
	SetArrayElement {ArrayName = temp_array index = ($autotest_num_suites) newvalue = <suite_num>}
	change autotest_suite_list = <temp_array>
	autotest_get_suite suite_num = <suite_num>
	FormatText checksumname = suite_id 'suite_%s_at_%i' s = <suite_num> i = ($autotest_num_suites)
	CreateScreenElement {
		type = TextElement
		id = <suite_id>
		parent = test_suite_list
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = (<suite_struct>.name)
		just = [left top]
		z_priority = 100.0
	}
	FormatText TextName = text qs("\Lsuite_%s_at_%i") s = <suite_num> i = ($autotest_num_suites)
	change autotest_num_suites = ($autotest_num_suites + 1)
endscript

script autotest_pop_test_suite 
	if (($autotest_num_suites) = 0)
		return
	endif
	<temp_array> = ($autotest_suite_list)
	<index> = ($autotest_num_suites - 1)
	<suite_num> = ($autotest_suite_list [<index>])
	SetArrayElement {ArrayName = temp_array index = <index> newvalue = -1}
	change autotest_suite_list = <temp_array>
	change autotest_num_suites = ($autotest_num_suites - 1)
	FormatText checksumname = suite_id 'suite_%s_at_%i' s = <suite_num> i = ($autotest_num_suites)
	if ScreenElementExists id = <suite_id>
		DestroyScreenElement id = <suite_id>
	endif
	FormatText TextName = text qs("\Lsuite_%s_at_%i") s = <suite_num> i = ($autotest_num_suites)
	if ScreenElementExists \{id = test_suite_list}
		DestroyScreenElement \{id = test_suite_list}
	endif
	autotest_create_suite_list
endscript

script autotest_populate_test_suite_list 
	GetArraySize ($autotest_suite_list)
	<i> = 0
	begin
	if (($autotest_suite_list [<i>]) = -1)
		break
	endif
	autotest_get_suite suite_num = <i> FromSuiteList
	FormatText checksumname = suite_id 'suite_%s_at_%i' s = <suite_num> i = <i>
	CreateScreenElement {
		type = TextElement
		id = <suite_id>
		parent = test_suite_list
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = (<suite_struct>.name)
		just = [left top]
		z_priority = 100.0
	}
	<i> = (<i> + 1)
	repeat <array_size>
endscript

script autotest_show_next_test_screen \{length = 5}
	if (<length> <= 0)
		return
	endif
	<save_speed> = ($current_speedfactor)
	change \{current_speedfactor = 1.0}
	setslomo \{$current_speedfactor}
	CreateScreenElement \{parent = root_window
		id = autotest_transition
		type = DescInterface
		desc = 'autotest_transition'}
	autotest_transition_set_props test_struct = <test_struct> autotest_transition = <autotest_transition> Speed = <save_speed>
	if ($autotest_turbo_mode = 1)
		<wait_time> = 0.5
	else
		<wait_time> = 1.0
	endif
	<cur_count> = <length>
	begin
	FormatText TextName = countdown_text qs("\L%c") c = <cur_count>
	autotest_transition :SE_SetProps countdown_text = <countdown_text>
	Wait \{1
		seconds}
	<cur_count> = (<cur_count> - 1)
	repeat <length>
	if ScreenElementExists \{id = autotest_transition}
		DestroyScreenElement \{id = autotest_transition}
	endif
	change current_speedfactor = <save_speed>
	setslomo \{$current_speedfactor}
endscript

script autotest_show_next_suite_screen \{length = 5}
	if (<length> <= 0)
		return
	endif
	<save_speed> = ($current_speedfactor)
	change \{current_speedfactor = 1.0}
	setslomo \{$current_speedfactor}
	CreateScreenElement \{parent = root_window
		id = autotest_suite_transition
		type = DescInterface
		desc = 'autotest_suite_transition'}
	autotest_suite_transition_set_props suite_struct = <suite_struct>
	<cur_count> = <length>
	begin
	FormatText TextName = countdown_text qs("\L%c") c = <cur_count>
	autotest_suite_transition :SE_SetProps countdown_text = <countdown_text>
	Wait \{1
		seconds}
	<cur_count> = (<cur_count> - 1)
	repeat <length>
	if ScreenElementExists \{id = autotest_suite_transition}
		DestroyScreenElement \{id = autotest_suite_transition}
	endif
	change current_speedfactor = <save_speed>
	setslomo \{$current_speedfactor}
endscript

script autotest_format_time \{mode = minutes_seconds_ms}
	<sign> = qs("\L")
	if (<time> < 0)
		<time> = (<time> * -1)
		<sign> = qs("\L-")
	endif
	<pure_seconds> = (<time> / 1000)
	CastToInteger \{pure_seconds}
	Mod a = <pure_seconds> b = 60
	<seconds> = <Mod>
	<pure_minutes> = (<pure_seconds> / 60)
	Mod a = <pure_minutes> b = 60
	<minutes> = <Mod>
	<hours> = ((<pure_seconds> / 60) / 60)
	<pure_ms> = <time>
	CastToInteger \{pure_ms}
	Mod a = <pure_ms> b = 1000
	<Ms> = <Mod>
	if (<Ms> < 10)
		FormatText TextName = ms_text qs("\L00%m") m = <Ms>
	elseif (<Ms> < 100)
		FormatText TextName = ms_text qs("\L0%m") m = <Ms>
	else
		FormatText TextName = ms_text qs("\L%m") m = <Ms>
	endif
	if (<seconds> < 10)
		FormatText TextName = seconds_text qs("\L0%s") s = <seconds>
	else
		FormatText TextName = seconds_text qs("\L%s") s = <seconds>
	endif
	if (<minutes> < 10)
		FormatText TextName = minutes_text qs("\L0%m") m = <minutes>
	else
		FormatText TextName = minutes_text qs("\L%m") m = <minutes>
	endif
	if (<hours> < 10)
		FormatText TextName = hours_text qs("\L0%h") h = <hours>
	else
		FormatText TextName = hours_text qs("\L%h") h = <hours>
	endif
	switch (<mode>)
		case minutes_seconds_ms
		FormatText TextName = formatted_time qs("\L%n%m:%s.%f") n = <sign> m = <minutes_text> s = <seconds_text> f = <ms_text>
		case hours_minutes_seconds
		FormatText TextName = formatted_time qs("\L%n%h:%m:%s") n = <sign> h = <hours_text> m = <minutes_text> s = <seconds_text>
		case hours_minutes_seconds_ms
		FormatText TextName = formatted_time qs("\L%n%h:%m:%s.%f") n = <sign> h = <hours_text> m = <minutes_text> s = <seconds_text> f = <ms_text>
		default
		FormatText \{TextName = formatted_time
			qs("\L")}
	endswitch
	return formatted_time = <formatted_time>
endscript

script autotest_write_song_data_to_file 
	autotest_get_test \{suite_num = $autotest_suite_index
		test_num = $autotest_test_index}
	autotest_get_suite \{suite_num = $autotest_suite_index
		FromSuiteList}
	FormatText TextName = filename '%s_test%t_stats' s = <suite_name> t = ($autotest_test_index) DoNotResolve DontAssertForChecksums
	TextOutputStart
	if ($autotest_log_gpu = 1)
		<gpu_under_15ms> = (($autotest_gpu_under_15ms) * 1.0)
		<gpu_15ms16mss> = (($autotest_gpu_15ms_to_16ms) * 1.0)
		<gpu_16ms18ms> = (($autotest_gpu_16ms_to_18ms) * 1.0)
		<gpu_18ms20ms> = (($autotest_gpu_18ms_to_20ms) * 1.0)
		<gpu_over_20ms> = (($autotest_gpu_over_20ms) * 1.0)
		<percent_under_15ms> = ((<gpu_under_15ms> / ($autotest_gpu_total_frames)) * 100)
		<percent_15ms16ms> = ((<gpu_15ms16mss> / ($autotest_gpu_total_frames)) * 100)
		<percent_16ms18ms> = ((<gpu_16ms18ms> / ($autotest_gpu_total_frames)) * 100)
		<percent_18ms20ms> = ((<gpu_18ms20ms> / ($autotest_gpu_total_frames)) * 100)
		<percent_over_20ms> = ((<gpu_over_20ms> / ($autotest_gpu_total_frames)) * 100)
		FormatText TextName = text qs("\L%p, %f, %t, under 15ms") p = <percent_under_15ms> f = ($autotest_gpu_under_15ms) t = ($autotest_gpu_total_frames)
		TextOutput text = <text>
		FormatText TextName = text qs("\L%p, %f, %t, between 15ms and 16.67ms") p = <percent_15ms16ms> f = ($autotest_gpu_15ms_to_16ms) t = ($autotest_gpu_total_frames)
		TextOutput text = <text>
		FormatText TextName = text qs("\L%p, %f, %t, between 16.67ms and 18ms") p = <percent_16ms18ms> f = ($autotest_gpu_16ms_to_18ms) t = ($autotest_gpu_total_frames)
		TextOutput text = <text>
		FormatText TextName = text qs("\L%p, %f, %t, between 18ms and 20ms") p = <percent_18ms20ms> f = ($autotest_gpu_18ms_to_20ms) t = ($autotest_gpu_total_frames)
		TextOutput text = <text>
		FormatText TextName = text qs("\L%p, %f, %t, over 20ms") p = <percent_over_20ms> f = ($autotest_gpu_over_20ms) t = ($autotest_gpu_total_frames)
		TextOutput text = <text>
		autotest_format_time time = ($autotest_gpu_spike_time) mode = minutes_seconds_ms
		FormatText TextName = text qs("\LGPU Max = %gms at %t") g = ($autotest_gpu_spike) t = <formatted_time>
		TextOutput text = <text>
		TextOutput \{text = qs("\L")}
		<i> = 0
		begin
		autotest_format_time time = ($autotest_worst_cam_times [<i>]) mode = minutes_seconds_ms
		FormatText TextName = text qs("\L%c : %mms at %t") c = ($autotest_worst_cam_strings [<i>]) m = ($autotest_worst_cam_ms [<i>]) t = <formatted_time>
		TextOutput text = <text>
		<i> = (<i> + 1)
		repeat $autotest_num_worst_cams
		TextOutput \{text = qs("\L")}
	endif
	<song_struct> = ($permanent_songlist_props.(<test_struct>.song))
	<song_string> = (<song_struct>.title)
	FormatText TextName = text qs("\L%s") s = <song_string>
	TextOutput text = <text>
	<venue_struct> = ($LevelZones.(<test_struct>.venue))
	<venue_string> = (<venue_struct>.title)
	FormatText TextName = text qs("\L%v") v = <venue_string>
	TextOutput text = <text>
	<player> = 1
	begin
	FormatText checksumname = player_part 'p%n_part' n = <player>
	<part_string> = ($autotest_part_strings.(<test_struct>.<player_part>))
	TextOutput text = <part_string>
	<player> = (<player> + 1)
	repeat 4
	<player> = 1
	begin
	FormatText checksumname = player_diff 'p%n_difficulty' n = <player>
	<diff_string> = ($autotest_difficulty_strings.(<test_struct>.<player_diff>))
	TextOutput text = <diff_string>
	<player> = (<player> + 1)
	repeat 4
	FormatText TextName = text qs("\L%s") s = (<test_struct>.start_power_always_on)
	TextOutput text = <text>
	<mode_string> = ($autotest_game_mode_names.(<test_struct>.game_mode))
	TextOutput text = <mode_string>
	FormatText TextName = text qs("\L%w") w = (<test_struct>.worst_case_band)
	TextOutput text = <text>
	if StructureContains Structure = <test_struct> start_time
		FormatText TextName = text qs("\L%s") s = (<test_struct>.start_time)
	else
		FormatText \{TextName = text
			qs("\L%s")
			s = qs("\LBeginning")}
	endif
	TextOutput text = <text>
	if StructureContains Structure = <test_struct> end_time
		FormatText TextName = text qs("\L%e") e = (<test_struct>.end_time)
	else
		FormatText \{TextName = text
			qs("\L%e")
			e = qs("\LEnd")}
	endif
	TextOutput text = <text>
	if StructureContains Structure = <test_struct> speed_factor
		FormatText TextName = text qs("\L%s") s = (<test_struct>.speed_factor)
	else
		FormatText \{TextName = text
			qs("\L%s")
			s = 1.0}
	endif
	TextOutput text = <text>
	TextOutputEnd output_text filename = <filename>
endscript

script autotest_write_end_file 
	autotest_get_suite \{suite_num = $autotest_suite_index}
	FormatText \{TextName = filename
		'autotest_complete'}
	TextOutputStart
	TextOutput \{text = qs("\LTEST SUITES RUN:")}
	TextOutput \{text = qs("\L")}
	if ($autotest_suite_name = none)
		GetArraySize ($autotest_suite_list)
		<i> = 0
		begin
		if (($autotest_suite_list [<i>]) = -1)
			break
		endif
		autotest_get_suite suite_num = <i> FromSuiteList
		FormatText TextName = text qs("\L%s") s = <suite_name> DoNotResolve DontAssertForChecksums
		TextOutput text = <text>
		<i> = (<i> + 1)
		repeat <array_size>
	else
		autotest_get_suite
		FormatText TextName = text qs("\L%s") s = <suite_name> DoNotResolve DontAssertForChecksums
		TextOutput text = <text>
	endif
	Output_Camera_Sync_Warnings
	TextOutputEnd output_text filename = <filename>
endscript

script autotest_autolaunch \{suite_index = -1
		suite_name = none
		hud_on = 0
		log_gpu = 0}
	change autotest_log_gpu = <log_gpu>
	if ((<suite_index> < 0) && (suite_name = none))
		ScriptAssert \{qs("\LNo valid test suite passed to script")}
	endif
	spawnscriptnow autotest_autolaunch_delay params = {suite_index = <suite_index> suite_name = <suite_name> hud_on = <hud_on>}
endscript

script autotest_autolaunch_delay 
	change \{show_gpu_time = 1}
	change \{skip_signin = 1}
	change \{autotest_on = 1}
	change autotest_suite_index = <suite_index>
	change autotest_suite_name = <suite_name>
	change \{autotest_test_index = 0}
	change autotest_hud_on = <hud_on>
	change \{autolaunch_startnow = 0}
	change \{autotest_restore_globals = 1}
	begin
	if ScreenElementExists \{id = current_menu}
		break
	endif
	Wait \{1
		gameframe}
	repeat
	SetPlayerInfo \{1
		bot_play = 1}
	SetPlayerInfo \{2
		bot_play = 1}
	SetPlayerInfo \{3
		bot_play = 1}
	SetPlayerInfo \{4
		bot_play = 1}
	if ScreenElementExists \{id = current_menu}
		LaunchEvent \{type = unfocus
			target = current_menu}
	endif
	if ScreenElementExists \{id = MotdInterface}
		LaunchEvent \{type = unfocus
			target = MotdInterface}
	endif
	autotest_start \{autolaunch = 1}
endscript
