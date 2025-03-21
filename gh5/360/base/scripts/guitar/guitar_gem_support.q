
script guitar_support_init_crowd 
	create_crowd_models
	Crowd_StageDiver_Hide
endscript

script guitar_support_load_anims 
	if ($use_old_system_setup = 1)
		anim_paks_set_state state = <state>
	endif
	yield
endscript

script guitar_support_init_band \{async = 1}
	if ($use_old_system_setup = 1)
		create_all_camera_lock_targets
		if ((<loading_transition> = 0) || $game_mode = freeplay)
			yield \{'create_all_camera_lock_targets'}
			if ($game_mode != tutorial && $calibrate_lag_enabled = 0 && $game_mode != practice)
				yield
				prepare_for_pending_animpaks
				if ($game_mode = freeplay)
					persistent_band_prepare_for_song \{async = 1}
				else
					persistent_band_prepare_for_song async = <async>
				endif
				yield \{'create_band2'}
			endif
			yield
			yield
			yield
		endif
		band_clearanimtempo
		yield
	else
		cas_destroy_all_characters
		create_all_camera_lock_targets
		if ($game_mode != tutorial)
			persistent_band_prepare_for_song async = <async>
		endif
		band_clearanimtempo
	endif
endscript
load_song_synchronous = true

script guitar_support_load_song 
	load_songqpak song_name = <song> async = 1
	if NOT (<song> = jamsession)
		if ($notetracker_quickplay_active = 0)
			drum_kit_index = 0
			get_song_drum_kit_index song = <song>
			Change jam_current_drum_kit = <drum_kit_index>
			loaddrumkitall percussion = 0 song = <song> async = 1
		endif
		initsongaudiosystem
		if ($load_song_synchronous = true)
			preload_song song_name = <song> starttime = <song_start_time>
			Change \{load_song_synchronous = FALSE}
		else
			SpawnScriptNow preload_song params = {song_name = <song> starttime = <song_start_time>}
		endif
	else
		printf \{chanel = sfx
			qs(0xada742c0)}
		AppendSuffixToChecksum Base = ($SFX_Background_Current_Checksum) SuffixString = '_BK'
		backchecksumname = <appended_id>
		stopsound <backchecksumname> time = 0.5
		printf \{chanel = sfx
			qs(0x01013a15)}
		Change \{crowd_in_jam_mode_song_state = 1}
		printf \{chanel = sfx
			qs(0x359bd552)}
		One_Shot_SoundEvent \{SoundEvent = DoNothing_OneShot
			waitTime = 5
			immediate = 1}
		if notetracker_is_using_stream
			preload_mp3_song
		endif
	endif
	yield \{'preload_song'}
	cache_song_end_time
	yield
	if ($notetracker_quickplay_active = 0)
		if (<song> = jamsession)
			getsonginfo
			GetArraySize \{$drum_kits}
			if ((<drum_kit> >= <array_Size>) || (<drum_kit> < 0))
				<drum_kit> = 0
			endif
			Change jam_current_drum_kit = <drum_kit>
			Change jam_current_percussion_kit = <percussion_kit>
			loaddrumkitall \{async = 1}
			if NOT notetracker_is_using_stream
				musicstudio_instrument_loadall {
					keyboard_index = <keyboard_sound>
					guitar_index = <guitar_sound>
					bass_index = <bass_sound>
				}
				if GotParam \{bass_kit}
					GetArraySize \{$pause_bass_kit_options}
					if ((<bass_kit> >= <array_Size>) || (<bass_kit> < 0))
						<bass_kit> = 0
					endif
					Change bass_kit_mode = <bass_kit>
					loadbasskit bass_kit = <bass_kit>
				else
					setsonginfo \{bass_kit = 0}
					Change \{bass_kit_mode = 0}
				endif
			endif
		else
		endif
		yield \{'LoadDrumKitAll'}
	endif
endscript

