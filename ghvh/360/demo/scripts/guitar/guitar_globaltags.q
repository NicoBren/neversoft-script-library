debug_saves = 0
globaltag_checksum = empty

script reset_globaltags savegame = ($primary_controller)
	globaltag_checksum = initial_v040
	lockglobaltags \{off}
	clearglobaltags savegame = <savegame>
	stars
	printf \{'I take a long time... I need to be fixed'}
	stars
	printf 'Resetting GlobalTags for savegame %d' d = <savegame>
	setglobaltags savegame = <savegame> last_singleplayer_character params = {last_singleplayer_character = none}
	setglobaltags savegame = <savegame> last_band_characters params = {
		last_band_characters = [none none none none]
	}
	setglobaltags savegame = <savegame> last_h2h_characters params = {
		last_h2h_characters = [none none]
	}
	setglobaltags savegame = <savegame> last_band_xbox_character params = {last_band_xbox_character = none}
	setglobaltags savegame = <savegame> last_h2h_xbox_character params = {last_h2h_xbox_character = none}
	setupsongtags savegame = <savegame> globaltag_checksum = <globaltag_checksum> part = 'guitar'
	setupsongtags savegame = <savegame> globaltag_checksum = <globaltag_checksum> part = 'bass'
	setupsongtags savegame = <savegame> globaltag_checksum = <globaltag_checksum> part = 'drum'
	setupsongtags savegame = <savegame> globaltag_checksum = <globaltag_checksum> part = 'vocals' topscores = ($vocals_topscores)
	setupsongtags savegame = <savegame> globaltag_checksum = <globaltag_checksum> part = 'band'
	setup_venuetags savegame = <savegame> globaltag_checksum = <globaltag_checksum>
	get_progression_globals \{career_guitar}
	setup_gigtags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = guitar
	get_progression_globals \{career_bass}
	setup_gigtags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = bass
	get_progression_globals \{career_drum}
	setup_gigtags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = drum
	get_progression_globals \{career_vocals}
	setup_gigtags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = vocals
	get_progression_globals \{career_band}
	setup_gigtags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = band
	get_progression_globals \{career_guitar}
	setup_setlisttags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = guitar
	get_progression_globals \{career_bass}
	setup_setlisttags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = bass
	get_progression_globals \{career_drum}
	setup_setlisttags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = drum
	get_progression_globals \{career_vocals}
	setup_setlisttags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = vocals
	get_progression_globals \{career_band}
	setup_setlisttags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = band
	setup_quickplay_song_tags savegame = <savegame> allsongs
	get_progression_globals \{career_guitar}
	setup_quickplay_song_tags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = guitar
	get_progression_globals \{career_bass}
	setup_quickplay_song_tags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = bass
	get_progression_globals \{career_drum}
	setup_quickplay_song_tags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = drum
	get_progression_globals \{career_vocals}
	setup_quickplay_song_tags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = vocals
	get_progression_globals \{career_band}
	setup_quickplay_song_tags savegame = <savegame> setlist_songs = <tier_global> globaltag_checksum = <globaltag_checksum> part = band
	setup_bandtags savegame = <savegame> globaltag_checksum = <globaltag_checksum>
	setup_user_option_tags savegame = <savegame> globaltag_checksum = <globaltag_checksum>
	setup_training_tags savegame = <savegame> globaltag_checksum = <globaltag_checksum>
	setup_unlocks savegame = <savegame> globaltag_checksum = <globaltag_checksum>
	setup_custom_character_tags savegame = <savegame> globaltag_checksum = <globaltag_checksum>
	setup_online_tags savegame = <savegame> globaltag_checksum = <globaltag_checksum>
	reset_transient_tags savegame = <savegame>
	setup_achievement_tags savegame = <savegame> globaltag_checksum = <globaltag_checksum>
	setup_cas_helper_tags savegame = <savegame> globaltag_checksum = <globaltag_checksum>
	setup_saved_instrument_tags savegame = <savegame> globaltag_checksum = <globaltag_checksum>
	jam_reset_controller_directory_listing savegame = <savegame>
	change \{ghtunes_verified = 0}
	restore_globals_from_global_tags savegame = <savegame> callmonitorcontrollerstates = 0
	setglobaltags savegame = <savegame> globaltag_checksum params = {globaltag_checksum = <globaltag_checksum>}
	change globaltag_checksum = <globaltag_checksum>
	setglobaltags savegame = <savegame> check_guid params = {user_id0 = -1 user_id1 = -1}
	setarrayelement arrayname = globaltags_to_invalidate globalarray index = <savegame> newvalue = 0
	clearachievementcache controller_id = <savegame>
	lockglobaltags
endscript

script reset_globaltags_all 
	reset_globaltags \{savegame = 0}
	get_num_globaltag_sets
	if (<num_globaltag_sets> > 1)
		savegame = 1
		begin
		printf 'Copying GlobalTags for savegame %d' d = <savegame>
		clearglobaltags savegame = <savegame>
		copyglobaltags from = 0 to = <savegame>
		jam_reset_controller_directory_listing savegame = <savegame>
		setarrayelement arrayname = globaltags_to_invalidate globalarray index = <savegame> newvalue = 0
		<savegame> = (<savegame> + 1)
		repeat (<num_globaltag_sets> - 1)
	endif
endscript

script init_globaltags 
	max_globaltag_structs = 19000
	pushmemprofile \{'globaltags'}
	getarraysize ($instrument_progression_list)
	instrument_size = <array_size>
	initglobaltags max_sets = <globaltag_sets> max_structs = <max_globaltag_structs> max_cars = ($max_num_create_a_rockers)
	popmemprofile
endscript

script get_num_globaltag_sets 
	getmaxplayers
	if isps3
		return \{num_globaltag_sets = 1}
	else
		return num_globaltag_sets = <max_players>
	endif
endscript
globaltags_to_invalidate = [
	0
	0
	0
	0
]

script mark_globaltags_to_invalidate \{savegame = 0}
	setarrayelement arrayname = globaltags_to_invalidate globalarray index = <savegame> newvalue = 1
endscript

script invalidate_globaltags 
	savegame = 0
	begin
	if ($globaltags_to_invalidate [<savegame>])
		reset_globaltags savegame = <savegame>
	endif
	savegame = (<savegame> + 1)
	repeat 4
endscript

script set_globaltag_guid controller = ($primary_controller)
	if isxenon
		if islocallysignedin controller = <controller>
			netsessionfunc func = get_user_id params = {controller_index = <controller>}
			user_id0 = (<user_id> [0])
			user_id1 = (<user_id> [1])
		else
			user_id0 = 0
			user_id1 = 0
		endif
		setglobaltags controller = <controller> check_guid params = {user_id0 = <user_id0> user_id1 = <user_id1>}
	else
		setglobaltags controller = <controller> check_guid params = {user_id0 = 1 user_id1 = 1}
	endif
endscript

script check_globaltag_guid controller = ($primary_controller)
	if isxenon
		printf qs(0xb006a6d7) i = <controller>
		if islocallysignedin controller = <controller>
			printf \{qs(0x3659a8f5)}
			current_user_id0 = 0
			current_user_id1 = 0
		else
			printf \{qs(0x0177c50b)}
			netsessionfunc func = get_user_id params = {controller_index = <controller>}
			current_user_id0 = (<user_id> [0])
			current_user_id1 = (<user_id> [1])
		endif
		getglobaltags controller = <controller> check_guid
		if (<user_id0> = <current_user_id0>)
			if (<user_id1> = <current_user_id1>)
				printf \{qs(0x2f83670c)}
				return \{true}
			endif
		endif
		printf \{qs(0xd82ab062)}
		return \{false}
	else
		getglobaltags controller = <controller> check_guid
		if (<user_id0> = 1)
			if (<user_id1> = 1)
				printf \{qs(0x2f83670c)}
				return \{true}
			endif
		endif
		return \{false}
	endif
