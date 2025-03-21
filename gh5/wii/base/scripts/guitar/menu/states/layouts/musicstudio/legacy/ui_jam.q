
script ui_create_jam 
	Change \{respond_to_signin_changed = 1}
	SpawnScriptNow do_jam_loading params = {on_enter = <on_enter>}
	SpawnScriptNow create_jam_menu params = <...>
	ui_event_remove_params \{param = on_enter}
	Change \{game_mode = musicstudio}
endscript

script ui_destroy_jam 
	destroy_jam_menu
endscript

script ui_init_jam 
	ui_event_add_params \{on_enter = 1}
	Change music_studio_on_enter_venue = ($current_level)
	printf \{qs(0x8e69e605)}
	unload_all_song_paks
	musicstudio_mainobj :musicstudio_onentermusicstudio
	printf \{channel = musicstudio
		qs(0xb2cdf338)}
	NetSessionFunc \{func = removeallcontrollers}
	<Player> = 1
	<ii> = 1
	<controller> = 0
	begin
	if (<Player> = <ii>)
		setplayerinfo <ii> controller = ($primary_controller)
	else
		if (<controller> = ($primary_controller))
			<controller> = (<controller> + 1)
		endif
		setplayerinfo <ii> controller = <controller>
		<controller> = (<controller> + 1)
	endif
	<ii> = (<ii> + 1)
	repeat 4
	add_music_studio_player_object Player = <Player> controller = $primary_controller spawn_id = NULL jam_room_player = FALSE
endscript

script ui_deinit_jam 
	if ScreenElementExists \{id = song_preview_element}
		destroy_song_preview_menu
	endif
	musicstudio_mainobj :musicstudio_destroyvisualizer
	musicstudio_stop_menu_music
	smartunloadpak \{async = 1
		tags = {
			highway_for = jam
		}}
	musicstudio_mainobj :musicstudio_onexitmusicstudio
	persistent_band_stop_and_unload_anims
	destroy_bandname_viewport
	Skate8_SFX_Backgrounds_New_Area \{immediate = 1
		BG_SFX_Area = frontend_menu_music}
	KillCamAnim \{Name = jam_view_cam}
	Change \{jam_view_cam_created = 0}
	Change \{bass_kit_mode = 0}
	jamsession_unload \{song_prefix = 'editable'}
	clearcustomsong
	jam_clear_clipboards
	deinit_jam_audio
	Change \{cas_override_object = None}
	SpawnScriptNow \{exit_music_studio_cleanup}
	if ($musicstudio_enable_visualizers = 1)
		destroy_visualizer_screen_element
	endif
	Change \{game_mode = career}
endscript

script deinit_jam_audio 
	musicstudio_destroy_all_line6_effects
	StopSoundsByBuss \{guitar_jammode}
	StopSoundsByBuss \{drums_jammode}
	StopSoundsByBuss \{bass_jammode}
	StopSoundsByBuss \{jammode_vox}
	jam_deinit_reverb
	if NOT GotParam \{keep_drumkit}
	endif
	unloadbasskit
endscript