script guitar_support_load_hud 
	if (<loading_transition> = 0)
		setup_bg_viewport
		KillCamAnim \{all}
		if ($game_mode = freeplay)
			StopRendering
		endif
		create_cameracuts <...> in_game = 1
	else
	endif
	yield \{'setup_bg_viewport2'}
	if ($debug_showmeasures = On)
		toggle_showmeasures \{for_autolaunch}
		toggle_showmeasures \{for_autolaunch}
		debug_measures_text :se_setprops \{unhide
			text = qs(0x9f7db74f)}
	endif
	if ($debug_showsongtime = On)
		toggle_showsongtime \{for_autolaunch}
		toggle_showsongtime \{for_autolaunch}
	endif
	if ($debug_showsongname = On)
		toggle_showsongname \{for_autolaunch}
		toggle_showsongname \{for_autolaunch}
	endif
	if ($debug_showsongstars = On)
		toggle_showsongstars \{for_autolaunch}
		toggle_showsongstars \{for_autolaunch}
		debug_songstars_text :se_setprops \{unhide
			text = qs(0xfbf320c8)}
	endif
	yield
	if (<loading_transition> = 0)
		if ($game_mode = tutorial || $game_mode = practice)
			if ($current_bandname_viewport = None)
				create_movie_viewport
			endif
		else
			create_movie_viewport
		endif
	endif
endscript

script guitar_support_init_audio 
	song_quiet_reset_sfx_balance restarting = <restarting> loading_transition = <loading_transition>
	gh3_adjustcrowdloopbacktodefault restarting = <restarting>
	yield
	gameevent_venueenter
	guitarevent_venueenter
endscript

script guitar_support_init_venue 
	if (<loading_transition> = 0)
		if ($game_mode != tutorial)
			if NOT ($game_mode = practice)
				apply_band_logo_to_venue \{step = build}
			endif
		endif
		yield \{'apply_band_logo_to_venue'}
	endif
	Change \{lightshow_allow_mood_changes = true}
	Change \{lightshow_last_mood_requested = None}
	yield
endscript

script guitar_init_lefty_highway 
	getplayerinfo <Player> lefty_flip
	setplayerinfo <Player> lefthanded_gems = <lefty_flip>
	setplayerinfo <Player> lefthanded_button_ups = <lefty_flip>
endscript

