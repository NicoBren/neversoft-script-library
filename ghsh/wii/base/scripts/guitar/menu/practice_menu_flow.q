came_to_practice_from = main_menu
came_to_practice_from_progression = None
came_to_practice_character_id = emptyguy
came_to_practice_difficulty = easy
came_to_practice_difficulty2 = easy

script practice_check_song_for_parts 
	if 0x3a38fdd7 song = ($current_song)
		create_loading_screen \{jam_mode = 1}
		if NOT 0xda3ef1f6 song = ($current_song)
			return
		endif
		destroy_loading_screen
	endif
	unload_songqpak
	destroy_band
	load_songqpak song_name = ($current_song) async = 0
	set_song_section_array \{Player = 1}
	create_loading_screen
	generic_event_choose \{state = uistate_practice_select_difficulty}
endscript

script practice_check_song_for_parts_back 
	load_songqpak song_name = ($current_song) async = 0
	get_song_struct song = ($current_song)
	if StructureContains structure = <song_struct> no_rhythm_track
		return \{flow_state = practice_setlist_fs}
	endif
	get_song_prefix song = ($current_song)
	formatText checksumName = song_rhythm_array_id '%s_song_rhythm_easy' s = <song_prefix>
	if GlobalExists Name = <song_rhythm_array_id> Type = array
		GetArraySize $<song_rhythm_array_id>
		if (<array_Size> > 0)
			return \{flow_state = practice_select_part_fs}
		endif
	endif
	if StructureContains structure = <song_struct> use_coop_notetracks
		return \{flow_state = practice_select_part_fs}
	endif
	return \{flow_state = practice_setlist_fs}
endscript

script practice_start_song \{device_num = 0}
	Change \{game_mode = training}
	Change \{current_transition = practice}
	Change \{current_level = load_z_studio}
	start_song {
		starttime = ($practice_start_time)
		device_num = <device_num>
		practice_intro = 1
		endtime = ($practice_end_time)
		uselaststarttime = <uselaststarttime>
		0x922dc314 = true
	}
	SpawnScriptNow \{practice_update}
	if GameIsPaused
		printf \{qs(0x253e0de7)}
		do_gh3_unpause
	endif
endscript

script practice_restart_song 
	end_song \{0xdeb80c0b = 1}
	resetscoreupdateready
	SpawnScriptNow \{practice_restart_song_spawned}
endscript

script practice_restart_song_spawned 
	setscriptcannotpause
	Change \{game_mode = training}
	Change \{current_transition = practice}
	destroy_bg_viewport
	generic_event_back \{state = Uistate_gameplay}
	if ($special_event_stage != 0)
		if ($current_special_event_num = 2)
			Change \{special_event_stage = 2}
			destroy_pause_menu
			reset_special_event \{num = 2}
		endif
	endif
	restart_song practice_intro = 1 starttime = ($practice_start_time) endtime = ($practice_end_time) 0x922dc314 = true
	KillSpawnedScript \{Name = finish_practice_song}
	KillSpawnedScript \{Name = practice_update}
	SpawnScriptNow \{practice_update}
endscript

