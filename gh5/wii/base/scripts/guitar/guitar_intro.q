intro_sequence_props = {
	song_title_pos = (255.0, 75.0)
	performed_by_pos = (255.0, 135.0)
	song_artist_pos = (255.0, 150.0)
	song_title_start_time = -6500
	song_title_fade_time = 700
	song_title_on_time = 3000
	highway_start_time = -2000
	highway_move_time = 2000
	button_ripple_start_time = -800
	button_ripple_per_button_time = 100
	hud_start_time = -400
	hud_move_time = 200
}
fastintro_sequence_props = {
	song_title_pos = (255.0, 75.0)
	performed_by_pos = (255.0, 135.0)
	song_artist_pos = (255.0, 150.0)
	song_title_start_time = -6700
	song_title_fade_time = 700
	song_title_on_time = 3000
	highway_start_time = -2000
	highway_move_time = 2000
	button_ripple_start_time = -800
	button_ripple_per_button_time = 100
	hud_start_time = -400
	hud_move_time = 200
}
practice_sequence_props = {
	song_title_pos = (255.0, 75.0)
	performed_by_pos = (255.0, 135.0)
	song_artist_pos = (255.0, 150.0)
	song_title_start_time = -6500
	song_title_fade_time = 700
	song_title_on_time = 3000
	highway_start_time = -3000
	highway_move_time = 2000
	button_ripple_start_time = -1800
	button_ripple_per_button_time = 100
	hud_start_time = -1400
	hud_move_time = 200
}
immediate_sequence_props = {
	song_title_pos = (255.0, 75.0)
	performed_by_pos = (255.0, 135.0)
	song_artist_pos = (255.0, 150.0)
	song_title_start_time = 0
	song_title_fade_time = 700
	song_title_on_time = 0
	highway_start_time = 0
	highway_move_time = 0
	button_ripple_start_time = 0
	button_ripple_per_button_time = 0
	hud_start_time = 0
	hud_move_time = 0
}
current_intro = $fast_intro_sequence_props
g_playing_intro = 0

script play_intro 
	if ($g_playing_intro)
		printf \{qs(0xaeeaca81)}
		return
	endif
	if ($freestyle_active = 1)
		return
	endif
	Change \{g_playing_intro = 1}
	start_drummer_cameras
	KillSpawnedScript \{Name = GuitarEvent_SongFailed_Spawned}
	if GotParam \{FAST}
		Change \{current_intro = $fastintro_sequence_props}
	elseif GotParam \{practice}
		Change \{current_intro = $practice_sequence_props}
	else
		Change \{current_intro = $intro_sequence_props}
	endif
	show_song_info = 1
	if ($g_in_tutorial = 1)
		show_song_info = 0
	endif
	gamemode_gettype
	if ($calibrate_lag_enabled = 1)
		show_song_info = 0
	endif
	if (<show_song_info> = 1)
		SpawnScriptNow \{intro_song_info
			id = intro_scripts}
	endif
	if (is_roadie_battle_mode)
		SpawnScriptNow \{roadie_battle_start_game_spawned}
	endif
	intro_check_for_celeb_intro_ui
	if NOT ($Cheat_PerformanceMode = 1 && $is_network_game = 0)
		SpawnScriptNow \{intro_highway_move
			id = intro_scripts}
	endif
	getnumplayersingame \{on_screen}
	if (<num_players_shown> > 0)
		getfirstplayer \{on_screen}
		begin
		SpawnScriptNow intro_buttonup_ripple params = <...> id = intro_scripts
		getnextplayer on_screen Player = <Player>
		repeat <num_players_shown>
	endif
	if (($tutorial_disable_hud = 0) && ($end_credits = 0))
		SpawnScriptNow \{intro_hud_move
			id = intro_scripts}
	endif
	bandmanager_setplayingintroanims
	Crowd_AllPlayAnim \{anim = Idle}
endscript

script destroy_intro 
	printf \{qs(0x1055cbf6)}
	KillSpawnedScript \{id = intro_scripts}
	KillSpawnedScript \{Name = Song_Intro_Kick_SFX_Waiting}
	KillSpawnedScript \{Name = Song_Intro_Highway_Up_SFX_Waiting}
	KillSpawnedScript \{Name = move_highway_2d}
	KillSpawnedScript \{Name = intro_buttonup_ripple}
	KillSpawnedScript \{Name = intro_hud_move}
	DestroyScreenElement \{id = intro_container}
	ui_event_get_top
	if NOT (<base_name> = 'pausemenu')
		getnumplayersingame
		if (<num_players> > 0)
			getfirstplayer
			begin
			getplayerinfo <Player> controller
			EnableInput controller = <controller>
			getnextplayer Player = <Player>
			repeat <num_players>
		endif
	endif
	Change \{g_playing_intro = 0}