endscript
default_topscores = [
	{
		scores = [
			19737
			18164
			17809
		]
	}
	{
		scores = [
			19737
			18164
			17809
		]
	}
	{
		scores = [
			46322
			41217
			39989
		]
	}
	{
		scores = [
			54046
			49787
			41256
		]
	}
	{
		scores = [
			64289
			61986
			55423
		]
	}
]
vocals_topscores = [
	{
		scores = [
			5239
			3782
			2457
		]
	}
	{
		scores = [
			11363
			8744
			5521
		]
	}
	{
		scores = [
			16963
			12634
			8628
		]
	}
	{
		scores = [
			22008
			17523
			12241
		]
	}
	{
		scores = [
			25326
			20546
			15136
		]
	}
]
default_songtags_with_difficulty = {
	tr_stars = [
		0
		0
		0
	]
	bestscore = 0
	beststars = 0
	achievement_gold_star = 0
	tr_percent100 = 0
	double_bass_complete = 0
	ach_double_bass_complete = 0
	stars = 0
	score = 0
	percent100 = 0
	unlocked = 0
}

script setup_custom_character_tags 
	globaltag_createarray globaltag_checksum = <globaltag_checksum> savegame = <savegame> array_name = custom_profiles max_size = ($max_num_create_a_rockers) packtype = createarocker
	getarraysize \{$preset_musician_profiles_modifiable}
	globaltag_createarray globaltag_checksum = <globaltag_checksum> savegame = <savegame> array_name = preset_profiles max_size = <array_size> packtype = presetcars start_full
	i = 0
	begin
	globaltag_set_preset_musician savegame = <savegame> index = <i> appearance = ($preset_musician_profiles_modifiable [<i>].appearance)
	globaltag_checksum = (<globaltag_checksum> + ($preset_musician_profiles_modifiable [<i>].name))
	i = (<i> + 1)
	repeat <array_size>
	return globaltag_checksum = <globaltag_checksum>
endscript
default_songtags = {
	available_on_other_client = 0
}

script get_formatted_songname \{part = 'guitar'}
	formattext checksumname = songname '%s%p%d' s = (<song_prefix>) p = <part> d = <difficulty_text_nl> addtostringlookup = true
	return songname = <songname>
endscript

script get_formatted_songname_for_jam_mode 
	if NOT gotparam \{part}
		part = 'guitar'
	endif
	formattext textname = songname '%s_%p_%d_quickplay' s = (<song_prefix>) p = <part> d = <difficulty_text_nl> addtostringlookup = true
	formattext checksumname = songname2 '%s' s = <songname> addtostringlookup = true
	return songname = <songname2>
endscript
default_venuetags = {
	unlocked = 0
}
cheat_venuetags = {
	unlocked = 1
}

script setup_venuetags 
	setup_generalvenuetags savegame = <savegame>
	getarraysize \{$levelzonearray}
	level_zone_array_size = <array_size>
	index = 0
	begin
	getarraysize \{$instrument_progression_list}
	instrument_size = <array_size>
	instrument_index = 0
	begin
	if gotparam \{cheat}
		venue_tags = $cheat_venuetags
	else
		venue_tags = $default_venuetags
	endif
	get_levelzonearray_checksum index = <index>
	if NOT structurecontains structure = ($levelzones.<level_checksum>) debug_only
		get_progression_globals ($instrument_progression_list [<instrument_index>])
		formattext {
			checksumname = venue_checksum
			'%s_%i'
			s = ($levelzones.<level_checksum>.name)
			i = ($instrument_list.($<tier_global>.part).text_nl)
			addtostringlookup = true
		}
		if structurecontains structure = ($gh4_3_intro_tier) unlocked_levels
			getarraysize ($gh4_3_intro_tier.unlocked_levels)
			array_count = 0
			begin
			if (($gh4_3_intro_tier.unlocked_levels [<array_count>]) = <level_checksum>)
				venue_tags = {<venue_tags> unlocked = 1}
				break
			endif
			array_count = (<array_count> + 1)
			repeat <array_size>
		endif
		setglobaltags savegame = <savegame> <venue_checksum> params = {(<venue_tags>)} packtype = unlockedtags
		if gotparam \{globaltag_checksum}
			<globaltag_checksum> = (<globaltag_checksum> + <venue_checksum>)
		endif
	endif
	<instrument_index> = (<instrument_index> + 1)
	repeat <instrument_size>
	<index> = (<index> + 1)
	repeat <level_zone_array_size>
	if gotparam \{globaltag_checksum}
		return globaltag_checksum = <globaltag_checksum>
	endif
endscript

script setup_generalvenuetags 
	get_levelzonearray_size
	level_size = <array_size>
	array_count = 0
	begin
	get_levelzonearray_checksum index = <array_count>
	if NOT structurecontains structure = ($levelzones.<level_checksum>) debug_only
		unlocked = 0
		formattext checksumname = venue_checksum 'venue_%s' s = ($levelzones.<level_checksum>.name) addtostringlookup = true
		if is_levelzone_downloaded level_checksum = <level_checksum>
			if (<download> = 1)
				unlocked = 1
			endif
		else
		endif
		if structurecontains structure = ($gh4_3_intro_tier) unlocked_levels
			getarraysize ($gh4_3_intro_tier.unlocked_levels)
			i = 0
			begin
			if (($gh4_3_intro_tier.unlocked_levels [<i>]) = <level_checksum>)
				unlocked = 1
				break
			endif
			i = (<i> + 1)
			repeat <array_size>
		endif
		if NOT getglobaltags savegame = <savegame> <venue_checksum> noassert = 1
			setglobaltags savegame = <savegame> <venue_checksum> params = {($default_venuetags) unlocked = <unlocked>} packtype = unlockedtags
		endif
	endif
	array_count = (<array_count> + 1)
	repeat <level_size>
endscript
default_charactertags = {
	unlocked = 0
}
default_songsetlisttags = {
	stars = 0
	score = 0
	percent100 = 0
	unlocked = 0
	new_song_info = 0
}

script setup_setlisttags \{globaltag_checksum = none
		force = 0
		songlist = gh_songlist
		download = 0}
	if (<download> = 1)
		return globaltag_checksum = <globaltag_checksum>
	endif
	if gotparam \{setlist_songs}
		tier_count = 1
		begin
		formattext checksumname = tier 'tier%d' d = <tier_count>
		defaultunlocked = 0
		unlockall = 0
		if structurecontains structure = ($<setlist_songs>.<tier>) defaultunlocked
			<defaultunlocked> = 1
		elseif structurecontains structure = ($<setlist_songs>.<tier>) unlockall
			<unlockall> = 1
		endif
		if (<defaultunlocked> = 1 || <unlockall> = 1)
			tier_song_count = 0
			getarraysize ($<setlist_songs>.<tier>.songs)
			tier_song_size = <array_size>
			if (<tier_song_size> > 0)
				begin
				if (<defaultunlocked> = 1)
					unlock_size = ($<setlist_songs>.<tier>.defaultunlocked)
				else (<unlockall> = 1)
					unlock_size = -1
				endif
				if (<tier_song_count> < <unlock_size> || <unlock_size> = -1)
					difficulty_index = 0
					getarraysize \{$difficulty_list}
					difficulty_size = <array_size>
					begin
					format_globaltag_song_checksum part = <part> song = ($<setlist_songs>.<tier>.songs [<tier_song_count>]) difficulty_index = <difficulty_index>
					setglobaltags savegame = <savegame> <song_checksum> params = {unlocked = 1}
					<difficulty_index> = (<difficulty_index> + 1)
					repeat <difficulty_size>
				endif
				<tier_song_count> = (<tier_song_count> + 1)
				repeat <tier_song_size>
			endif
		endif
		<tier_count> = (<tier_count> + 1)
		repeat ($<setlist_songs>.num_tiers)
	endif
	return globaltag_checksum = <globaltag_checksum>