script practice_update 
	setscriptcannotpause
	if ($special_event_stage != 0)
		check_current_special_event_percentages \{dont_use_extra_notes}
	endif
	resetpracticesoundbusses
	begin
	practice_audio_filter
	if ($special_event_stage != 0)
		if ScreenElementExists \{id = practice_container}
			SetScreenElementProps \{id = practice_container
				alpha = 0}
		endif
		getplayerinfo \{1
			part}
		formatText \{checksumName = event_num
			'special_event%d'
			d = $current_special_event_num}
		formatText \{checksumName = challenge_num
			'challenge%d'
			d = $current_special_event_challenge_num}
		formatText checksumName = songs_ar '%p_songs' p = ($part_list_props.<part>.text_nl)
		if ($current_special_event_num = 1 || $current_special_event_num = 2)
			show_recording_text = 1
			if ($current_special_event_num = 2)
				if ($special_event_stage >= 2)
					if ($current_section_array_entry = ($special_events_challenges.<event_num>.<challenge_num>.<songs_ar> [$special_event_song_index].sections [0]))
						if ScreenElementExists \{id = special_event_question_markp1}
							SetScreenElementProps \{id = special_event_question_markp1
								unhide}
							special_event_question_markp1 :legacydomorph \{alpha = 1
								time = 1}
						endif
						Change \{special_event_alpha_out_gems = 1}
					else
						if ScreenElementExists \{id = special_event_question_markp1}
							special_event_question_markp1 :legacydomorph \{alpha = 0
								time = 1}
						endif
					endif
				else
					if ($current_special_event_num != 2)
						<show_recording_text> = 0
					endif
				endif
			endif
			if (<show_recording_text> = 1)
				get_song_section_array
				GetSongTimeMs
				recording_text = qs(0x03ac90f0)
				recording = -1
				recording_countdown = -1
				set_special_event_section = FALSE
				GetArraySize ($special_events_challenges.<event_num>.<challenge_num>.<songs_ar> [$special_event_song_index].sections)
				use_special_event_section_array = 1
				if (<array_Size> = 0)
					<use_special_event_section_array> = 0
					get_song_section_array
					getmarkerarraysize array = <song_section_array>
				endif
				entry = 0
				begin
				if (<use_special_event_section_array> = 1)
					recording_section = ($special_events_challenges.<event_num>.<challenge_num>.<songs_ar> [$special_event_song_index].sections [<entry>])
				else
					recording_section = <entry>
				endif
				section_time = ($<song_section_array> [<recording_section>].time)
				if (<section_time> >= <time>)
					if (<set_special_event_section> = FALSE)
						Change current_special_event_section = <recording_section>
						<set_special_event_section> = true
					endif
				endif
				continue = 0
				if check_current_special_event_percentages section_to_check = <recording_section>
					if (<recording_section> = ($current_section_array_entry))
						<continue> = 1
					endif
				else
					<recording> = 0
					<recording_countdown> = 0
				endif
				if (<continue> = 0)
					if ($current_section_array_entry = <recording_section> && $practice_start_time <= (<time> - 50))
						if (<recording_section> < $practice_end_index)
							<recording> = 1
							<recording_text> = qs(0x328a62fb)
							break
						endif
					endif
					if (<section_time> >= <time> && <recording> = 0 && <recording_countdown> = 0)
						if (<recording_section> < $practice_end_index)
							if (<section_time> - <time> <= 10000)
								time_to_format = (<section_time> + 1000)
								format_time_from_seconds time = ((<time_to_format> - <time>) / 1000.0)
								formatText TextName = recording_text qs(0x2f96f37c) d = <time_formatted>
								<recording_countdown> = 1
								break
							endif
						endif
					endif
				endif
				<entry> = (<entry> + 1)
				repeat <array_Size>
				if (<recording> = 1 || <recording_countdown> = 1)
					if ScreenElementExists \{id = special_event_recording_textp1}
						SetScreenElementProps id = special_event_recording_textp1 text = <recording_text> alpha = 1 unhide
					endif
				else
					if ScreenElementExists \{id = special_event_recording_textp1}
						SetScreenElementProps id = special_event_recording_textp1 text = <recording_text> alpha = 0
					endif
				endif
			endif
		endif
	endif
	GetSongTimeMs
	if (<time> > ($practice_end_time))
		songsetmastervolume \{vol = -100
			time = 0.4}
		if (<time> > (($practice_end_time) + ($Song_Win_Delay * 1000 - 100)))
			if ($practice_loop_section = 0)
				SpawnScriptNow \{finish_practice_song}
				return
			else
				SpawnScriptNow \{practice_loop_song}
				return
			endif
		endif
	endif
	Wait \{1
		gameframes}
	repeat
endscript

