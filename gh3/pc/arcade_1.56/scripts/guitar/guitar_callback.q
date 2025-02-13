
script timer_callback_script 
	if ($input_mode = Play)
		playback_timer
	endif
endscript

script script_callback_script 
	script_callback_script_cfunc
	guitar_tilt_debug_display
	guitar_sensor_debug
	UpdateGemMovers
endscript

script script_postcallback_script 
	UpdateGuitarFuncs
	if NOT GameIsPaused
		GetDeltaTime
		Update2DParticleSystems delta_time = <delta_time>
		RunQueuedPulseEvents
		CheckBossCutoff
		if ($output_gpu_log = 1)
			if isps3
				GetProfileData \{cpu = 2
					Name = gpu}
			else
				GetProfileData \{cpu = 6
					Name = gpu}
			endif
			milliseconds = (<microseconds> / 1000.0)
			GetSongTime
			formatText TextName = text "GPU Time; %s; %m" s = <songtime> m = <milliseconds> DontAssertForChecksums
			TextOutput text = <text>
		endif
	endif
endscript

script screenelement_postcallback_script 
	update_highway_prepass
endscript
