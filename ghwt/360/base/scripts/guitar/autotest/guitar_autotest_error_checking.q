
script autotest_check_test_params 
	autotest_get_test suite_num = <suite_num> test_num = <test_num>
	<suite_num> = ($autotest_suite_list [<suite_num>])
	autotest_check_song song = (<test_struct>.song) suite_num = <suite_num> test_num = <test_num>
	if (<check_song_passed> = 0)
		return \{check_passed = 0}
	endif
	autotest_check_venue venue = (<test_struct>.venue) suite_num = <suite_num> test_num = <test_num>
	if (<check_venue_passed> = 0)
		return \{check_passed = 0}
	endif
	autotest_check_part_names test_struct = <test_struct> suite_num = <suite_num> test_num = <test_num>
	if (<check_part_names_passed> = 0)
		return \{check_passed = 0}
	endif
	autotest_check_difficulty_names test_struct = <test_struct> suite_num = <suite_num> test_num = <test_num>
	if (<check_difficulty_names_passed> = 0)
		return \{check_passed = 0}
	endif
	autotest_check_mode game_mode = (<test_struct>.game_mode) suite_num = <suite_num> test_num = <test_num>
	if (<check_mode_passed> = 0)
		return \{check_passed = 0}
	endif
	autotest_check_part_combos versus = <versus> suite_num = <suite_num> test_num = <test_num>
	if (<check_part_combos_passed> = 0)
		return \{check_passed = 0}
	endif
	autotest_check_start_end_times test_struct = <test_struct> suite_num = <suite_num> test_num = <test_num>
	if (<check_start_end_times_passed> = 0)
		return \{check_passed = 0}
	endif
	autotest_check_force_score test_struct = <test_struct> suite_num = <suite_num> test_num = <test_num>
	if (<check_force_score_passed> = 0)
		return \{check_passed = 0}
	endif
	return \{check_passed = 1}
endscript

script autotest_check_song 
	GetArraySize \{$gh_songlist}
	<found_match> = 0
	<i> = 0
	begin
	if (<song> = ($gh_songlist [<i>]))
		<found_match> = 1
		return \{check_song_passed = 1}
	endif
	<i> = (<i> + 1)
	repeat <array_size>
	SoftAssert qs("\Lautotest_suite%s : test%t - Song is not recognized, check spelling") s = <suite_num> t = <test_num>
	return \{check_song_passed = 0}
endscript

script autotest_check_venue 
	GetArraySize \{$LevelZoneArray}
	<found_match> = 0
	<i> = 0
	begin
	if (<venue> = ($LevelZoneArray [<i>]))
		<found_match> = 1
		return \{check_venue_passed = 1}
	endif
	<i> = (<i> + 1)
	repeat <array_size>
	SoftAssert qs("\Lautotest_suite%s : test%t - Venue is not recognized, check spelling") s = <suite_num> t = <test_num>
	return \{check_venue_passed = 0}
endscript

script autotest_check_part_names 
	<player> = 1
	begin
	FormatText checksumname = player_part 'p%n_part' n = <player>
	<part> = (<test_struct>.<player_part>)
	if NOT StructureContains Structure = $autotest_part_strings <part>
		SoftAssert qs("\Lautotest_suite%s : test%t - p%n_part not recognized") s = <suite_num> t = <test_num> n = <player>
		return \{check_part_names_passed = 0}
	endif
	<player> = (<player> + 1)
	repeat 4
	return \{check_part_names_passed = 1}
endscript

script autotest_check_difficulty_names 
	<player> = 1
	begin
	FormatText checksumname = player_diff 'p%n_difficulty' n = <player>
	<diff> = (<test_struct>.<player_diff>)
	if NOT StructureContains Structure = $autotest_difficulty_strings <diff>
		SoftAssert qs("\Lautotest_suite%s : test%t - p%n_difficulty not recognized") s = <suite_num> t = <test_num> n = <player>
		return \{check_difficulty_names_passed = 0}
	endif
	<player> = (<player> + 1)
	repeat 4
	return \{check_difficulty_names_passed = 1}
endscript