endscript

script intro_buttonup_ripple 
	getplayerinfo <Player> controller
	EnableInput OFF controller = <controller>
	begin
	GetSongTimeMs
	if ($current_intro.button_ripple_start_time + $current_starttime < <time>)
		break
	endif
	WaitOneGameFrame
	repeat
	if ($current_intro.button_ripple_per_button_time = 0)
		ui_event_get_top
		if NOT (<base_name> = 'pausemenu')
			EnableInput controller = <controller>
		endif
		return
	endif
	gamemode_gettype
	if (<Type> = freeplay)
		if playerinfoequals <Player> freeplay_state = dropped
			EnableInput controller = <controller>
			return
		endif
	endif
	GetArraySize \{$gem_colors}
	all_vocals = 1
	getnumplayersingame
	if (<num_players> > 0)
		getfirstplayer \{out = i}
		begin
		if playerinfoequals <i> part = vocals
			all_vocals = 0
			break
		endif
		getnextplayer Player = <i> out = i
		repeat <num_players>
	endif
	SpawnScriptNow highway_ripple_ui_sfx params = {<...>}
	extendcrcplayer button_up_pixel_array <Player> out = pixel_array
	buttonup_count = 0
	begin
	Wait ($current_intro.button_ripple_per_button_time / 1000.0) Seconds
	array_count = 0
	begin
	Color = ($gem_colors [<array_count>])
	if (<array_count> = <buttonup_count>)
		SetArrayElement ArrayName = <pixel_array> globalarray index = <array_count> NewValue = $button_up_pixels
	endif
	array_count = (<array_count> + 1)
	repeat <array_Size>
	buttonup_count = (<buttonup_count> + 1)
	repeat (<array_Size> + 1)
	ui_event_get_top
	if NOT (<base_name> = 'pausemenu')
		EnableInput controller = <controller>
	endif
endscript

script intro_song_info 
	intro_song_info_gh5 <...>
endscript

script intro_song_info_gh5 
	begin
	GetSongTimeMs
	if ($current_intro.song_title_start_time + $current_starttime < <time>)
		break
	endif
	WaitOneGameFrame
	repeat
	if ($current_intro.song_title_on_time = 0)
		return
	endif
	if ScreenElementExists \{id = intro_container}
		DestroyScreenElement \{id = intro_container}
	endif
	gman_songtool_getcurrentsong
	get_song_title song = <current_song>
	get_song_artist_text song = <current_song>
	get_song_artist song = <current_song>
	get_song_original_artist song = <current_song>
	if (<current_song> = jamsession)
		year = 2008
		if ui_event_exists_in_stack \{Name = 'setlist'}
			gman_songfunc \{func = get_current_song_jam_index}
			GetArraySize ($jam_curr_directory_listing) param = directory_size
			if (<current_song_jam_index> > 0 && <current_song_jam_index> < <directory_size>)
				<year> = ($jam_curr_directory_listing [<current_song_jam_index>].year)
			endif
		elseif ui_event_exists_in_stack \{Name = 'jam'}
			jam_struct = ($jamsession_songlist_props.jamsession)
			year = (<jam_struct>.year_num)
		endif
		if NOT GotParam \{song_artist}
			get_savegame_from_controller controller = ($primary_controller)
			song_artist = $wii_jam_custom_song
			if GotParam \{Name}
				if (<Name> != qs(0x03ac90f0))
					song_artist = <Name>
				endif
			endif
			formatText TextName = year_text qs(0x06d54ab3) d = <year>
			song_artist = (<song_artist> + <year_text>)
		endif
	endif
	if (<original_artist> = 1)
		CreateScreenElement {
			parent = root_window
			id = intro_container
			Type = descinterface
			desc = 'song_intro'
			alpha = 0
			intro_info_stacker_alpha = 1
			intro_cover_info_stacker_alpha = 0
			z_priority = 500
			intro_artist_text = <song_artist>
			intro_title_text = <song_title>
			intro_performed_text = <song_artist_text>
		}
	else
		get_cover_artist_text song = <current_song>
		get_covered_by_text song = <current_song>
		CreateScreenElement {
			parent = root_window
			id = intro_container
			Type = descinterface
			desc = 'song_intro'
			alpha = 0
			intro_info_stacker_alpha = 0
			intro_cover_info_stacker_alpha = 1
			z_priority = 500
			intro_artist_text = <song_artist>
			intro_title_text = <song_title>
			intro_performed_text = <song_artist_text>
			cover_intro_performed_text = <covered_by_text>
			cover_intro_artist_text = <cover_artist_text>
		}
	endif
	intro_container :se_setprops alpha = 1 time = ($current_intro.song_title_fade_time / 1000.0)
	intro_container :se_waitprops
	Wait ($current_intro.song_title_on_time / 1000.0) Seconds
	intro_container :se_setprops alpha = 0 time = ($current_intro.song_title_fade_time / 1000.0)
	intro_container :se_waitprops
	DestroyScreenElement \{id = intro_container}