endscript
default_bandtags = {
	cash = 100
	career_earnings = 100
	name = qs(0x03ac90f0)
	font = fontgrid_title_a1
	save_created = 0
	first_play = 1
	first_battle_play = 1
	first_venue_movie_played = 0
	first_quickplay_setlist = 1
	first_career_setlist = 1
	first_setlist_drum = 1
	finalbandintro_transition_played_band = 0
	finalbandintro_transition_played_bass = 0
	finalbandintro_transition_played_drum = 0
	finalbandintro_transition_played_guitar = 0
	finalbandintro_transition_played_vocals = 0
	first_instrument_career_guitar = 0
	first_instrument_career_bass = 0
	first_instrument_career_drum = 0
	first_instrument_career_vocals = 0
	career_intro_guitar_complete = 0
	career_intro_bass_complete = 0
	career_intro_drum_complete = 0
	career_intro_vocals_complete = 0
	career_intro_band_complete = 0
	career_credits_guitar_complete = 0
	career_credits_bass_complete = 0
	career_credits_drum_complete = 0
	career_credits_vocals_complete = 0
	career_credits_band_complete = 0
	career_guitar_movies_played = 0
	career_bass_movies_played = 0
	career_drum_movies_played = 0
	career_vocals_movies_played = 0
	career_band_movies_played = 0
	career_guitar_stone_movie_played = 0
	career_bass_stone_movie_played = 0
	career_drum_stone_movie_played = 0
	career_vocals_stone_movie_played = 0
	career_band_stone_movie_played = 0
	career_guitar_prev_total_songs = 0
	career_bass_prev_total_songs = 0
	career_drum_prev_total_songs = 0
	career_vocals_prev_total_songs = 0
	career_band_prev_total_songs = 0
	band_unique_id = non_existent_checksum
	band_logo = [
		{
			base_tex = `tex\models\characters\global\global_blank_logo.dds`
			material = band_logo_primary
			diffuse
			layers = [
				{
					texture = `tex/models/characters/skater_male/decals/cag_graphics014.img`
					flags = 3
					color = grey_4
				}
			]
		}
	]
	purchased_profiles = [
	]
	hendrix_achievement_easy = -1
	hendrix_achievement_medium = -1
	hendrix_achievement_hard = -1
	hendrix_achievement_expert = -1
	att_ballpark_band = 0
	att_ballpark_guitar = 0
	att_ballpark_bass = 0
	att_ballpark_drum = 0
	att_ballpark_vocals = 0
	load_z_s_stage = 0
	load_z_starwood = 0
	load_z_frankenstrat = 0
	load_z_drum_kit = 0
	load_z_london = 0
	load_z_rome = 0
	load_z_la_block_party = 0
	load_z_metalfest = 0
	load_z_studio2 = 0
	load_z_soundcheck2 = 0
	load_z_paris = 0
}
default_progressiontags = {
	current_difficulty = easy
	current_tier = 1
	current_song_count = 0
	encore_song = none
	career_play_song_and_end = 0
	career_using_createagig = 0
}

script setup_bandtags 
	formattext \{checksumname = default_bandname
		'band_info'
		addtostringlookup = true}
	setglobaltags savegame = <savegame> <default_bandname> params = {($default_bandtags)}
	getarraysize \{$difficulty_list}
	array_count = 0
	begin
	get_difficulty_text_nl difficulty = ($difficulty_list [<array_count>])
	get_progression_globals \{game_mode = p1_career}
	setlist_prefix = ($<tier_global>.prefix)
	formattext checksumname = gametype_checksum '%p_%s' p = <setlist_prefix> s = <difficulty_text_nl> addtostringlookup = true
	setglobaltags savegame = <savegame> <gametype_checksum> params = {complete = 0} packtype = completetags
	get_progression_globals \{game_mode = p2_career}
	setlist_prefix = ($<tier_global>.prefix)
	formattext checksumname = gametype_checksum '%p_%s' p = <setlist_prefix> s = <difficulty_text_nl> addtostringlookup = true
	setglobaltags savegame = <savegame> <gametype_checksum> params = {complete = 0} packtype = completetags
	array_count = (<array_count> + 1)
	repeat <array_size>
	setglobaltags savegame = <savegame> progression params = {$default_progressiontags}
endscript
override_audio_lag = -1
override_video_lag = -1

script setup_user_option_tags 
	<dolby_digital_enabled> = 0
	if isps3
		if isdolbydigitalenabled
			<dolby_digital_enabled> = 1
		endif
	endif
	setglobaltags savegame = <savegame> user_options params = {
		volumes = {
			guitar = {
				mic = {vol = 7 comp = 1 rev = 2}
				vocals = {vol = 7}
				backup = {vol = 7}
				guitar = {vol = 7 eq = 2}
				bass = {vol = 7 eq = 2}
				drum = {vol = 7 eq = 2}
				crowd = {vol = 7}
				sfx = {vol = 7}
				band = {vol = 7}
			}
		}
		dolby_digital = <dolby_digital_enabled>
		lefty_flip_save = 0
		use_tilt_for_starpower_save = 1
		enable_touch_strip_save = 1
		lefty_flip_p1 = 0
		lefty_flip_p2 = 0
		lefty_flip_p3 = 0
		lefty_flip_p4 = 0
		hyperspeed_guitar = 1.0
		hyperspeed_bass = 1.0
		hyperspeed_drum = 1.0
		airinstruments = 0
		invisiblecharacters = 0
		gem_set = standard_gems
		fx_set = standard_fx
		star_set = standard_stars
		unpause_count = 1
		lag_calibration = 0.0
		has_calibrated = 0
		autosave = 0
		resting_whammy_position_device_0 = -0.76
		resting_whammy_position_device_1 = -0.76
		resting_whammy_position_device_2 = -0.76
		resting_whammy_position_device_3 = -0.76
		resting_whammy_position_device_4 = -0.76
		resting_whammy_position_device_5 = -0.76
		resting_whammy_position_device_6 = -0.76
		star_power_position_device_0 = -1.0
		star_power_position_device_1 = -1.0
		star_power_position_device_2 = -1.0
		star_power_position_device_3 = -1.0
		star_power_position_device_4 = -1.0
		star_power_position_device_5 = -1.0
		star_power_position_device_6 = -1.0
		guitar_motion_neck_left_idle = -0.63
		guitar_motion_neck_right_idle = 0.5
		guitar_motion_face_up_idle = -0.76
		guitar_motion_face_down_idle = 0.31
		gamma_brightness = 5
		vocals_highway_view_save = scrolling
		vocals_sp_clap_save = 1
		online_game_mode = 0
		online_difficulty = 0
		online_num_songs = 0
		online_tie_breaker = 0
		online_highway = 0
		ghtunes_num_songs_rated = 0
		unlock_cheat_line6unlock = 0
		unlock_cheat_alwaysslide = 0
		unlock_cheat_airinstruments = 0
		unlock_cheat_invisiblecharacters = 0
		unlock_cheat_snobcrowd = 0
		unlock_cheat_performancemode = 0
		unlock_cheat_hyperspeed = 0
		unlock_cheat_autokick = 0
		unlock_cheat_freedrum = 0
		unlock_cheat_unlockquickplay = 0
		unlock_cheat_unlockattballpark = 0
		unlock_cheat_gemcolor = 0
		unlock_cheat_flamecolor = 0
		unlock_cheat_starcolor = 0
		unlock_cheat_vocalfireball = 0
		unlock_cheat_buckethat = 0
		unlock_cheat_zombband = 1
		unlock_cheat_freedrum = 0
		unlock_cheat_blackhighway = 0
		cheat_index0 = 0
		cheat_index1 = 0
		cheat_index2 = 0
		cheat_index3 = 0
		cheat_index4 = 0
		cheat_index5 = 0
		cheat_index6 = 0
		cheat_index7 = 0
		cheat_index8 = 0
		cheat_index9 = 0
		cheat_index10 = 0
		cheat_index11 = 0
		cheat_index12 = 0
		cheat_index13 = 0
		cheat_index14 = 0
		cheat_index15 = 0
		cheat_index16 = 0
		cheat_index17 = 0
		cheat_index18 = 0
		cheat_index19 = 0
		cheat_index20 = 0
		cheat_index21 = 0
		cheat_index22 = 0
		cheat_index23 = 0
		cheat_index24 = 0
		cheat_index25 = 0
		cheat_index26 = 0
		cheat_index27 = 0
		cheat_index28 = 0
		cheat_index29 = 0
		cheat_index30 = 0
	}
	if NOT (override_audio_lag = -1 || $override_video_lag = -1)
		if ($override_audio_lag > 200)
			change \{override_audio_lag = 200}
		endif
		if ($override_video_lag > 200)
			change \{override_video_lag = 200}
		endif
		lag_calibration = (($override_audio_lag * 1000) + 1000)
		setglobaltags savegame = <savegame> user_options params = {lag_calibration = <lag_calibration>}
		setglobaltags savegame = <savegame> user_options params = {lag_calibration = (<lag_calibration> + $override_video_lag)}
	endif