script guitar_support_init_players 
	setplayerinfo \{1
		bot_pattern = 0}
	setplayerinfo \{2
		bot_pattern = 0}
	setplayerinfo \{3
		bot_pattern = 0}
	setplayerinfo \{4
		bot_pattern = 0}
	setplayerinfo \{1
		bot_strum = 0}
	setplayerinfo \{2
		bot_strum = 0}
	setplayerinfo \{3
		bot_strum = 0}
	setplayerinfo \{4
		bot_strum = 0}
	gamemode_gettype
	if (<Type> != freeplay)
		setplayerinfo \{1
			interactive = 1}
		setplayerinfo \{2
			interactive = 1}
		setplayerinfo \{3
			interactive = 1}
		setplayerinfo \{4
			interactive = 1}
		setplayerinfo \{1
			scoring = 1}
		setplayerinfo \{2
			scoring = 1}
		setplayerinfo \{3
			scoring = 1}
		setplayerinfo \{4
			scoring = 1}
	endif
	yield
	tap_prototype_off
	init_play_log
	yield
	Progression_SetProgressionNodeFlags
	yield \{'Nodeflags'}
	get_current_songs_struct
	getplayerinfo \{2
		bot_play}
	getplayerinfo \{2
		is_local_client}
	if ((<bot_play> = 1) || (<is_local_client> = 0))
		getplayerinfo \{2
			controller}
		setup_bot_controller \{Player = 2}
		printf \{channel = log
			qs(0xb7d6cb93)}
	endif
	if playerinfoequals \{1
			bot_play = 1}
		setup_bot_controller \{Player = 1}
		printf \{channel = log
			qs(0x9cfb9850)}
	endif
	getplayerinfo \{3
		bot_play}
	getplayerinfo \{3
		is_local_client}
	if ((<bot_play> = 1) || (<is_local_client> = 0))
		setup_bot_controller \{Player = 3}
		printf \{channel = log
			qs(0xaecdfad2)}
	endif
	getplayerinfo \{4
		bot_play}
	getplayerinfo \{4
		is_local_client}
	if ((<bot_play> = 1) || (<is_local_client> = 0))
		setup_bot_controller \{Player = 4}
		printf \{channel = log
			qs(0xe18c6c15)}
	endif
	yield
	getfirstplayer
	getplayerinfo <Player> difficulty
	printf \{qs(0x1157f54a)}
	printf \{qs(0x1157f54a)}
	printf \{qs(0x1157f54a)}
	printf qs(0x5f297a5b) s = <song> d = <difficulty>
	printf \{qs(0x1157f54a)}
	printf \{qs(0x1157f54a)}
	printf \{qs(0x1157f54a)}
	yield
	Change \{structurename = musician1_info
		stance = Stance_A}
	Change \{structurename = musician1_info
		next_stance = Stance_A}
	Change \{structurename = musician1_info
		current_anim = Idle}
	Change \{structurename = musician1_info
		cycle_anim = true}
	Change \{structurename = musician1_info
		next_anim = None}
	Change \{structurename = musician1_info
		playing_missed_note = FALSE}
	yield
	Change \{structurename = musician2_info
		stance = Stance_A}
	Change \{structurename = musician2_info
		next_stance = Stance_A}
	Change \{structurename = musician2_info
		current_anim = Idle}
	Change \{structurename = musician2_info
		cycle_anim = true}
	Change \{structurename = musician2_info
		next_anim = None}
	Change \{structurename = musician2_info
		playing_missed_note = FALSE}
	yield
	Change \{structurename = musician3_info
		stance = Stance_A}
	Change \{structurename = musician3_info
		next_stance = Stance_A}
	Change \{structurename = musician3_info
		current_anim = Idle}
	Change \{structurename = musician3_info
		cycle_anim = true}
	Change \{structurename = musician3_info
		next_anim = None}
	Change \{structurename = musician3_info
		playing_missed_note = FALSE}
	yield
	Change \{structurename = musician4_info
		stance = Stance_A}
	Change \{structurename = musician4_info
		next_stance = Stance_A}
	Change \{structurename = musician4_info
		current_anim = Idle}
	Change \{structurename = musician4_info
		cycle_anim = true}
	Change \{structurename = musician4_info
		next_anim = None}
	Change \{structurename = musician4_info
		playing_missed_note = FALSE}
	yield
	reset_score \{Player = 1}
	reset_score \{Player = 2}
	reset_score \{Player = 3}
	reset_score \{Player = 4}
	resetbandinfo
	yield \{'reset_score'}
	getnumplayersingame
	if (<num_players> > 0)
		getfirstplayer
		begin
		getplayerinfo <Player> difficulty
		yield
		getplayerinfo <Player> is_onscreen out = player_on_screen
		setplayerinfo <Player> guitar_volume = 100
		setplayerinfo <Player> drum_volume1 = 100
		setplayerinfo <Player> drum_volume2 = 100
		setplayerinfo <Player> drum_volume3 = 100
		setplayerinfo <Player> drum_volume4 = 100
		if (<player_on_screen> = 1)
			UpdateGuitarVolume
		endif
		yield
		GetGlobalTags \{user_options}
		guitar_init_lefty_highway Player = <Player>
		yield
		getplayerinfo <Player> controller
		get_resting_whammy_position controller = <controller>
		if GotParam \{resting_whammy_position}
			setplayerinfo <Player> resting_whammy_position = <resting_whammy_position>
		endif
		get_star_power_position controller = <controller>
		if GotParam \{star_power_position}
			setplayerinfo <Player> star_tilt_threshold = <star_power_position>
		endif
		yield
		if ($output_gpu_log = 1)
			TextOutputStart
		endif
		yield
		if (($tutorial_disable_hud = 0) && ($end_credits = 0))
			crowd_reset <...>
		endif
		yield \{'crowd_reset'}
		star_power_reset Player = <Player>
		yield
		getplayerinfo <Player> cheat_hyperspeed_value
		setplayerinfo <Player> Hyperspeed = <cheat_hyperspeed_value>
		yield
		difficulty_setup Player = <Player> difficulty = <difficulty>
		getnextplayer Player = <Player>
		repeat <num_players>
	endif