script autotest_check_mode 
	<versus> = 0
	switch (<game_mode>)
		case p1_career
		SoftAssert qs("\Lautotest_suite%s : test%t - Career mode currently not supported in autotesting") s = <suite_num> t = <test_num>
		return \{check_mode_passed = 0}
		if NOT ($current_num_players = 1)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players for p1_career") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 0
		case p1_quickplay
		if NOT ($current_num_players = 1)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players for p1_quickplay") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 0
		case p2_battle
		if NOT ($current_num_players = 2)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players for p2_battle") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 1
		case p2_career
		SoftAssert qs("\Lautotest_suite%s : test%t - Career mode currently not supported in autotesting") s = <suite_num> t = <test_num>
		return \{check_mode_passed = 0}
		if NOT ($current_num_players = 2)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players for p2_career") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 0
		case p2_coop
		if NOT ($current_num_players = 2)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players for p2_coop") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 0
		case p2_faceoff
		if NOT ($current_num_players = 2)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players for p2_faceoff") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 1
		case p2_pro_faceoff
		if NOT ($current_num_players = 2)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players defined for p2_pro_faceoff") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 1
		case p2_quickplay
		if NOT ($current_num_players = 2)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players for p2_quickplay") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 0
		case p3_career
		SoftAssert qs("\Lautotest_suite%s : test%t - Career mode currently not supported in autotesting") s = <suite_num> t = <test_num>
		return \{check_mode_passed = 0}
		if NOT ($current_num_players = 3)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players for p3_career") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 0
		case p3_quickplay
		if NOT ($current_num_players = 3)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players for p3_quickplay") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 0
		case p4_career
		SoftAssert qs("\Lautotest_suite%s : test%t - Career mode currently not supported in autotesting") s = <suite_num> t = <test_num>
		return \{check_mode_passed = 0}
		if NOT ($current_num_players = 4)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players for p4_career") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 0
		case p4_pro_faceoff
		if NOT ($current_num_players = 4)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players for p4_pro_faceoff") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 1
		case p4_quickplay
		if NOT ($current_num_players = 4)
			SoftAssert qs("\Lautotest_suite%s : test%t - Incorrect number of players for p4_quickplay") s = <suite_num> t = <test_num>
			return \{check_mode_passed = 0}
		endif
		<versus> = 0
		default
		SoftAssert qs("\Lautotest_suite%s : test%t - Game Mode not recognized, check spelling") s = <suite_num> t = <test_num>
		return \{check_mode_passed = 0}
	endswitch
	return check_mode_passed = 1 versus = <versus>
endscript

script autotest_check_part_combos 
	if (<versus> = 1)
		<i> = 1
		begin
		<j> = (<i> + 1)
		begin
		autotest_get_suite suite_num = <suite_num>
		<test_struct> = (<suite_struct>.tests [<test_num>])
		FormatText checksumname = playerA_part 'p%n_part' n = <i>
		FormatText checksumname = playerB_part 'p%n_part' n = <j>
		if NOT (<test_struct>.<playerA_part> = none || <test_struct>.<playerB_part> = none)
			if NOT ((<test_struct>.<playerA_part>) = (<test_struct>.<playerB_part>))
				SoftAssert qs("\Lautotest_suite%s : test%t - All player parts must be identical in faceoff/pro-faceoff modes") s = <suite_num> t = <test_num>
				return \{check_part_combos_passed = 0}
			endif
		endif
		<j> = (<j> + 1)
		repeat (3 - (<i> - 1))
		<i> = (<i> + 1)
		repeat 3
		return \{check_part_combos_passed = 1}
	endif
	<i> = 1
	begin
	<j> = (<i> + 1)
	begin
	autotest_get_suite suite_num = <suite_num>
	<test_struct> = (<suite_struct>.tests [<test_num>])
	FormatText checksumname = playerA_part 'p%n_part' n = <i>
	FormatText checksumname = playerB_part 'p%n_part' n = <j>
	if NOT (<test_struct>.<playerA_part> = none || <test_struct>.<playerB_part> = none)
		if ((<test_struct>.<playerA_part>) = (<test_struct>.<playerB_part>))
			SoftAssert qs("\Lautotest_suite%s : test%t - All player parts must be unique in quickplay/career/coop modes") s = <suite_num> t = <test_num>
			return \{check_part_combos_passed = 0}
		endif
	endif
	<j> = (<j> + 1)
	repeat (3 - (<i> - 1))
	<i> = (<i> + 1)
	repeat 3
	return \{check_part_combos_passed = 1}
endscript

script autotest_check_start_end_times 
	if StructureContains Structure = <test_struct> start_time
		if (<test_struct>.start_time < 0)
			SoftAssert qs("\Lautotest_suite%s : test%t - start_time must be 0 or greater") s = <suite_num> t = <test_num>
			return \{check_start_end_times_passed = 0}
		endif
	endif
	if StructureContains Structure = <test_struct> end_time
		if (<test_struct>.end_time < 0)
			SoftAssert qs("\Lautotest_suite%s : test%t - end_time must be 0 or greater") s = <suite_num> t = <test_num>
			return \{check_start_end_times_passed = 0}
		endif
		if StructureContains Structure = <test_struct> start_time
			if ((<test_struct>.end_time) < (<test_struct>.start_time))
				SoftAssert qs("\Lautotest_suite%s : test%t - start_time must not exceed end_time") s = <suite_num> t = <test_num>
				return \{check_start_end_times_passed = 0}
			endif
		endif
	endif
	return \{check_start_end_times_passed = 1}
endscript

script autotest_check_force_score 
	if StructureContains Structure = <test_struct> force_score
		if (<test_struct>.force_score != off &&
				<test_struct>.force_score != poor &&
				<test_struct>.force_score != medium &&
				<test_struct>.force_score != good)
			SoftAssert qs("\Lautotest_suite%s : test%t - force_score value unrecognized") s = <suite_num> t = <test_num>
			return \{check_force_score_passed = 0}
		endif
	endif
	return \{check_force_score_passed = 1}
endscript