endscript

script setup_online_tags 
endscript

script write_globals_to_global_tags 
endscript

script globaltag_set_preset_musician 
	requireparams \{[
			savegame
			index
			appearance
		]}
	dest_appearance = {}
	cascopyselectiveparts \{src_appearance_name = appearance
		dest_appearance_name = dest_appearance
		part_array_name = modifiable_preset_musician_parts}
	cascopyselectiveparts \{src_appearance_name = appearance
		dest_appearance_name = dest_appearance
		part_array_name = modifiable_preset_musician_instrument_parts}
	globaltag_setarrayelement savegame = <savegame> array_name = preset_profiles index = <index> element = <dest_appearance>
endscript

script globaltag_get_preset_musician 
	requireparams \{[
			savegame
			index
			profile_struct
		]}
	globaltag_getarrayelement savegame = <savegame> array_name = preset_profiles index = <index>
	dest_appearance = (<profile_struct>.appearance)
	cascopyselectiveparts \{src_appearance_name = element
		dest_appearance_name = dest_appearance
		part_array_name = modifiable_preset_musician_parts}
	cascopyselectiveparts \{src_appearance_name = element
		dest_appearance_name = dest_appearance
		part_array_name = modifiable_preset_musician_instrument_parts}
	return profile_struct = {<profile_struct> appearance = <dest_appearance>}
endscript

script get_checksum_of_modified_appearance 
	requireparams \{[
			appearance
		]
		all}
	dest_appearance = {}
	cascopyselectiveparts \{src_appearance_name = appearance
		dest_appearance_name = dest_appearance
		part_array_name = modifiable_preset_musician_parts}
	cascopyselectiveparts \{src_appearance_name = appearance
		dest_appearance_name = dest_appearance
		part_array_name = modifiable_preset_musician_instrument_parts}
	generatechecksumfromstruct struct = <dest_appearance>
	return checksum = <structure_checksum>
endscript

script globaltag_check_preset_musician_modified 
	requireparams \{[
			savegame
			index
		]
		all}
	get_checksum_of_modified_appearance appearance = (($preset_musician_profiles_modifiable [<index>]).appearance)
	original_checksum = <checksum>
	globaltag_get_preset_musician savegame = <savegame> profile_struct = ($preset_musician_profiles_modifiable [<index>]) index = <index>
	get_checksum_of_modified_appearance appearance = (<profile_struct>.appearance)
	if (<original_checksum> = <checksum>)
		return \{false}
	endif
	return \{true}
endscript

script restore_globals_from_global_tags \{callmonitorcontrollerstates = 1}
	if gotparam \{savegame}
		savegame_to_reset = <savegame>
	else
		savegame_to_reset = -1
	endif
	<i> = 1
	begin
	getplayerinfo player = <i> controller
	get_savegame_from_controller controller = <controller>
	if (<savegame_to_reset> = <savegame> ||
			<savegame_to_reset> = -1)
		getglobaltags savegame = <savegame> user_options
		formattext checksumname = player_status 'player%i_status' i = <i> addtostringlookup
		change structurename = <player_status> lefty_flip = <lefty_flip_save>
		change structurename = <player_status> vocals_highway_view = <vocals_highway_view_save>
		change structurename = <player_status> vocals_sp_clap = <vocals_sp_clap_save>
		change structurename = <player_status> use_tilt_for_starpower = <use_tilt_for_starpower_save>
		change structurename = <player_status> enable_touch_strip = <enable_touch_strip_save>
	endif
	<i> = (<i> + 1)
	repeat 4
	if (<callmonitorcontrollerstates> = 1)
		monitorcontrollerstates
	endif
endscript

script setup_training_tags 
	setglobaltags savegame = <savegame> training params = {basic_lesson = not_complete
		star_power_lesson = not_complete
		advanced_techniques_lesson = not_complete
		new_features_lesson = not_complete
		drum_basic_lesson = not_complete
		drum_int_lesson = not_complete
		vocals_lesson = not_complete
		band_lesson = not_complete
		versus_lesson = not_complete
		has_prompt_guitar_tutorial = not_complete
		has_prompt_bass_tutorial = not_complete
		has_prompt_drum_tutorial = not_complete
		has_prompt_vocal_tutorial = not_complete
		rs_introduction_lesson = not_complete
		rs_lead_and_bass_lesson = not_complete
		rs_rhythm_lesson = not_complete
		rs_drums_lesson = not_complete
		rs_melody_lesson = not_complete
		rs_recording_lesson = not_complete
		rs_pro_guitar_lesson = not_complete
		rs_advanced_tools_lesson = not_complete
		rs_ghmix_editing_lesson = not_complete
		rs_ghmix_pro_techniques_tools_lesson = not_complete
	}
endscript

script reset_transient_tags 
	setglobaltags savegame = <savegame> venue_intro_flags params = {
		z_s_stage = 0
		z_starwood = 0
		z_frankenstrat = 0
		z_drum_kit = 0
		z_london = 0
		z_rome = 0
		z_la_block_party = 0
		z_metalfest = 0
		z_studio2 = 0
		z_studio = 0
		z_soundcheck2 = 0
		z_paris = 0
	}
endscript

script setup_unlocks \{globaltag_checksum = none}
	getarraysize ($bonus_videos)
	index = 0
	begin
	unlocked = 1
	if NOT structurecontains structure = ($bonus_videos [<index>]) unlocked
		unlocked = 0
	endif
	video_checksum = ($bonus_videos [<index>].id)
	setglobaltags savegame = <savegame> <video_checksum> params = {unlocked = <unlocked>} packtype = unlockedtags
	globaltag_checksum = (<globaltag_checksum> + <video_checksum>)
	<index> = (<index> + 1)
	repeat <array_size>
	return globaltag_checksum = <globaltag_checksum>
endscript