script special_event_show_miss_notes 
	if ScreenElementExists \{id = special_event_missed_note_textp1}
		if GotParam \{close}
			SetScreenElementProps \{id = special_event_missed_note_textp1
				unhide
				text = qs(0xbd725f3d)
				rgba = [
					255
					215
					0
					255
				]
				alpha = 1}
		elseif GotParam \{missed}
			SetScreenElementProps \{id = special_event_missed_note_textp1
				unhide
				text = qs(0x21250f96)
				rgba = [
					255
					20
					20
					255
				]
				alpha = 1}
		elseif GotParam \{good}
			SetScreenElementProps \{id = special_event_missed_note_textp1
				unhide
				text = qs(0x10e991b1)
				rgba = [
					20
					200
					20
					255
				]
				alpha = 1}
		endif
		Wait \{0.52
			Seconds}
		special_event_missed_note_textp1 :legacydomorph \{alpha = 0
			time = 1}
	endif
endscript

script practice_loop_song 
	StopRendering
	removeplayerserverfretbariterator \{fretbar_id = createfretbar
		id = player1_status}
	removeplayerserverfretbariterator \{fretbar_id = prefretbarevent
		id = player1_status}
	removeplayerserverfretbariterator \{fretbar_id = fretbarevent
		id = player1_status}
	removeplayerserverfretbariterator \{fretbar_id = createvocalmarker
		id = player1_status}
	clearplayerservermessages
	LaunchGemEvent \{event = kill_objects}
	flushplayerservermessages
	KillSpawnedScript \{Name = GuitarEvent_MissedNote}
	KillSpawnedScript \{Name = GuitarEvent_UnnecessaryNote}
	KillSpawnedScript \{Name = GuitarEvent_HitNotes}
	KillSpawnedScript \{Name = GuitarEvent_HitNote}
	KillSpawnedScript \{Name = GuitarEvent_StarPowerOn}
	KillSpawnedScript \{Name = GuitarEvent_StarPowerOff}
	KillSpawnedScript \{Name = GuitarEvent_StarHitNote}
	KillSpawnedScript \{Name = GuitarEvent_StarSequenceBonus}
	KillSpawnedScript \{Name = GuitarEvent_StarMissNote}
	KillSpawnedScript \{Name = GuitarEvent_WhammyOn}
	KillSpawnedScript \{Name = GuitarEvent_WhammyOff}
	KillSpawnedScript \{Name = GuitarEvent_StarWhammyOn}
	KillSpawnedScript \{Name = GuitarEvent_StarWhammyOff}
	KillSpawnedScript \{Name = GuitarEvent_Note_Window_Open}
	KillSpawnedScript \{Name = GuitarEvent_Note_Window_Close}
	KillSpawnedScript \{Name = GuitarEvent_crowd_poor_medium}
	KillSpawnedScript \{Name = GuitarEvent_crowd_medium_good}
	KillSpawnedScript \{Name = GuitarEvent_crowd_medium_poor}
	KillSpawnedScript \{Name = GuitarEvent_crowd_good_medium}
	KillSpawnedScript \{Name = GuitarEvent_CreateFirstGem}
	KillSpawnedScript \{Name = highway_pulse_black}
	KillSpawnedScript \{Name = GuitarEvent_HitNote_Spawned}
	KillSpawnedScript \{Name = hit_note_fx}
	KillSpawnedScript \{Name = Do_StarPower_StageFX}
	KillSpawnedScript \{Name = Do_StarPower_Camera}
	KillSpawnedScript \{Name = first_gem_fx}
	KillSpawnedScript \{Name = gem_iterator}
	KillSpawnedScript \{Name = gem_array_stepper}
	KillSpawnedScript \{Name = gem_array_events}
	KillSpawnedScript \{Name = gem_step}
	KillSpawnedScript \{Name = gem_step_end}
	KillSpawnedScript \{Name = Strum_iterator}
	KillSpawnedScript \{Name = FretPos_iterator}
	KillSpawnedScript \{Name = FretFingers_iterator}
	KillSpawnedScript \{Name = drumkit_anim_iterator}
	KillSpawnedScript \{Name = WatchForStartPlaying_iterator}
	KillSpawnedScript \{Name = faceoff_anim_iterator}
	band_disabletempoiterator
	KillSpawnedScript \{Name = tempo_matching_iterator}
	KillSpawnedScript \{Name = momentcamera_playanim_spawned}
	KillSpawnedScript \{Name = fretbar_update_tempo}
	KillSpawnedScript \{Name = fretbar_update_hammer_on_tolerance}
	KillSpawnedScript \{Name = check_note_hold}
	KillSpawnedScript \{Name = net_check_note_hold}
	KillSpawnedScript \{Name = gem_scroller}
	KillSpawnedScript \{Name = button_checker}
	KillSpawnedScript \{Name = check_buttons}
	notemap_deinit
	reset_score \{player_status = player1_status}
	reset_buffer = 2000
	if (($player1_status.part) = vocals)
		resetvocalhighwayindexes \{Player = 1}
		reset_buffer = 4000
	endif
	setslomo \{0.001}
	reset_song_time starttime = ($practice_start_time - <reset_buffer>)
	SetArrayElement \{ArrayName = currently_holding
		globalarray
		index = 0
		NewValue = 0}
	SpawnScriptLater \{update_score_fast
		params = {
			player_status = player1_status
		}}
	SpawnScriptNow gem_scroller params = {
		Player = 1
		player_status = player1_status
		player_text = 'p1'
		training_mode = 0
		song_name = ($current_song)
		difficulty = ($player1_status.difficulty)
		difficulty2 = ($player2_status.difficulty)
		looping = 1
	}
	if (($player1_status.part) != vocals)
		SpawnScriptNow button_checker params = {
			Player = 1
			player_status = player1_status
			player_text = 'p1'
			training_mode = 0
			song_name = ($current_song)
			difficulty = ($player1_status.difficulty)
			difficulty2 = ($player2_status.difficulty)
			looping = 1
		}
	endif
	calc_songscoreinfo \{player_status = player1_status}
	SpawnScriptNow \{practice_update}
	Wait \{1
		gameframe}
	songpause
	SetSeekPosition_Song position = ($practice_start_time - <reset_buffer>)
	songunpause
	setslomo \{$current_speedfactor}
	pausegh3
	Wait \{1
		gameframe}
	unpausegh3
	StartRendering
