
script ui_create_boot_attract 
	spawnscriptnow \{ui_boot_attract_spawned}
endscript

script ui_destroy_boot_attract 
	PauseGame
	KillSpawnedScript \{name = ui_boot_attract_spawned}
	if ScreenElementExists \{id = current_menu}
		current_menu :Die
	endif
	spawnscriptnow \{kill_gem_scroller}
	destroy_magazine_viewport
	setup_bg_viewport
	band_builder_clear_random_appearances
	reset_character_ids
	UnPauseGame
	spawnscriptnow \{Attract_Mode_Ends_Sound_Script}
	SpawnScriptLater \{Undo_attract_bots}
	change \{is_attract_mode = 0}
	spawnscriptnow \{menu_music_on}
endscript

script Undo_attract_bots 
	Wait \{2
		gameframes}
	printf \{'undo_attract_bots'}
	change \{structurename = player1_status
		bot_play = 0}
	change \{structurename = player2_status
		bot_play = 0}
	change \{structurename = player3_status
		bot_play = 0}
	change \{structurename = player4_status
		bot_play = 0}
endscript

script ui_boot_attract_spawned 
	change \{is_attract_mode = 1}
	create_loading_screen
	spawnscriptnow \{Attract_Mode_Start_Sound_Script}
	GetArraySize \{$Attract_Mode_Info}
	if (<array_size> = 1)
		attract_mode_index = 0
	else
		if ($last_attract_mode >= 0)
			GetRandomValue name = attract_mode_index Integer a = 0 b = (<array_size> - 2)
			if (<attract_mode_index> >= $last_attract_mode)
				attract_mode_index = (<attract_mode_index> + 1)
			endif
		else
			GetRandomValue name = attract_mode_index Integer a = 0 b = (<array_size> - 1)
		endif
		change last_attract_mode = <attract_mode_index>
	endif
	AddParams ($Attract_Mode_Info [<attract_mode_index>])
	change \{structurename = player1_status
		bot_play = 1}
	change \{structurename = player2_status
		bot_play = 1}
	change \{structurename = player3_status
		bot_play = 1}
	change \{structurename = player4_status
		bot_play = 1}
	change current_level = <level>
	change game_mode = <mode>
	change \{current_num_players = 4}
	change \{structurename = player1_status
		part = guitar}
	change \{structurename = player2_status
		part = Bass}
	change \{structurename = player3_status
		part = drum}
	change \{structurename = player4_status
		part = Vocals}
	change structurename = player1_status character_id = <guitar_character_id>
	change structurename = player2_status character_id = <bass_character_id>
	change structurename = player3_status character_id = <drum_character_id>
	change structurename = player4_status character_id = <vocals_character_id>
	p1_difficulty = expert
	p2_difficulty = expert
	destroy_band
	mark_unsafe_for_shutdown
	UnPauseGame
	Load_Venue
	start_gem_scroller song_name = <song> difficulty = <p1_difficulty> difficulty2 = <p2_difficulty> StartTime = 0 device_num = ($player1_status.controller)
	stoprendering
	destroy_loading_screen
	get_handlers_for_all_buttons \{event_script = ui_boot_attract_wait_for_input}
	CreateScreenElement {
		type = ContainerElement
		parent = root_window
		id = current_menu
		pos = (0.0, 0.0)
		just = [left center]
		z_priority = 0
		event_handlers = <event_handlers>
	}
	CreateScreenElement \{type = TextElement
		text = qs("PRESS ANY BUTTON TO ROCK...")
		pos = (640.0, 637.0)
		parent = current_menu
		rgba = [
			220
			220
			220
			255
		]
		font = fontgrid_title_a1
		just = [
			center
			bottom
		]
		scale = 0.9
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			110
			20
			80
			250
		]}
	CreateScreenElement \{type = SpriteElement
		parent = current_menu
		texture = logo_GH4_LoR_256
		dims = (225.0, 225.0)
		pos = (640.0, 490.0)
		just = [
			center
			center
		]}
	LaunchEvent \{type = focus
		target = current_menu}
	fadetoblack \{off
		alpha = 1.0
		time = 0.0
		z_priority = -100
		no_wait}
endscript

script ui_boot_attract_wait_for_input 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	wait_for_safe_shutdown
	ui_event \{event = menu_back}
endscript
Attract_Mode_Info = [
	{
		level = load_z_harbor
		song = livingonaprayer
		mode = p4_quickplay
		guitar_character_id = Guitarist
		bass_character_id = bassist
		drum_character_id = Drummer
		vocals_character_id = singer
	}
	{
		level = load_z_hob
		song = eyeofthetiger
		mode = p4_quickplay
		guitar_character_id = judy
		bass_character_id = Midori
		drum_character_id = Casey
		vocals_character_id = Guitarist
	}
	{
		level = load_z_hob
		song = spiderwebs
		mode = p4_quickplay
		guitar_character_id = Guitarist
		bass_character_id = Clive
		drum_character_id = Johnny
		vocals_character_id = Casey
	}
	{
		level = load_z_castle
		song = Overkill
		mode = p4_quickplay
		guitar_character_id = Lars
		bass_character_id = Guitarist
		drum_character_id = Drummer
		vocals_character_id = axel
	}
	{
		level = load_z_bayou
		song = americanwoman
		mode = p4_quickplay
		guitar_character_id = Eddie
		bass_character_id = Casey
		drum_character_id = bassist
		vocals_character_id = Clive
	}
	{
		level = load_z_goth
		song = mountainsong
		mode = p4_quickplay
		guitar_character_id = Pandora
		bass_character_id = Izzy
		drum_character_id = Midori
		vocals_character_id = Johnny
	}
	{
		level = load_z_castle
		song = hotforteacher
		mode = p4_quickplay
		guitar_character_id = Guitarist
		bass_character_id = bassist
		drum_character_id = Drummer
		vocals_character_id = singer
	}
	{
		level = load_z_bayou
		song = loveremovalmachine
		mode = p4_quickplay
		guitar_character_id = RandomCharacter
		bass_character_id = RandomCharacter
		drum_character_id = RandomCharacter
		vocals_character_id = RandomCharacter
	}
	{
		level = load_z_harbor
		song = everlong
		mode = p4_quickplay
		guitar_character_id = RandomCharacter
		bass_character_id = RandomCharacter
		drum_character_id = RandomCharacter
		vocals_character_id = RandomCharacter
	}
	{
		level = load_z_bayou
		song = kickoutthejams
		mode = p4_quickplay
		guitar_character_id = RandomCharacter
		bass_character_id = RandomCharacter
		drum_character_id = RandomCharacter
		vocals_character_id = RandomCharacter
	}
]
last_attract_mode = -1
is_attract_mode = 0