script globaltags_unlockall songs_only = 0 difficulty = ($player1_status.difficulty)
	get_savegame_from_controller controller = ($primary_controller)
	create_loading_screen
	if NOT (<songs_only> = 1)
		array_count = 0
		getarraysize \{$preset_musician_profiles_locked}
		if (<array_size>)
			begin
			if structurecontains structure = ($preset_musician_profiles_locked [<array_count>]) locked
				unlock_profile id = ($preset_musician_profiles_locked [<array_count>].name) savegame = <savegame>
			endif
			array_count = (<array_count> + 1)
			repeat <array_size>
		endif
		array_count = 0
		getarraysize \{$bonus_videos}
		if (<array_size>)
			begin
			setglobaltags savegame = <savegame> ($bonus_videos [<array_count>].id) params = {unlocked = 1}
			array_count = (<array_count> + 1)
			repeat <array_size>
		endif
	endif
	array_count = 0
	begin
	setlist_prefix = ($<songlist>.prefix)
	formattext checksumname = tiername '%ptier%i' p = <setlist_prefix> i = (<array_count> + 1)
	formattext checksumname = tier_checksum 'tier%s' s = (<array_count> + 1)
	if NOT globalexists name = <songlist> type = structure
		scriptassert '%s does not exist' s = <songlist> donotresolve
	endif
	if NOT structurecontains structure = ($<songlist>) <tier_checksum>
		scriptassert '%s not found in $ %d' s = <tier_checksum> d = <songlist> donotresolve
	endif
	if NOT structurecontains structure = ($<songlist>.<tier_checksum>) songs
		scriptassert 'songs not found in $ %d . %s' d = <songlist> s = <tier_checksum> donotresolve
	endif
	getarraysize ($<songlist>.<tier_checksum>.songs)
	song_count = 0
	begin
	setlist_prefix = ($<songlist>.prefix)
	format_globaltag_song_checksum part = ($<songlist>.part) song = ($<songlist>.<tier_checksum>.songs [<song_count>]) difficulty = <difficulty>
	stars = 5
	if (<song_count> = <array_size> - 1)
		if structurecontains structure = ($<songlist>.<tier_checksum>) end_with_credits
			stars = 0
		endif
	endif
	if (<songs_only> = 1)
		setglobaltags savegame = <savegame> <song_checksum> params = {unlocked = 1}
	else
		setglobaltags savegame = <savegame> <song_checksum> params = {stars = <stars>
			score = 1000000
			unlocked = 1}
		get_difficulty_text_nl difficulty = <difficulty>
		get_song_prefix song = ($<songlist>.<tier_checksum>.songs [<song_count>])
		get_formatted_songname song_prefix = <song_prefix> difficulty_text_nl = <difficulty_text_nl>
		setglobaltags savegame = <savegame> <songname> params = {achievement_gold_star = 1}
	endif
	song_count = (<song_count> + 1)
	repeat <array_size>
	array_count = (<array_count> + 1)
	repeat ($<songlist>.num_tiers)
	setup_venuetags \{cheat}
	destroy_loading_screen
endscript
instrument_progression_list = [
	career_guitar
	career_bass
	career_drum
	career_vocals
	career_band
]
instrument_progression_list_nl_strings = {
	career_guitar = 'guitar'
	career_bass = 'bass'
	career_drum = 'drum'
	career_vocals = 'vocals'
	career_band = 'band'
}
unlock_order_list = [
	gh4_career_guitar_progression_unlock_order
	gh4_career_bass_progression_unlock_order
	gh4_career_drum_progression_unlock_order
	gh4_career_vocals_progression_unlock_order
	gh4_career_band_progression_unlock_order
]

script get_minimum_difficulty \{difficulty1 = easy
		difficulty2 = easy}
	if (<difficulty1> = <difficulty2>)
		return minimum_difficulty = <difficulty1>
	else
		switch <difficulty1>
			case easy
			return \{minimum_difficulty = easy}
			case medium
			if (<difficulty2> = easy)
				return \{minimum_difficulty = easy}
			else
				return \{minimum_difficulty = medium}
			endif
			case hard
			switch <difficulty2>
				case easy
				return \{minimum_difficulty = easy}
				case medium
				return \{minimum_difficulty = medium}
				case expert
				return \{minimum_difficulty = hard}
			endswitch
			case expert
			switch <difficulty2>
				case easy
				return \{minimum_difficulty = easy}
				case medium
				return \{minimum_difficulty = medium}
				case hard
				return \{minimum_difficulty = hard}
			endswitch
		endswitch
	endif
endscript

script get_game_mode_ui_string 
	if NOT gotparam \{game_mode}
		softassert \{qs(0xc2bbf7ca)}
		return
	endif
	return ui_string = ($game_mode_ui_strings.<game_mode>)
endscript
game_mode_ui_strings = {
	p1_career = qs(0x5a4f279f)
	p2_career = qs(0x5a4f279f)
	p1_quickplay = qs(0x388d2deb)
	p2_quickplay = qs(0x330c43bc)
	p2_faceoff = qs(0x3de98a36)
	p2_pro_faceoff = qs(0x4bf74995)
	p2_battle = qs(0xb7847855)
	p2_coop = qs(0x977b1176)
}

script get_difficulty_ui_string 
	if NOT gotparam \{difficulty}
		softassert \{qs(0x719013b6)}
		return
	endif
	return ui_string = ($game_difficulty_ui_strings.<difficulty>)
endscript
game_difficulty_ui_strings = {
	easy = qs(0xbf7ffd2d)
	medium = qs(0xeac0f52d)
	hard = qs(0x63aae385)
	expert = qs(0xb778e780)
}
game_mode_names = {
	p1_career = 'p1_career'
	p2_career = 'p2_career'
	p1_quickplay = 'p1_quickplay'
	p2_quickplay = 'p2_quickplay'
	p2_faceoff = 'p2_faceoff'
	p2_pro_faceoff = 'p2_pro_faceoff'
	p4_pro_faceoff = 'p4_pro_faceoff'
	p2_battle = 'p2_battle'
	p8_pro_faceoff = 'p8_pro_faceoff'
	p2_coop = 'p2_coop'
	p4_quickplay = 'p4_quickplay'
	training = 'training'
	tutorial = 'tutorial'
}

script get_band_game_mode_name 
	game_mode_name = ($game_mode_names.p1_career)
	return game_mode_name = <game_mode_name>
endscript

script get_game_mode_name 
	return game_mode_name = ($game_mode_names.$game_mode)
endscript

script get_current_band_info 
	return \{band_info = band_info}
endscript

script get_current_band_checksum 
	return \{band_checksum = career_band}
endscript

script set_current_band_part_flags 
	requireparams \{[
			desc_id
			part
		]
		all}
	if gotparam \{unlocked}
		flag = {unlocked}
	endif
	if gotparam \{purchased}
		flag = {purchased}
	endif
	get_current_band_info
	getglobaltags <band_info> savegame = <savegame>
	if NOT gotparam \{unlock_purchased}
		initilize_current_band_unlock_purchase
	endif
	if NOT structurecontains structure = <unlock_purchased> <part>
		scriptassert qs(0x8ecf4b3a) p = <part>
	endif
	unlock_purchased_struct = (<unlock_purchased>.<part>)
	getarraysize \{unlock_purchased_struct}
	if (<array_size> > 0)
		i = 0
		begin
		if (((<unlock_purchased_struct> [<i>]).desc_id) = <desc_id>)
			setarrayelement arrayname = unlock_purchased_struct index = <i> newvalue = {(<unlock_purchased_struct> [<i>]) desc_id = <desc_id> <flag>}
			addparam name = <part> structure_name = new_entry value = <unlock_purchased_struct>
			unlock_purchased = {<unlock_purchased> <new_entry>}
			lockglobaltags \{off}
			setglobaltags <band_info> params = {unlock_purchased = <unlock_purchased>} savegame = <savegame>
			lockglobaltags
			return
		endif
		i = (<i> + 1)
		repeat <array_size>
	endif
	addarrayelement array = <unlock_purchased_struct> element = {desc_id = <desc_id> <flag>}
	addparam name = <part> structure_name = new_entry value = <array>
	unlock_purchased = {<unlock_purchased> <new_entry>}
	lockglobaltags \{off}
	setglobaltags <band_info> params = {unlock_purchased = <unlock_purchased>} savegame = <savegame>
	lockglobaltags
	return