endscript

script finish_practice_song 
	KillSpawnedScript \{Name = practice_update}
	Wait \{60
		gameframes}
	disable_pause
	ui_event_wait_for_safe
	ui_event_get_top
	if NOT (<base_name> = 'gameplay')
		ui_event_block \{event = menu_back
			data = {
				state = Uistate_gameplay
			}}
	endif
	if ($special_event_stage != 0)
		if ($current_special_event_num = 1)
			kill_gem_scroller
			if ($special_event_stage = 1)
				Change \{special_event_stage = 2}
			endif
			generic_event_choose \{state = uistate_special_event_win
				no_sound}
		elseif ($current_special_event_num = 2)
			kill_gem_scroller
			create_special_event_win_menu \{check_special_event_and_return}
			reset_special_event \{num = 2}
			generic_event_choose \{state = uistate_special_event_win
				no_sound}
		endif
	else
		0xf7e0f992 \{Wait}
		menu_start_transition
		generic_event_choose \{state = uistate_song_breakdown
			data = {
				for_practice = 1
			}
			no_sound}
	endif
	ui_event_wait_for_safe
endscript

script practice_audio_filter 
endscript

script shut_down_practice_mode 
	KillSpawnedScript \{Name = practice_update}
	if ($game_mode = training)
		setsoundbussparams {Crowd = {vol = ($default_BussSet.Crowd.vol)}}
	endif
endscript
practice_calibrate_speedfactor = 1.0

script practice_calibrate_speedfactor_store 
	Change practice_calibrate_speedfactor = ($current_speedfactor)
	Change \{current_speedfactor = 1.0}
	setslomo \{1.0}
endscript

script practice_calibrate_restart_song 
	Change current_speedfactor = ($practice_calibrate_speedfactor)
	setslomo \{$current_speedfactor}
	practice_restart_song
endscript

script end_practice_song_slomo 
	Change \{current_speedfactor = 1.0}
	setslomo \{$current_speedfactor}
	Change \{structurename = PitchShiftSlow1
		pitch = 1.0}
endscript

script end_practice_song 
	printf \{qs(0x4946182f)}
	end_practice_song_slomo
	SpawnScriptNow \{xenon_singleplayer_session_complete_uninit}
	Change \{current_starttime = 0}
	kill_gem_scroller
endscript