endscript
g_system_name = [
	venue
	Band
	Crowd
	Camera
	stageshow
	musicmonitor
]
g_system_status = [
	OFF
	OFF
	OFF
	OFF
	OFF
	OFF
]

script set_game_system_status 
	GetArraySize \{$g_system_name}
	<ii> = 0
	begin
	if (<system> = (($g_system_name) [<ii>]))
		SetArrayElement ArrayName = g_system_status globalarray index = <ii> NewValue = <state>
	endif
	<ii> = (<ii> + 1)
	repeat <array_Size>
endscript
use_old_system_setup = 1

script dump_system_status 
	GetArraySize \{$g_system_name}
	system_array_size = <array_Size>
	printf \{channel = system
		qs(0xaa9ecf0f)}
	printf channel = system qs(0x928e7026) a = <system_array_size>
	printf \{channel = system
		qs(0xaa9ecf0f)}
	s = 0
	begin
	<Name> = ($g_system_name [<s>])
	<status> = ($g_system_status [<s>])
	printf channel = system qs(0xf5416043) a = <Name> b = <status>
	<s> = (<s> + 1)
	repeat <system_array_size>
	printf \{channel = system
		qs(0xaa9ecf0f)}
endscript

script update_gameplay_systems 
	printf \{channel = system
		qs(0xaa9ecf0f)}
	printf channel = system qs(0xcba463f0) a = <base_name>
	<status_changed> = 0
	if GotParam \{systems}
		GetArraySize \{$g_system_name}
		system_array_size = <array_Size>
		s = 0
		begin
		<Name> = ($g_system_name [<s>])
		<required_status> = OFF
		GetArraySize <systems>
		i = 0
		begin
		active_name = (<systems> [<i>])
		if (<active_name> = <Name>)
			<required_status> = On
			break
		endif
		<i> = (<i> + 1)
		repeat <array_Size>
		<actual_status> = ($g_system_status [<s>])
		if NOT (<actual_status> = <required_status>)
			SetArrayElement ArrayName = g_system_status globalarray index = <s> NewValue = <required_status>
			<status_changed> = 1
			if (<required_status> = On)
				ExtendCrc <Name> '_system_init' out = init_script
				printf channel = system qs(0x16ec897a) a = <Name>
				if ScriptExists <init_script>
					<init_script>
				endif
			else
				ExtendCrc <Name> '_system_deinit' out = deinit_script
				printf channel = system qs(0x2506b6d9) a = <Name>
				if ScriptExists <deinit_script>
					<deinit_script>
				endif
			endif
		endif
		<s> = (<s> + 1)
		repeat <system_array_size>
	endif
	if (<status_changed> = 1)
		dump_system_status
	else
		printf \{channel = system
			qs(0x7bbae32e)}
		printf \{channel = system
			qs(0xaa9ecf0f)}
	endif
endscript

script band_system_init 
	if ($use_old_system_setup = 0)
		guitar_support_init_band \{async = 0}
	endif
endscript

script band_system_deinit 
endscript

script venue_system_init 
	Load_Venue \{block_scripts = 1}
endscript

script venue_system_deinit 
endscript

script crowd_system_init 
	if ($calibrate_lag_enabled = 0 && $game_mode != practice && $game_mode != tutorial)
		guitar_support_init_crowd
	endif
endscript

script crowd_system_deinit 
	destroy_crowd_models
endscript

script musicmonitor_system_init 
	SpawnScriptNow \{menu_song_monitor}
endscript

script musicmonitor_system_deinit 
	SpawnScriptNow \{stop_menu_song_monitor}
endscript

script stageshow_system_init 
	KillSpawnedScript \{Name = menu_lightshow}
	SpawnScriptNow \{menu_lightshow}
	LightShow_InitEventMappings
	lightshow_dummyloop
	SpawnScriptNow \{reset_mainmenu_camera}
	prepare_band_for_main_menu
endscript

script stageshow_system_deinit 
	KillSpawnedScript \{Name = menu_lightshow}
	lightshow_notingameplay_setmood \{mood = band_lobby}
endscript