endscript

script initilize_current_band_unlock_purchase 
	getarraysize ($master_editable_list)
	i = 0
	begin
	addparam name = ((($master_editable_list) [<i>]).part) value = []
	i = (<i> + 1)
	repeat <array_size>
	removeparameter \{i}
	removeparameter \{array_size}
	unlock_purchased = {<...>}
	return unlock_purchased = <unlock_purchased>
endscript

script unlock_purchase_all_cas_parts 
	getarraysize ($master_editable_list)
	master_list_size = <array_size>
	i = 0
	begin
	part = ((($master_editable_list) [<i>]).part)
	getarraysize ($<part>)
	j = 0
	begin
	if structurecontains structure = (($<part>) [<j>]) locked
		set_current_band_part_flags part = <part> desc_id = ((($<part>) [<j>]).desc_id) unlocked
	endif
	if structurecontains structure = (($<part>) [<j>]) price
		set_current_band_part_flags part = <part> desc_id = ((($<part>) [<j>]).desc_id) purchased
	endif
	j = (<j> + 1)
	repeat <array_size>
	i = (<i> + 1)
	repeat <master_list_size>
endscript

script get_current_band_part_flags 
	requireparams \{[
			desc_id
			part
		]
		all}
	get_current_band_info
	getglobaltags <band_info> savegame = <savegame>
	if NOT gotparam \{unlock_purchased}
		return
	endif
	if NOT structurecontains structure = <unlock_purchased> <part>
		scriptassert qs(0x8ecf4b3a) p = <part>
	endif
	unlock_purchased_struct = (<unlock_purchased>.<part>)
	getarraysize \{unlock_purchased_struct}
	if (<array_size> > 0)
		i = 0
		begin
		if (((<unlock_purchased_struct> [<i>]).desc_id) = <desc_id>)
			return part_flags = (<unlock_purchased_struct> [<i>])
		endif
		i = (<i> + 1)
		repeat <array_size>
	endif
endscript

script get_current_band_name 
	get_current_band_info
	getglobaltags <band_info>
	return band_name = <name>
endscript

script setup_achievement_tags 
	setglobaltags savegame = <savegame> achievement_info params = {
		total_cash_in_career_mode = 0
		num_online_matches_played = 0
		venues_played = {
			load_z_soundcheck2 = 0
			load_z_studio2 = 0
			load_z_metalfest = 0
			load_z_la_block_party = 0
			load_z_rome = 0
			load_z_london = 0
			load_z_drum_kit = 0
			load_z_frankenstrat = 0
			load_z_starwood = 0
			load_z_s_stage = 0
			load_z_paris = 0
		}
		achievement_all_instruments = 0
		green_notes_exist = 0
		green_note_missed = 0
	}
endscript

script setup_cas_helper_tags 
	setglobaltags savegame = <savegame> cas_helper_dialogue params = {
		visit_cag = 0
		visit_cap = 0
		visit_cadrm = 0
		visit_deformation = 0
		visit_outfit = 0
		guitar_category = gh
		bass_category = gh
	}
endscript

script set_online_match_info \{ranked = 0
		won = 0
		host = 0
		standard_controller = 0}
endscript
default_gig_tags = {
	unlocked = 0
	first_time_unlocked = 0
	completed = 0
	started = 0
	encore_unlocked = 0
	boss_unlocked = 0
	cash_earned = 0
}
default_special_event_gig_tags = {
	unlocked = 0
	completed = -1
	challenge1_unlocked = 1
	challenge2_unlocked = 0
	challenge3_unlocked = 0
	challenge1_completed = 0
	challenge2_completed = 0
	challenge3_completed = 0
}
default_pay_to_play_gig_tags = {
	unlocked = 0
	first_time_unlocked = 0
	completed = -1
	cash_earned = 0
}

script setup_gigtags \{globaltag_checksum = none
		use_cheat_tags = 0}
	if NOT gotparam \{unlock_order}
		unlock_order = gh4_career_band_progression_unlock_order
		if (<part> = guitar)
			unlock_order = gh4_career_guitar_progression_unlock_order
		elseif (<part> = drum)
			unlock_order = gh4_career_drum_progression_unlock_order
		elseif (<part> = bass)
			unlock_order = gh4_career_bass_progression_unlock_order
		elseif (<part> = vocals)
			unlock_order = gh4_career_vocals_progression_unlock_order
		endif
	endif
	setlist_prefix = ($<unlock_order>.name)
	cheat_tags = {}
	if (<use_cheat_tags> = 1)
		<cheat_tags> = {unlocked = 1 encore_unlocked = 1 boss_unlocked = 1 started = 1}
	endif
	free_gig = 1
	begin
	formattext checksumname = gignum 'gig%d' d = <free_gig>
	if NOT structurecontains structure = ($<unlock_order>.freegigs) <gignum>
		break
	endif
	gig = ($<unlock_order>.freegigs.<gignum>.name)
	format_globaltag_gigname setlist_prefix = <setlist_prefix> gig = <gig>
	additional_tags = {}
	if structurecontains structure = ($<unlock_order>.freegigs.<gignum>) debug_dont_unlock
		<additional_tags> = {completed = -1}
	endif
	setglobaltags {
		savegame = <savegame>
		<gig_name>
		params = {($default_gig_tags) <additional_tags> unlocked = 1}
		packtype = gigtags
	}
	globaltag_checksum = (<globaltag_checksum> + <gig_name>)
	formattext checksumname = tier 'tier%d' d = ($<unlock_order>.freegigs.<gignum>.num)
	song_count = 0
	getarraysize ($<setlist_songs>.<tier>.songs)
	begin
	setglobaltags savegame = <savegame> ($<setlist_songs>.<tier>.songs [<song_count>]) params = {unlocked = 1}
	<song_count> = (<song_count> + 1)
	repeat <array_size>
	<free_gig> = (<free_gig> + 1)
	repeat
	set_num = 1
	begin
	formattext checksumname = setnum 'unlockset%d' d = <set_num>
	if NOT structurecontains structure = $<unlock_order> <setnum>
		break
	endif
	if structurecontains structure = ($<unlock_order>.<setnum>) none
		format_globaltag_gigname setlist_prefix = <setlist_prefix> gig = ($<unlock_order>.<setnum>.none)
		setglobaltags {
			savegame = <savegame>
			<gig_name>
			params = {($default_gig_tags) <cheat_tags>}
			packtype = gigtags
		}
		globaltag_checksum = (<globaltag_checksum> + <gig_name>)
	endif
	gig_num = 1
	begin
	formattext checksumname = gignum 'gig%d' d = <gig_num>
	if NOT structurecontains structure = ($<unlock_order>.<setnum>) <gignum>
		break
	endif
	gig = ($<unlock_order>.<setnum>.<gignum>.name)
	format_globaltag_gigname setlist_prefix = <setlist_prefix> gig = <gig>
	setglobaltags {
		savegame = <savegame>
		<gig_name>
		params = {($default_gig_tags) <cheat_tags>}
		packtype = gigtags
	}
	globaltag_checksum = (<globaltag_checksum> + <gig_name>)
	<gig_num> = (<gig_num> + 1)
	repeat
	paytoplay_num = 1
	begin
	formattext checksumname = paytoplaynum 'pay_to_play%d' d = <paytoplay_num>
	if NOT structurecontains structure = ($<unlock_order>.<setnum>) <paytoplaynum>
		break
	endif
	gig = ($<unlock_order>.<setnum>.<paytoplaynum>.name)
	format_globaltag_gigname setlist_prefix = <setlist_prefix> gig = <gig>
	setglobaltags savegame = <savegame> <gig_name> params = {($default_pay_to_play_gig_tags) <cheat_tags>} packtype = gigtags
	globaltag_checksum = (<globaltag_checksum> + <gig_name>)
	<paytoplay_num> = (<paytoplay_num> + 1)
	repeat
	<set_num> = (<set_num> + 1)
	repeat
	if structurecontains structure = $<unlock_order> freegigs_last
		free_gig = 1
		begin
		formattext checksumname = gignum 'gig%d' d = <free_gig>
		if NOT structurecontains structure = ($<unlock_order>.freegigs_last) <gignum>
			break
		endif
		gig = ($<unlock_order>.freegigs_last.<gignum>.name)
		format_globaltag_gigname setlist_prefix = <setlist_prefix> gig = <gig>
		additional_tags = {}
		if structurecontains structure = ($<unlock_order>.freegigs_last.<gignum>) debug_dont_unlock
			<additional_tags> = {completed = -1}
		endif
		setglobaltags {
			savegame = <savegame>
			<gig_name>
			params = {($default_gig_tags) <additional_tags>}
			packtype = gigtags
		}
		globaltag_checksum = (<globaltag_checksum> + <gig_name>)
		<free_gig> = (<free_gig> + 1)
		repeat
	endif
	return globaltag_checksum = <globaltag_checksum>