endscript

script intro_highway_move 
	gamemode_gettype
	begin
	GetSongTimeMs
	if ($current_intro.highway_start_time + $current_starttime < <time>)
		break
	endif
	WaitOneGameFrame
	repeat
	all_vocals = 1
	all_instrument = 1
	highway_up_sfx = guitar
	getnumplayersingame
	if (<num_players> > 0)
		getfirstplayer
		begin
		skip_player = FALSE
		if (<Type> = freeplay)
			if playerinfoequals <Player> freeplay_state = dropped
				skip_player = true
			endif
		endif
		if (<skip_player> = FALSE)
			if NOT playerinfoequals <Player> part = vocals
				all_vocals = 0
			else
				all_instrument = 0
			endif
		endif
		getnextplayer Player = <Player>
		repeat <num_players>
		if ((<all_vocals> = 0) && (<all_instrument> = 0))
			highway_up_sfx = both
		elseif (<all_vocals> = 0)
			highway_up_sfx = guitar
		elseif (<all_instrument> = 0)
			highway_up_sfx = vocal
		endif
	endif
	if ScriptExists \{crowd_swells_during_stats_screen}
		KillSpawnedScript \{Name = crowd_swells_during_stats_screen}
	endif
	if IsSoundEventPlaying \{surge_during_stats_screen}
		StopSoundEvent \{surge_during_stats_screen
			fade_time = 1.5
			fade_type = linear}
	endif
	play_vocal_highway_sfx = 0
	switch <highway_up_sfx>
		case guitar
		SpawnScriptNow \{Song_Intro_Highway_Up_SFX_Waiting}
		play_vocal_highway_sfx = 0
		case vocal
		play_vocal_highway_sfx = 1
		case both
		SpawnScriptNow \{Song_Intro_Highway_Up_SFX_Waiting}
		play_vocal_highway_sfx = 1
		default
		printf \{channel = sfx
			qs(0x97b59f58)}
	endswitch
	getnumplayersingame \{on_screen}
	if (<num_players_shown> > 0)
		getfirstplayer \{on_screen}
		begin
		skip_player = FALSE
		if (<Type> = freeplay)
			if playerinfoequals <Player> freeplay_state = dropped
				skip_player = true
			endif
		endif
		if (<skip_player> = FALSE)
			SpawnScriptNow vocals_highway_slide_in params = {delay = 90 Player = <Player> play_vocal_highway_sfx = <play_vocal_highway_sfx>}
		endif
		getnextplayer on_screen Player = <Player>
		repeat <num_players_shown>
	endif
	move_highway_camera_to_default
endscript

script intro_hud_move 
	begin
	GetSongTimeMs
	if ($current_intro.hud_start_time + $current_starttime < <time>)
		break
	endif
	WaitOneGameFrame
	repeat
	getnumplayersingame \{on_screen}
	if (<num_players_shown> > 0)
		getfirstplayer \{on_screen}
		begin
		move_hud_to_default time = ($current_intro.hud_move_time / 1000.0)
		getnextplayer on_screen Player = <Player>
		repeat <num_players_shown>
	endif
	all_vocals = 1
	getnumplayersingame
	if (<num_players> > 0)
		getfirstplayer
		begin
		if NOT playerinfoequals <Player> part = vocals
			all_vocals = 0
			break
		endif
		getnextplayer Player = <Player>
		repeat <num_players>
	endif
	SpawnScriptNow \{Song_Intro_Kick_SFX_Waiting}
