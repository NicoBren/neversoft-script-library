qp_multiplier_time_info = {
	Name = 'qp_multiplier_time'
	goal_type = quickplay_challenge
	constants = {
		song_complete = challenge_output_grade_marks
		target_value = Duration
		target_multiplier = 4
		desc_txt = qs(0x33f487bc)
	}
	data = {
		percent_targets = [
			40
			65
			80
		]
		calculated_targets = [
			-1
			-1
			-1
		]
		valid_sections = [
		]
	}
	$g_qp_multiplier_time_core
}
qp_multiplier_time_band_info = {
	Name = 'qp_multiplier_time_band'
	goal_type = quickplay_challenge
	goal_subtype = Band
	constants = {
		song_complete = challenge_output_grade_marks
		target_value = Duration
		target_multiplier = 5
		desc_txt = qs(0x33f487bc)
	}
	data = {
		percent_targets = [
			5
			10
			20
		]
		calculated_targets = [
			-1
			-1
			-1
		]
		valid_sections = [
		]
	}
	$g_qp_multiplier_time_core
}
g_qp_multiplier_time_core = {
	player_data = {
		current_progress = 0
		section_base_value = 0
		previous_progress = 0
	}
	initial_data = {
		current_progress = 0
	}
	checkpoints = [
		{
			Name = 'main'
			tools = [
				{
					Name = 'watcher'
					Type = var_watcher
					var_updated = qp_multiplier_time_watcher_update
					vars = [
						{
							Source = playerinfo
							var = current_run
							Type = int
						}
					]
				}
				{
					Name = 'watcher_band'
					Type = var_watcher
					var_updated = qp_multiplier_time_watcher_update_band
					vars = [
						{
							Source = bandinfo
							var = current_mult
							Type = float
						}
					]
				}
				{
					Name = 'timer'
					Type = Timer
					start_time = 0
					end_time = 600
					dont_start_on_enter
					dont_show_on_enter
					dont_show_expire_message
					tic = qp_multiplier_time_main_timer_tic
					tic_interval_ms = 100
				}
				{
					Name = 'progress_watcher'
					Type = var_watcher
					var_updated = challenge_qp_evaluate_progress
					vars = [
						{
							Source = goalplayerdata
							var = current_progress
							Type = float
						}
						{
							Source = goaldata
							var = current_progress
							Type = float
						}
					]
				}
				{
					Name = 'section'
					Type = section_watcher
					section_marker_hit = qp_multiplier_time_section_marker_hit
				}
			]
		}
	]
}

script qp_multiplier_time_watcher_update 
	if challenge_is_band_subtype goal_id = <goal_id>
		return
	endif
	if NOT challenge_qp_current_section_is_valid goal_id = <goal_id>
		gman_timerfunc goal = <goal_id> tool = Timer func = stop
		return
	endif
	get_current_multiplier Player = <assigned_player>
	gman_getconstant goal = <goal_id> Name = target_multiplier return_name = target_multiplier
	if (<multiplier> >= <target_multiplier>)
		gman_timerfunc goal = <goal_id> tool = Timer func = start
	else
		gman_timerfunc goal = <goal_id> tool = Timer func = stop
	endif
endscript

script qp_multiplier_time_watcher_update_band 
	if NOT challenge_is_band_subtype goal_id = <goal_id>
		return
	endif
	if NOT challenge_qp_current_section_is_valid goal_id = <goal_id>
		gman_timerfunc goal = <goal_id> tool = Timer func = stop
		return
	endif
	gman_getconstant goal = <goal_id> Name = target_multiplier return_name = target_multiplier
	if (<current_value> >= <target_multiplier>)
		gman_timerfunc goal = <goal_id> tool = Timer func = start
	else
		gman_timerfunc goal = <goal_id> tool = Timer func = stop
	endif
endscript

script qp_multiplier_time_main_timer_tic 
	<0xc5c763d3> = (<time_ms> / 1000)
	if challenge_is_band_subtype goal_id = <goal_id>
		gman_setdata goal = <goal_id> params = {current_progress = <0xc5c763d3>}
	else
		gman_setdata goal = <goal_id> Player = <assigned_player> params = {current_progress = <0xc5c763d3>}
	endif
endscript

script qp_multiplier_time_section_marker_hit 
	if challenge_is_band_subtype goal_id = <goal_id>
		getfirstplayer
		getplayerinfo <Player> Band
		getbandinfo <Band> current_mult
		qp_multiplier_time_watcher_update_band goal_id = <goal_id> current_value = <current_mult> assigned_player = <assigned_player>
	else
		qp_multiplier_time_watcher_update goal_id = <goal_id> assigned_player = <assigned_player>
	endif
endscript