endscript

script format_globaltag_song_checksum difficulty = ($player1_status.difficulty)
	if gotparam \{song}
		get_song_name song = <song>
	endif
	if gotparam \{difficulty_index}
		get_difficulty_text_nl index = <difficulty_index>
	else
		if NOT gotparam \{difficulty_text_nl}
			get_difficulty_text_nl difficulty = <difficulty>
		endif
	endif
	if NOT gotparam \{part}
		part = guitar
	endif
	if NOT gotparam \{part_text}
		part_text = ($instrument_list.<part>.text_nl)
	endif
	formattext checksumname = song_checksum '%s%p%d' s = <song_name> p = <part_text> d = <difficulty_text_nl> addtostringlookup = true
	return song_checksum = <song_checksum>
endscript

script format_globaltag_gigname 
	requireparams \{[
			setlist_prefix
		]
		all}
	if gotparam \{gignum}
		formattext textname = gig 'gig%g' g = (<gignum>)
	endif
	formattext checksumname = gig_name '%s_%g' s = <setlist_prefix> g = <gig> addtostringlookup = true
	return gig_name = <gig_name>
endscript

script setup_quickplay_song_tags 
	if gotparam \{allsongs}
		getarraysize ($gh_songlist)
		i = 0
		begin
		song = ($gh_songlist [<i>])
		get_song_saved_in_globaltags song = <song>
		if (<saved_in_globaltags> = 1)
			setglobaltags savegame = <savegame> <song> params = {unlocked = 0}
		endif
		i = (<i> + 1)
		repeat <array_size>
		return
	endif
	if NOT gotparam \{unlock_order}
		unlock_order = gh4_career_band_progression_unlock_order
		if (<part> = guitar)
			unlock_order = gh4_career_guitar_progression_unlock_order
		elseif (<part> = drum)
			unlock_order = gh4_career_drum_progression_unlock_order
		elseif (<part> = bass)
			unlock_order = gh4_career_bass_progression_unlock_order
		elseif (<part> = vocals)
			unlock_order = gh4_career_vocals_progression_unlock_order
		endif
	endif
	free_gig = 1
	begin
	formattext checksumname = gignum 'gig%d' d = <free_gig>
	if NOT structurecontains structure = ($<unlock_order>.freegigs) <gignum>
		break
	endif
	formattext checksumname = tier 'tier%d' d = ($<unlock_order>.freegigs.<gignum>.num)
	song_count = 0
	getarraysize ($<setlist_songs>.<tier>.songs)
	begin
	setglobaltags savegame = <savegame> ($<setlist_songs>.<tier>.songs [<song_count>]) params = {unlocked = 1}
	<globaltag_checksum> = (<globaltag_checksum> + ($<setlist_songs>.<tier>.songs [<song_count>]))
	<song_count> = (<song_count> + 1)
	repeat <array_size>
	<free_gig> = (<free_gig> + 1)
	repeat
	return globaltag_checksum = <globaltag_checksum>
endscript

script set_band_character_id_globaltag 
	if band_builder_is_random character_id = <character_id>
		return
	endif
	if (($is_network_game = 0) && (($game_mode = p2_battle) || ($game_mode = p2_faceoff) || ($game_mode = p2_pro_faceoff)))
		requireparams \{[
				savegame
				player
				character_id
			]}
		player_index = (<player> -1)
		printf 'set_band_character_id_globaltag h2h savegame=%d player_index=%i char=%c' d = <savegame> i = <player_index> c = <character_id>
		getglobaltags savegame = <savegame> last_h2h_characters
		setarrayelement arrayname = last_h2h_characters index = <player_index> newvalue = <character_id>
		setglobaltags savegame = <savegame> last_h2h_characters params = {last_h2h_characters = <last_h2h_characters>}
		formattext checksumname = player_status 'player%d_status' d = <player>
		get_savegame_from_player_status player_status = <player_status>
		printf 'set_band_character_id_globaltag h2h savegame=%d last_h2h_xbox_character=%c' d = <savegame> c = <character_id>
		setglobaltags savegame = <savegame> last_h2h_xbox_character params = {last_h2h_xbox_character = <character_id>}
		return
	endif
	if (($band_mode_mode = career) || ($is_network_game = 1))
		printf 'set_band_character_id_globaltag savegame=%d controller=%i char=%c' d = <savegame> i = <controller> c = <character_id>
		requireparams \{[
				savegame
				controller
				character_id
			]}
		if (<controller> >= 4)
			return
		endif
		getglobaltags savegame = <savegame> last_band_characters
		setarrayelement arrayname = last_band_characters index = <controller> newvalue = <character_id>
		setglobaltags savegame = <savegame> last_band_characters params = {last_band_characters = <last_band_characters>}
		get_savegame_from_controller controller = <controller>
		printf 'set_band_character_id_globaltag savegame=%d last_band_xbox_character=%c' d = <savegame> c = <character_id>
		setglobaltags savegame = <savegame> last_band_xbox_character params = {last_band_xbox_character = <character_id>}
	endif
endscript

script get_last_band_character_recorded 
	requireparams \{[
			player
			part
		]
		all}
	formattext checksumname = player_status 'player%p_status' p = <player>
	controller = ($<player_status>.controller)
	if gotparam \{no_band_leader_grab}
		get_savegame_from_player_status player_status = <player_status>
	else
		get_savegame_from_player_status band_character_select player_status = <player_status>
	endif
	if (($is_network_game = 0) && (($game_mode = p2_battle) || ($game_mode = p2_faceoff) || ($game_mode = p2_pro_faceoff)))
		if isxenon
			if NOT gotparam \{borrowed_from_band_leader}
				getglobaltags savegame = <savegame> last_h2h_xbox_character
				character_id = <last_h2h_xbox_character>
			endif
		endif
		if NOT gotparam \{character_id}
			player_index = (<player> -1)
			if (<player_index> >= 2)
				return \{character_id = none}
			endif
			getglobaltags savegame = <savegame> last_h2h_characters
			character_id = (<last_h2h_characters> [<player_index>])
		endif
	else
		if isxenon
			if NOT gotparam \{borrowed_from_band_leader}
				getglobaltags savegame = <savegame> last_band_xbox_character
				character_id = <last_band_xbox_character>
			endif
		endif
		if NOT gotparam \{character_id}
			if (<controller> >= 4)
				return \{character_id = none}
			endif
			getglobaltags savegame = <savegame> last_band_characters
			character_id = (<last_band_characters> [<controller>])
		endif
	endif
	if NOT profile_exists id = <character_id> savegame = <savegame>
		character_id = none
	else
		get_musician_profile_struct_by_id id = <character_id> savegame = <savegame> dont_assert
		if NOT is_allowed_part profile_struct = <profile_struct> part = <part>
			printf 'get_last_band_character_recorded - %c not allowed for %s' c = <character_id> s = <part>
			character_id = none
		endif
	endif
	return character_id = <character_id> borrowed_from_band_leader = <borrowed_from_band_leader>