endscript

script intro_check_for_celeb_intro_ui 
	transition_getprefix Type = ($current_playing_transition)
	if (<celeb_intro> = 1)
		SpawnScriptNow intro_celeb_ui params = {celeb_intro = <type_textnl>}
	endif
endscript

script intro_celeb_ui 
	switch <celeb_intro>
		case intro_bellamy
		<start_delay> = 7.8
		<Duration> = 3.0
		case intro_cobain
		<start_delay> = 6.0
		<Duration> = 3.2
		case intro_manson
		<start_delay> = 7.5
		<Duration> = 3.5
		case intro_santana
		<start_delay> = 4.0
		<Duration> = 3.0
		default
		<start_delay> = 2.0
		<Duration> = 4.0
	endswitch
	Wait <start_delay> Seconds
	CreateScreenElement \{Type = ContainerElement
		id = celeb_intro_ui_cont
		parent = root_window
		Pos = (0.0, 0.0)
		z_priority = 100}
	SetSearchAllAssetContexts
	CreateScreenElement \{parent = celeb_intro_ui_cont
		id = celeb_intro_ui
		Type = descinterface
		desc = 'celeb_intro'}
	celeb_intro_ui :se_setprops {
		firstname_text = <firstname>
		lastname_text = <lastname>
	}
	SetSearchAllAssetContexts \{OFF}
	celeb_intro_ui :desc_resolvealias \{Name = alias_frame_anim}
	AssignAlias id = <resolved_id> alias = frame_anim
	frame_anim :se_getprops \{Pos}
	<frame_anim_pos> = <Pos>
	celeb_intro_ui :desc_resolvealias \{Name = alias_frame_container}
	AssignAlias id = <resolved_id> alias = frame_container
	frame_container :se_setprops \{alpha = 1}
	frame_container :se_getprops \{Pos}
	<frame_container> = <Pos>
	frame_anim :se_setprops \{Pos = (-10.0, 300.0)}
	frame_anim :se_waitprops
	frame_anim :se_setprops \{Pos = (-10.0, -40.0)
		time = 0.01
		motion = ease_in}
	frame_anim :se_waitprops
	frame_anim :se_setprops \{Pos = (-10.0, 80.0)
		time = 0.01
		motion = ease_in}
	<time_between_bounces> = 0.01
	frame_container :Obj_SpawnScriptNow intro_celeb_ui_bounce params = {id = frame_container starting_pos = <frame_container_pos>}
	Wait (<Duration> - <time_between_bounces>) Seconds
	frame_anim :se_waitprops
	frame_anim :se_setprops \{Pos = (-10.0, 80.0)}
	frame_anim :se_waitprops
	frame_anim :se_setprops \{Pos = (-10.0, -20.0)
		time = 0.01
		motion = ease_in}
	frame_anim :se_waitprops
	frame_anim :se_setprops \{Pos = (-10.0, 300.0)
		time = 0.01
		motion = ease_in}
	frame_anim :se_waitprops
	frame_anim :se_setprops \{alpha = 0
		time = 0.1}
	DestroyScreenElement \{id = celeb_intro_ui_cont}
endscript

script intro_celeb_ui_bounce 
	if celeb_intro_ui :desc_resolvealias \{Name = alias_frame_container
			param = celeb_frame_add_id}
		<celeb_frame_add_id> :obj_spawnscript ui_shakey params = {Pos = (637.0, 415.0)}
	else
		ScriptAssert \{'pdetrich'}
	endif
	if celeb_intro_ui :desc_resolvealias \{Name = alias_frame_container
			param = celeb_frame_add_id}
		<celeb_frame_add_id> :obj_spawnscript ui_shakey params = {Pos = (637.0, 415.0)}
	else
		ScriptAssert \{'pdetrich'}
	endif
endscript

script kill_intro_celeb_ui 
	if ScriptIsRunning \{intro_celeb_ui}
		if ScreenElementExists \{id = celeb_intro_ui_cont}
			DestroyScreenElement \{id = celeb_intro_ui_cont}
		endif
		KillSpawnedScript \{Name = intro_celeb_ui}
	endif
endscript