endscript

script setup_saved_instrument_tags 
	globaltag_createarray globaltag_checksum = <globaltag_checksum> savegame = <savegame> array_name = player_created_graphics_save max_size = ($max_num_logo_saves) packtype = logos
	globaltag_createarray globaltag_checksum = <globaltag_checksum> savegame = <savegame> array_name = player_guitar_save max_size = ($max_num_instrument_saves) packtype = guitars
	globaltag_createarray globaltag_checksum = <globaltag_checksum> savegame = <savegame> array_name = player_bass_save max_size = ($max_num_instrument_saves) packtype = basses
	globaltag_createarray globaltag_checksum = <globaltag_checksum> savegame = <savegame> array_name = player_drum_save max_size = ($max_num_instrument_saves) packtype = drums
	globaltag_createarray globaltag_checksum = <globaltag_checksum> savegame = <savegame> array_name = player_mic_save max_size = ($max_num_instrument_saves) packtype = vocals
	return globaltag_checksum = <globaltag_checksum>
endscript

script globaltag_createarray 
	requireparams \{[
			savegame
			array_name
			max_size
			packtype
		]
		all}
	setglobaltags savegame = <savegame> <array_name> params = {valid_entries = [] max_size = <max_size>}
	i = 0
	begin
	formattext textname = arrayappend '_array%d' d = <i>
	extendcrc <array_name> <arrayappend> out = arrayid
	setglobaltags savegame = <savegame> <arrayid> params = {contents = {}} packtype = <packtype>
	globaltag_checksum = (<globaltag_checksum> + <arrayid>)
	i = (<i> + 1)
	repeat <max_size>
	if gotparam \{start_full}
		i = 0
		begin
		globaltag_addarrayelement savegame = <savegame> array_name = <array_name> element = {}
		i = (<i> + 1)
		repeat <max_size>
	endif
	return globaltag_checksum = <globaltag_checksum>
endscript

script globaltag_getarraysize 
	requireparams \{[
			savegame
			array_name
		]
		all}
	getglobaltags savegame = <savegame> <array_name>
	getarraysize <valid_entries>
	return array_size = <array_size>
endscript

script globaltag_getarrayelement 
	requireparams \{[
			savegame
			array_name
			index
		]
		all}
	getglobaltags savegame = <savegame> <array_name>
	getarraysize <valid_entries>
	if (<index> < <array_size>)
		getglobaltags savegame = <savegame> (<valid_entries> [<index>])
		return true element = <contents>
	endif
	return \{false}
endscript

script globaltag_setarrayelement 
	requireparams \{[
			savegame
			array_name
			index
			element
		]
		all}
	getglobaltags savegame = <savegame> <array_name>
	getarraysize <valid_entries>
	if (<index> < <array_size>)
		setglobaltags savegame = <savegame> (<valid_entries> [<index>]) params = {contents = <element>}
		return \{true}
	endif
	return \{false}
endscript

script globaltag_addarrayelement 
	requireparams \{[
			savegame
			array_name
			element
		]
		all}
	getglobaltags savegame = <savegame> <array_name>
	getarraysize <valid_entries>
	if (<array_size> < <max_size>)
		i = 0
		begin
		formattext textname = arrayappend '_array%d' d = <i>
		extendcrc <array_name> <arrayappend> out = arrayid
		if NOT arraycontains array = <valid_entries> contains = <arrayid>
			addarrayelement array = <valid_entries> element = <arrayid>
			setglobaltags savegame = <savegame> <array_name> params = {valid_entries = <array> max_size = <max_size>}
			setglobaltags savegame = <savegame> <arrayid> params = {contents = <element>}
			return \{true}
		endif
		i = (<i> + 1)
		repeat (<array_size> + 1)
	endif
	return \{false}
endscript

script globaltag_removearrayelement 
	requireparams \{[
			savegame
			array_name
			index
		]
		all}
	getglobaltags savegame = <savegame> <array_name>
	getarraysize <valid_entries>
	if (<array_size> <= <max_size>)
		removearrayelement array = <valid_entries> index = <index>
		setglobaltags savegame = <savegame> <array_name> params = {valid_entries = <array> max_size = <max_size>}
		return \{true}
	endif
	return \{false}
endscript

script globaltag_getarraychecksum 
	requireparams \{[
			savegame
			array_name
		]
		all}
	array_checksum = arse
	globaltag_getarraysize savegame = <savegame> array_name = <array_name>
	if (<array_size> > 0)
		i = 0
		begin
		globaltag_getarrayelement savegame = <savegame> array_name = <array_name> index = <i>
		generatechecksumfromstruct \{structname = element}
		array_checksum = (<array_checksum> + <structure_checksum>)
		i = (<i> + 1)
		repeat <array_size>
	endif
	return array_checksum = <array_checksum>
endscript
neversoft_hiscore_names = [
	qs(0x99879b78)
	qs(0x321df572)
	qs(0xf01ce8d7)
	qs(0x683ba910)
	qs(0x2f64a941)
	qs(0x21d0e822)
	qs(0x5f0a60ca)
	qs(0xb2d47f93)
	qs(0xdaf613d7)
	qs(0x34f8e50d)
	qs(0x64016704)
	qs(0xaa3ec6e6)
	qs(0x57b179b6)
	qs(0xf233f310)
	qs(0xa39c9536)
	qs(0x7de26620)
	qs(0x00eae894)
	qs(0xfe04b0c2)
	qs(0x2b2f13d7)
	qs(0x305b59fc)
	qs(0x5ac6c520)
	qs(0x716dfdf3)
	qs(0xef486ee8)
	qs(0x3e8ec06f)
	qs(0xe53396c9)
	qs(0x0d219d8d)
	qs(0xe33f58ed)
	qs(0xbbd42b9d)
	qs(0x9abd0192)
	qs(0x0bf35714)
	qs(0x18b25bcd)
	qs(0x4cea8229)
	qs(0x6c1ea81c)
	qs(0x083b358f)
	qs(0x1ee83e99)
	qs(0xbb540a7d)
	qs(0x280e8d77)
	qs(0x4c610731)
	qs(0xd4408c6d)
	qs(0xe18bcf47)
	qs(0xeea238e8)
	qs(0x6fbabc98)
	qs(0x47cd0ef7)
	qs(0x8af031d8)
	qs(0x5f1421a5)
	qs(0x043797ff)
	qs(0x91c07a9a)
	qs(0x0b9f32c8)
	qs(0x34259644)
	qs(0x85f9c252)
	qs(0x7900ba58)
	qs(0xeeb56acb)
	qs(0x3845ea03)
	qs(0xa95ad542)
	qs(0xa2dffa5f)
	qs(0x5dbd3089)
	qs(0x2d8e7b78)
	qs(0x3e6b6155)
	qs(0x87dfe1cd)
	qs(0xd7c977c1)
	qs(0x3f6bc870)
	qs(0x977faadb)
	qs(0x5682fffa)
	qs(0x03e87bc0)
	qs(0xd68dc84b)
	qs(0xb4db3fcc)
	qs(0xc1d55c97)
	qs(0x748b04e5)
	qs(0x24a347de)
]
