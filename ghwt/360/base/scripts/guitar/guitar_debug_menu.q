menu_pos = (675.0, 100.0)

script create_debug_backdrop 
	destroy_debug_backdrop
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = debug_backdrop
		pos = (640.0, 0.0)
		dims = (640.0, 720.0)
		just = [
			left
			top
		]
		rgba = [
			0
			0
			0
			255
		]
		z_priority = 1}
endscript

script destroy_debug_backdrop 
	destroy_menu \{menu_id = debug_backdrop}
endscript

script create_debugging_menu 
	safe_create_gh3_pause_menu
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement \{type = VScrollingMenu
		parent = Pause_Menu
		id = debug_scrolling_menu
		just = [
			left
			top
		]
		dims = (400.0, 480.0)
		pos = $menu_pos}
	CreateScreenElement \{type = VMenu
		parent = debug_scrolling_menu
		id = debug_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				back_to_retail_menu
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LUnlock All (be patient, make yourself a cup of tea...)")
		z_priority = 100.0
		just = [
			left
			top
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				playday_unlockall
			}
		]}
	CreateScreenElement {
		type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LRepeat Last Song")
		z_priority = 100.0
		just = [left top]
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose select_start_song params = {uselaststarttime forceintro from_gameplay = <from_gameplay>}}
		]
	}
	CreateScreenElement {
		type = TextElement
		parent = debug_vmenu
		id = toggle_playermode_menuitem
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LPlay Song: 1p_quickplay")
		z_priority = 100.0
		just = [left top]
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_left toggle_playermode_left}
			{pad_right toggle_playermode_right}
			{pad_choose select_playermode params = {from_gameplay = <from_gameplay>}}
		]
	}
	toggle_playermode_setprop
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LSettings")
		z_priority = 100.0
		just = [
			left
			top
		]
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				create_settings_menu
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LCheck CAS Assets")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				debug_checkcasassets
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LDump Heaps")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				debug_dumpheaps
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LCharacter Select")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				create_character_viewer_menu
			}
		]}
	CreateScreenElement {
		type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LSkip Into Song")
		just = [left top]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose create_skipintosong_menu params = {from_gameplay = <from_gameplay>}}
		]
	}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LSave Replay Buffer")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				save_replay
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LLoad Replay")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				create_replay_menu
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LPlay Credits")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				debug_playcredits
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LModel Viewer")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_model_viewer
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LDifficulty Analyzer")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				debug_difficulty_analyzer
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LToggle Changelist Number")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				debug_toggle_changelist
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		id = toggle_rolandkit_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LRoland Drumkit: Off")
		z_priority = 100.0
		just = [
			left
			top
		]
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_rolandkit
			}
			{
				pad_left
				toggle_rolandkit
			}
			{
				pad_right
				toggle_rolandkit
			}
		]}
	toggle_rolandkit_setprop
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		id = toggle_guitarmotion_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LGuitar motion: Off")
		z_priority = 100.0
		just = [
			left
			top
		]
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_guitarmotion
			}
			{
				pad_left
				toggle_guitarmotion
			}
			{
				pad_right
				toggle_guitarmotion
			}
		]}
	toggle_guitarmotion_setprop
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		id = toggle_lsinfo_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LToggle Lightshow debug")
		z_priority = 100.0
		just = [
			left
			top
		]
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				LightShow_ToggleDebugInfo
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LColor Calibration")
		z_priority = 100.0
		just = [
			left
			top
		]
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				generic_event_choose
				params = {
					state = UIstate_debug_color_calibration
				}
			}
		]}
	if ($g_rockout_show_in_debug_menu = 1)
		CreateScreenElement \{type = TextElement
			parent = debug_vmenu
			font = debug
			scale = 0.75
			rgba = [
				210
				210
				210
				250
			]
			text = qs("\LPlay Rockout!")
			just = [
				left
				top
			]
			z_priority = 100.0
			shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba = [
				0
				0
				0
				255
			]
			event_handlers = [
				{
					focus
					menu_focus
				}
				{
					unfocus
					menu_unfocus
				}
				{
					pad_choose
					generic_event_choose
					params = {
						state = UIstate_rockout
					}
				}
			]}
	endif
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LUI Physics Test")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				create_ui_physics_test
				params = {
					debug
				}
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LAutotesting")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				create_autotest_menu
			}
		]}
	CreateScreenElement {
		type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LRepeat Last Song With Intro")
		z_priority = 100.0
		just = [left top]
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose select_start_song params = {uselaststarttime forceintro from_gameplay = <from_gameplay>}}
		]
	}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		id = toggle_intro_select
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LPlay intro_ozzy")
		z_priority = 100.0
		just = [
			left
			top
		]
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_left
				toggle_intro_select_left
			}
			{
				pad_right
				toggle_intro_select_right
			}
			{
				pad_choose
				start_song_with_intro
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LIncrease Band Money by 100k Credits")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				increase_band_money_by_100000
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LAdd 4 Worst Case CAS characters")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				debug_add_worst_case_cas_chars
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LBankrupt Band")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				bankrupt_band
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = debug_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LToggle FPS Display")
		just = [
			left
			top
		]
		z_priority = 100.0
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				ToggleFPS
			}
		]}
	toggle_intro_select_setprop
	LaunchEvent \{type = focus
		target = debug_vmenu}
endscript

script destroy_debugging_menu 
	if ScreenElementExists \{id = debug_scrolling_menu}
		DestroyScreenElement \{id = debug_scrolling_menu}
	endif
	destroy_menu_backdrop
	destroy_debug_backdrop
endscript

script back_to_debug_menu 
	destroy_all_debug_menus
	ui_event \{event = menu_refresh}
endscript

script destroy_all_debug_menus 
	destroy_replay_menu
	destroy_song_menu
	destroy_settings_menu
	destroy_character_viewer_menu
	destroy_changeguitarist_menu
	destroy_skipintosong_menu
	destroy_cameracut_menu
	destroy_difficulty_menu
	destroy_part_menu
	destroy_skipbytime_menu
	destroy_skipbymarker_menu
	destroy_skipbymeasure_menu
	destroy_looppoint_menu
	destroy_autotest_menu
	destroy_debugging_menu
endscript
debug_playcredits_active = 0

script debug_playcredits 
	kill_gem_scroller
	destroy_debugging_menu
	reset_score \{player_status = player1_status}
	change \{end_credits = 1}
	change \{debug_playcredits_active = 1}
	Progression_EndCredits
endscript

script debug_quitcredits 
	generic_event_back \{state = uistate_debug}
	band_unload_anim_paks
endscript

script debug_difficulty_analyzer 
	ui_menu_select_sfx
	destroy_difficulty_menu
	destroy_debugging_menu
	create_debug_backdrop
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	x_pos = 500
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = song_scrolling_menu
		just = [left top]
		dims = (400.0, 500.0)
		pos = ($menu_pos - (520.0, 0.0) + (<x_pos> * (1.0, 0.0)))
	}
	CreateScreenElement \{type = VMenu
		parent = song_scrolling_menu
		id = song_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				difficulty_analyzer_back
			}
		]}
	array_entry = 0
	get_songlist_size
	begin
	get_songlist_checksum index = <array_entry>
	get_song_struct song = <song_checksum>
	get_song_title song = <song_checksum>
	CreateScreenElement {
		type = TextElement
		parent = song_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = <song_title>
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{focus wait_for_diff_analyzer params = {<...>}}
			{pad_choose KillSpawnedScript params = {name = wait_for_diff_analyzer_spawned}}
			{pad_choose create_difficulty_analyzer_instrument_menu params = {song_name = <song_checksum>}}
		]
	}
	<array_entry> = (<array_entry> + 1)
	repeat <array_size>
	CreateScreenElement {
		type = TextElement
		parent = song_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LOUTPUT ALL SCORE DATA")
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{focus wait_for_diff_analyzer params = {<...>}}
			{focus KillSpawnedScript params = {name = wait_for_diff_analyzer_spawned}}
			{pad_choose create_difficulty_analyzer_instrument_menu params = {difficulty = all song_name = debug_output}}
		]
	}
	LaunchEvent \{type = focus
		target = song_vmenu}
endscript

script difficulty_analyzer_back 
	KillSpawnedScript \{name = wait_for_diff_analyzer_spawned}
	destroy_difficulty_analyzer
	generic_menu_pad_back \{callback = back_to_debug_menu}
endscript

script destroy_difficulty_analyzer_menu 
	if ScreenElementExists \{id = song_scrolling_menu}
		DestroyScreenElement \{id = song_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script wait_for_diff_analyzer 
	KillSpawnedScript \{name = wait_for_diff_analyzer_spawned}
	spawnscriptnow wait_for_diff_analyzer_spawned params = {<...>}
endscript

script wait_for_diff_analyzer_spawned 
	Wait \{0.5
		seconds}
	difficulty_analyzer_show instrument = guitar difficulty = all song_name = <song_checksum>
endscript

script create_difficulty_analyzer_instrument_menu 
	printf \{qs("\Linstrument menu")}
	destroy_difficulty_analyzer_menu
	destroy_difficulty_menu
	create_debug_backdrop
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = difficulty_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos + (70.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = difficulty_menu
		id = difficulty_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = debug_difficulty_analyzer
				}
			}
		]}
	array_entry = 0
	GetArraySize \{$instrument_checksums}
	begin
	instrument = ($instrument_text [<array_entry>])
	<events> = [
		{focus menu_focus}
		{unfocus menu_unfocus}
		{pad_choose create_difficulty_analyzer_difficulty_menu params = {instrument = ($instrument_checksums [<array_entry>]) song_name = <song_name>}}
	]
	if (<song_name> = debug_output)
		<events> = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose create_difficulty_analyzer_difficulty_menu params = {instrument = ($instrument_checksums [<array_entry>]) song_name = <song_name>}}
		]
	endif
	CreateScreenElement {
		type = TextElement
		parent = difficulty_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = <instrument>
		just = [left top]
		z_priority = 100.0
		event_handlers = <events>
	}
	<array_entry> = (<array_entry> + 1)
	repeat <array_size>
	if (<song_name> = debug_output)
		<events> = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose create_difficulty_analyzer_difficulty_menu params = {all instrument = all song_name = <song_name>}}
		]
		CreateScreenElement {
			type = TextElement
			parent = difficulty_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = qs("\LALL")
			just = [left top]
			z_priority = 100.0
			event_handlers = <events>
		}
	endif
	LaunchEvent \{type = focus
		target = difficulty_vmenu}
endscript

script create_difficulty_analyzer_difficulty_menu 
	destroy_difficulty_analyzer_menu
	destroy_difficulty_menu
	create_debug_backdrop
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = difficulty_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos + (70.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = difficulty_menu
		id = difficulty_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = debug_difficulty_analyzer
				}
			}
		]}
	array_entry = 0
	GetArraySize \{$difficulty_list}
	begin
	difficulty_count = ($difficulty_list [<array_entry>])
	get_difficulty_text difficulty = <difficulty_count>
	<events> = [
		{focus menu_focus}
		{unfocus menu_unfocus}
		{focus difficulty_analyzer_show params = {instrument = <instrument> difficulty = ($difficulty_list [<array_entry>]) song_name = <song_name>}}
	]
	if (<song_name> = debug_output)
		<events> = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose output_diff_scores params = {instrument = <instrument> ($difficulty_list [<array_entry>])}}
		]
	endif
	CreateScreenElement {
		type = TextElement
		parent = difficulty_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = <difficulty_text>
		just = [left top]
		z_priority = 100.0
		event_handlers = <events>
	}
	<array_entry> = (<array_entry> + 1)
	repeat <array_size>
	if (<song_name> = debug_output)
		<events> = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose output_diff_scores params = {all instrument = <instrument>}}
		]
		CreateScreenElement {
			type = TextElement
			parent = difficulty_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = qs("\LALL")
			just = [left top]
			z_priority = 100.0
			event_handlers = <events>
		}
	endif
	LaunchEvent \{type = focus
		target = difficulty_vmenu}
endscript

script back_to_online_menu 
	printf \{qs("\L---back_to_online_menu")}
	quit_network_game
	destroy_create_session_menu
	create_online_menu
endscript

script create_song_menu \{version = gh3}
	ui_menu_select_sfx
	destroy_all_debug_menus
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = song_scrolling_menu
		just = [left top]
		dims = (400.0, 550.0)
		pos = ($menu_pos - (200.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = song_scrolling_menu
		id = song_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_debug_menu
				}
			}
		]}
	array_entry = 0
	get_songlist_size
	begin
	get_songlist_checksum index = <array_entry>
	get_song_struct song = <song_checksum>
	get_song_version song = <song_checksum>
	if (<song_version> = <version>)
		get_song_title song = <song_checksum>
		CreateScreenElement {
			type = TextElement
			parent = song_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = <song_title>
			just = [left top]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose create_part_menu params = {song_name = <song_checksum> version = <version> player = 1 from_gameplay = <from_gameplay>}}
			]
		}
	endif
	<array_entry> = (<array_entry> + 1)
	repeat <array_size>
	LaunchEvent \{type = focus
		target = song_vmenu}
endscript

script back_to_song_menu 
	destroy_difficulty_menu
	create_song_menu version = <version>
endscript

script back_to_part_menu 
	destroy_difficulty_menu
	create_part_menu version = <version>
endscript

script destroy_song_menu 
	if ScreenElementExists \{id = song_scrolling_menu}
		DestroyScreenElement \{id = song_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script create_difficulty_menu 
	destroy_all_debug_menus
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = difficulty_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos + (70.0, 0.0))
	}
	CreateScreenElement {
		type = VMenu
		parent = difficulty_menu
		id = difficulty_vmenu
		pos = (0.0, 0.0)
		just = [left top]
		event_handlers = [{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
			{pad_back generic_menu_pad_back params = {callback = back_to_song_menu version = <version>}}
		]
	}
	array_entry = 0
	GetArraySize \{$difficulty_list}
	begin
	difficulty_count = ($difficulty_list [<array_entry>])
	get_difficulty_text difficulty = <difficulty_count>
	if (<player> = 2)
		CreateScreenElement {
			type = TextElement
			parent = difficulty_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = <difficulty_text>
			z_priority = 100.0
			just = [left top]
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose select_start_song params = {song_name = <song_name> difficulty2 = ($difficulty_list [<array_entry>]) difficulty = <difficulty> part = <part> part2 = <part2> from_gameplay = <from_gameplay>}}
			]
		}
	else
		if ($current_num_players = 2)
			CreateScreenElement {
				type = TextElement
				parent = difficulty_vmenu
				font = debug
				scale = 0.75
				rgba = [210 210 210 250]
				text = <difficulty_text>
				just = [left top]
				z_priority = 100.0
				event_handlers = [
					{focus menu_focus}
					{unfocus menu_unfocus}
					{pad_choose create_difficulty_menu params = {song_name = <song_name> version = <version> difficulty = ($difficulty_list [<array_entry>]) part = <part> part2 = <part2> player = 2 from_gameplay = <from_gameplay>}}
				]
			}
		else
			CreateScreenElement {
				type = TextElement
				parent = difficulty_vmenu
				font = debug
				scale = 0.75
				rgba = [210 210 210 250]
				text = <difficulty_text>
				just = [left top]
				z_priority = 100.0
				event_handlers = [
					{focus menu_focus}
					{unfocus menu_unfocus}
					{pad_choose select_start_song params = {difficulty = ($difficulty_list [<array_entry>]) part = <part> part2 = <part2> song_name = <song_name> from_gameplay = <from_gameplay>}}
				]
			}
		endif
	endif
	<array_entry> = (<array_entry> + 1)
	repeat <array_size>
	LaunchEvent \{type = focus
		target = difficulty_vmenu}
endscript

script destroy_difficulty_menu 
	if ScreenElementExists \{id = difficulty_menu}
		DestroyScreenElement \{id = difficulty_menu}
	endif
	destroy_menu_backdrop
endscript
part_list = [
	guitar
	drum
	Bass
	Vocals
]
part_list_props = {
	guitar = {
		index = 0
		text_nl = 'guitar'
		text = qs("Guitar")
		text_upper = qs("GUITAR")
	}
	drum = {
		index = 1
		text_nl = 'drum'
		text = qs("Drum")
		text_upper = qs("DRUM")
	}
	Bass = {
		index = 2
		text_nl = 'bass'
		text = qs("Bass")
		text_upper = qs("BASS")
	}
	Vocals = {
		index = 3
		text_nl = 'vocals'
		text = qs("Vocals")
		text_upper = qs("VOCALS")
	}
	Band = {
		index = 3
		text_nl = 'band'
		text = qs("Band")
		text_upper = qs("BAND")
	}
}

script get_part_text \{part = guitar}
	return part_text = ($part_list_props.<part>.text)
endscript

script get_part_text_nl 
	return part_text = ($part_list_props.<part>.text_nl)
endscript

script create_part_menu 
	destroy_all_debug_menus
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = part_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos + (70.0, 0.0))
	}
	CreateScreenElement {
		type = VMenu
		parent = part_menu
		id = part_vmenu
		pos = (0.0, 0.0)
		just = [left top]
		event_handlers = [{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
			{pad_back generic_menu_pad_back params = {callback = back_to_song_menu version = <version>}}
		]
	}
	array_entry = 0
	GetArraySize \{$part_list}
	begin
	part_count = ($part_list [<array_entry>])
	get_part_text part = <part_count>
	if (<player> = 2)
		CreateScreenElement {
			type = TextElement
			parent = part_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = <part_text>
			z_priority = 100.0
			just = [left top]
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose create_difficulty_menu params = {song_name = <song_name> version = <version> part = <part> part2 = ($part_list [<array_entry>]) player = 1 from_gameplay = <from_gameplay>}}
			]
		}
	else
		if ($current_num_players = 2)
			CreateScreenElement {
				type = TextElement
				parent = part_vmenu
				font = debug
				scale = 0.75
				rgba = [210 210 210 250]
				text = <part_text>
				just = [left top]
				z_priority = 100.0
				event_handlers = [
					{focus menu_focus}
					{unfocus menu_unfocus}
					{pad_choose create_part_menu params = {song_name = <song_name> version = <version> part = ($part_list [<array_entry>]) player = 2 from_gameplay = <from_gameplay>}}
				]
			}
		else
			CreateScreenElement {
				type = TextElement
				parent = part_vmenu
				font = debug
				scale = 0.75
				rgba = [210 210 210 250]
				text = <part_text>
				just = [left top]
				z_priority = 100.0
				event_handlers = [
					{focus menu_focus}
					{unfocus menu_unfocus}
					{pad_choose create_difficulty_menu params = {song_name = <song_name> version = <version> part = ($part_list [<array_entry>]) player = 1 from_gameplay = <from_gameplay>}}
				]
			}
		endif
	endif
	<array_entry> = (<array_entry> + 1)
	repeat <array_size>
	LaunchEvent \{type = focus
		target = part_vmenu}
endscript

script destroy_part_menu 
	if ScreenElementExists \{id = part_menu}
		DestroyScreenElement \{id = part_menu}
	endif
	destroy_menu_backdrop
endscript

script create_settings_menu 
	ui_menu_select_sfx
	destroy_debugging_menu
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = settings_scrolling_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos - (30.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = settings_scrolling_menu
		id = settings_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_debug_menu
				}
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_allowcontroller_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LUse Controller for All Instruments: ")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_allowcontroller
			}
		]}
	toggle_allowcontroller_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LChange Venue")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				create_changevenue_menu
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LChange Guitar")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				create_changeguitar_menu
				params = {
					type = guitar
				}
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LChange Bass")
		just = [
			left
			top
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				create_changeguitar_menu
				params = {
					type = Bass
				}
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_visibility_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LToggle visibility. . .")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				create_togglevisibility_menu
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = select_slomo_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LSelect Slomo : 1.0")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				select_slomo
			}
		]}
	select_slomo_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_showmeasures_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LShow Measures")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_showmeasures
			}
		]}
	toggle_showmeasures_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_showsongstars_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LShow Song Stars")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_showsongstars
			}
		]}
	toggle_showsongstars_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_showsongtime_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LShow Song Time")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_showsongtime
			}
		]}
	toggle_showsongtime_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_showcameraname_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LShow Camera Name")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_showcameraname
			}
		]}
	toggle_showcameraname_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_inputlog_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LShow Input Log")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_inputlog
			}
		]}
	toggle_inputlog_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_rockmeterdebug_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LRock Meter Debug")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_rockmeterdebug
			}
		]}
	toggle_rockmeterdebug_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_viewvolumesonscreen_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LView Volumes On Screen")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_viewvolumesonscreen
			}
		]}
	toggle_viewvolumesonscreen_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_LagTestPart1_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LLag Test Part 1")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_lagtestpart1
			}
		]}
	toggle_lagtestpart1_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_LagTestPart2_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LLag Test Part 2")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_lagtestpart2
			}
		]}
	toggle_lagtestpart2_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_LagTestPart3_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LLag Test Part 3")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_lagtestpart3
			}
		]}
	toggle_lagtestpart3_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = edit_inputlagvalue_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LInput Logic Lag Value")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_left
				edit_inputlagvalue_left
			}
			{
				pad_right
				edit_inputlagvalue_right
			}
		]}
	edit_inputlagvalue_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = edit_gemlagvalue_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LVisual Gem Lag Value")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_left
				edit_gemlagvalue_left
			}
			{
				pad_right
				edit_gemlagvalue_right
			}
		]}
	edit_gemlagvalue_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = edit_audiolagvalue_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LAudio Lag Value")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_left
				edit_audiolagvalue_left
			}
			{
				pad_right
				edit_audiolagvalue_right
			}
		]}
	edit_audiolagvalue_setprop
	player = 1
	begin
	FormatText checksumname = togglebot 'toggle_botp%d_menuitem' d = <player>
	CreateScreenElement {
		type = TextElement
		parent = settings_vmenu
		id = <togglebot>
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LToggle Bot")
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose toggle_bot params = {player = <player>}}
		]
	}
	toggle_bot_setprop player = <player>
	player = (<player> + 1)
	repeat 4
	player = 1
	begin
	FormatText checksumname = togglestar 'toggle_starp%d_menuitem' d = <player>
	CreateScreenElement {
		type = TextElement
		parent = settings_vmenu
		id = <togglestar>
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LToggle Star Power")
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose toggle_star params = {player = <player>}}
		]
	}
	toggle_star_setprop player = <player>
	player = (<player> + 1)
	repeat 4
	player = 1
	begin
	FormatText checksumname = togglehyperspeed 'toggle_hyperspeedp%d_menuitem' d = <player>
	CreateScreenElement {
		type = TextElement
		parent = settings_vmenu
		id = <togglehyperspeed>
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LSet Hyperspeed: X.X")
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_left toggle_hyperspeed_left params = {player = <player>}}
			{pad_right toggle_hyperspeed_right params = {player = <player>}}
		]
	}
	toggle_hyperspeed_setprop player = <player>
	player = (<player> + 1)
	repeat 4
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = edit_inputlog_lines_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LInput Log Lines")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_left
				edit_inputlog_lines_left
			}
			{
				pad_right
				edit_inputlog_lines_right
			}
		]}
	edit_inputlog_lines_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_tilt_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LShow Input Log")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_tilt
			}
		]}
	toggle_tilt_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_leftyflip_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LLeftyflip")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_leftyflip
			}
		]}
	toggle_leftyflip_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = create_cameracut_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LSelect CameraCut")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				create_cameracut_group_menu
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LToggle GPU Time")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_global
				params = {
					global_toggle = show_gpu_time
				}
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LToggle CPU Time")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_global
				params = {
					global_toggle = show_cpu_time
				}
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_forcescore_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LForce Score")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_forcescore
			}
		]}
	toggle_forcescore_setprop
	CreateScreenElement \{type = TextElement
		parent = settings_vmenu
		id = toggle_vocalsfreeform_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LVocals Freeform Always: Off")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_vocalsfreeform
			}
		]}
	toggle_vocalsfreeform_setprop
	LaunchEvent \{type = focus
		target = settings_vmenu}
endscript

script playday_unlockall 
	difficulties = [easy medium hard expert]
	GetArraySize <difficulties>
	diff_size = <array_size>
	GetArraySize ($gh_songlist)
	i = 0
	begin
	song = ($gh_songlist [<i>])
	get_song_saved_in_globaltags song = <song>
	if (<saved_in_globaltags> = 1)
		SetGlobalTags <song> params = {unlocked = 1}
	endif
	i = (<i> + 1)
	repeat <array_size>
	GetArraySize ($instrument_progression_list)
	instrument_size = <array_size>
	instrument_index = 0
	begin
	diff_index = 0
	begin
	get_progression_globals ($instrument_progression_list [<instrument_index>])
	GlobalTags_UnlockAll songlist = <tier_global> difficulty = (<difficulties> [<diff_index>])
	<diff_index> = (<diff_index> + 1)
	repeat <diff_size>
	get_progression_globals ($instrument_progression_list [<instrument_index>])
	setup_gigtags SetList_Songs = <tier_global> unlock_order = ($unlock_order_list [<instrument_index>]) use_cheat_tags = 1
	<instrument_index> = (<instrument_index> + 1)
	repeat <instrument_size>
	GetArraySize ($Bonus_Songs.tier1.songs)
	i = 0
	begin
	SetGlobalTags ($Bonus_Songs.tier1.songs [<i>]) params = {unlocked = 1}
	<i> = (<i> + 1)
	repeat <array_size>
	i = 0
	GetArraySize ($Bonus_Videos)
	begin
	video_checksum = ($Bonus_Videos [<i>].id)
	SetGlobalTags <video_checksum> params = {unlocked = 1}
	<i> = (<i> + 1)
	repeat <array_size>
	get_LevelZoneArray_size
	index = 0
	begin
	get_LevelZoneArray_checksum index = <index>
	FormatText checksumname = venue_checksum 'venue_%s' s = ($LevelZones.<level_checksum>.name)
	if NOT StructureContains Structure = ($LevelZones.<level_checksum>) debug_only
		SetGlobalTags <venue_checksum> params = {unlocked = 1}
	endif
	index = (<index> + 1)
	repeat <array_size>
	change \{structurename = player1_status
		new_cash = 0}
	change \{progression_play_completion_movie = 0}
	change \{progression_unlock_tier_last_song = 0}
	change \{Cheat_Line6Unlock = 1}
	unlock_all_profiles
	unlock_purchase_all_cas_parts
endscript

script hide_band_members 
	Guitarist :hide
	bassist :hide
	vocalist :hide
	Drummer :hide
endscript

script show_band_members 
	Guitarist :unhide
	bassist :unhide
	vocalist :unhide
	Drummer :unhide
endscript

script back_to_settings_menu 
	destroy_changevenue_menu
	destroy_changehighway_menu
	destroy_changeguitar_menu
	destroy_togglevisibility_menu
	destroy_cameracut_group_menu
	create_settings_menu
endscript

script back_to_cameracut_group_menu 
	destroy_cameracut_menu
	create_cameracut_group_menu
endscript

script destroy_settings_menu 
	if ScreenElementExists \{id = settings_scrolling_menu}
		DestroyScreenElement \{id = settings_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript
CameraCutPrefixArray = [
	'cameras'
	'cameras_guitarist'
	'cameras_singer'
	'cameras_drummer'
	'cameras_bassist'
	'cameras_moments'
	'cameras_headtohead'
	'cameras_single'
	'cameras_solo'
	'cameras_guitar_closeup'
	'cameras_closeup'
	'cameras_closeups'
	'cameras_orbit'
	'cameras_pan'
	'cameras_dolly'
	'cameras_zoom_slow'
	'cameras_zoom_fast'
	'cameras_zoom_out'
	'cameras_zoom'
	'cameras_spotlight'
	'cameras_audience'
	'cameras_vert_drummer'
	'cameras_vert_guitarist'
	'cameras_vert_stagerear'
	'cameras_vert_stagefront'
	'cameras_intro'
	'cameras_fastintro'
	'cameras_boss'
	'cameras_encore'
	'cameras_walk'
	'cameras_starpower'
	'cameras_special'
	'cameras_stagedive'
	'cameras_win'
	'cameras_lose'
	'cameras_preencore'
	'cameras_preboss'
	'cameras_2p'
	'cameras_boss_closeup_2p'
	'cameras_player_closeup_2p'
	'cameras_solo_2p'
	'cameras_guitar_closeup_2p'
	'cameras_drummer_2p'
	'cameras_singer_2p'
	'cameras_singer_closeup_2p'
	'cameras_bassist_2p'
	'cameras_orbit_2p'
	'cameras_pan_2p'
	'cameras_intro_2p'
	'cameras_fastintro_2p'
	'cameras_starpower_2p'
	'cameras_win_2p'
	'cameras_lose_2p'
]

script create_cameracut_group_menu 
	ui_menu_select_sfx
	destroy_settings_menu
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = selectcameracut_scrolling_group_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos - (30.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = selectcameracut_scrolling_group_menu
		id = selectcameracut_group_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_settings_menu
				}
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = selectcameracut_group_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\Loff")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				select_cameracut
				params = {
					Camera_Array_pakname = none
					Camera_Array = none
					array_count = none
				}
			}
		]}
	GetPakManCurrentName \{map = zones}
	camera_count = 0
	GetArraySize \{$CameraCutPrefixArray}
	camera_array_size = <array_size>
	begin
	FormatText checksumname = Camera_Array '%s_%p' s = <pakname> p = ($CameraCutPrefixArray [<camera_count>])
	if GlobalExists name = <Camera_Array>
		GetArraySize $<Camera_Array>
		if (<array_size>)
			FormatText TextName = Camera_Group qs("\L%p") p = ($CameraCutPrefixArray [<camera_count>])
			CreateScreenElement {
				type = TextElement
				parent = selectcameracut_group_vmenu
				font = debug
				scale = 0.75
				rgba = [210 210 210 250]
				text = <Camera_Group>
				z_priority = 100.0
				just = [left top]
				event_handlers = [
					{focus menu_focus}
					{unfocus menu_unfocus}
					{pad_choose create_cameracut_menu params = {camera_count = <camera_count>}}
					{pad_square create_cameracut_menu params = {camera_count = <camera_count>}}
				]
			}
		endif
	endif
	camera_count = (<camera_count> + 1)
	repeat <camera_array_size>
	LaunchEvent \{type = focus
		target = selectcameracut_group_vmenu}
endscript

script create_cameracut_menu 
	if NOT GotParam \{camera_count}
		create_cameracut_group_menu
		return
	endif
	ui_menu_select_sfx
	destroy_cameracut_group_menu
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = selectcameracut_scrolling_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos - (30.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = selectcameracut_scrolling_menu
		id = selectcameracut_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_cameracut_group_menu
				}
			}
		]}
	GetPakManCurrentName \{map = zones}
	FormatText checksumname = Camera_Array '%s_%p' s = <pakname> p = ($CameraCutPrefixArray [<camera_count>])
	if GlobalExists name = <Camera_Array>
		GetArraySize $<Camera_Array>
		array_count = 0
		begin
		FormatText TextName = camera_name qs("\L%s_%p_%i") s = <pakname> p = ($CameraCutPrefixArray [<camera_count>]) i = <array_count>
		if StructureContains Structure = ($<Camera_Array> [<array_count>]) name
			FormatText TextName = camera_name qs("\L%s") s = ($<Camera_Array> [<array_count>].name) DontAssertForChecksums
		elseif StructureContains Structure = ($<Camera_Array> [<array_count>]) params
			if StructureContains Structure = ($<Camera_Array> [<array_count>].params) name
				FormatText TextName = camera_name qs("\L%s") s = ($<Camera_Array> [<array_count>].params.name) DontAssertForChecksums
			endif
		endif
		CreateScreenElement {
			type = TextElement
			parent = selectcameracut_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = <camera_name>
			z_priority = 100.0
			just = [left top]
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose select_cameracut params = {Camera_Array_pakname = <pakname> Camera_Array = ($CameraCutPrefixArray [<camera_count>]) array_count = <array_count>}}
				{pad_square select_cameracut params = {Camera_Array_pakname = <pakname> Camera_Array = ($CameraCutPrefixArray [<camera_count>]) array_count = <array_count> jumptoviewer}}
				{pad_option2 select_cameracut_video params = {Camera_Array_pakname = <pakname> Camera_Array = ($CameraCutPrefixArray [<camera_count>]) array_count = <array_count> name = <camera_name>}}
			]
		}
		<array_count> = (<array_count> + 1)
		repeat <array_size>
	endif
	LaunchEvent \{type = focus
		target = selectcameracut_vmenu}
endscript

script back_to_cameracut_menu 
	create_cameracut_menu
endscript

script destroy_cameracut_menu 
	if ScreenElementExists \{id = selectcameracut_scrolling_menu}
		DestroyScreenElement \{id = selectcameracut_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script destroy_cameracut_group_menu 
	if ScreenElementExists \{id = selectcameracut_scrolling_group_menu}
		DestroyScreenElement \{id = selectcameracut_scrolling_group_menu}
	endif
	destroy_menu_backdrop
endscript
debug_camera_array = none
debug_camera_array_pakname = none
debug_camera_array_count = 0

script select_cameracut 
	ui_menu_select_sfx
	change debug_camera_array = <Camera_Array>
	change debug_camera_array_pakname = <Camera_Array_pakname>
	change debug_camera_array_count = <array_count>
	destroy_cameracuts
	Wait \{3
		gameframes}
	create_cameracuts
	if GotParam \{jumptoviewer}
		destroy_all_debug_menus
		unpausegh3
		enable_pause
		change \{viewer_buttons_enabled = 1}
		ToggleViewMode
	endif
endscript

script select_cameracut_video 
	ui_menu_select_sfx
	printf qs("\Lselect_cameracut_video: (%n) %s - %p - %i") n = <name> s = <Camera_Array_pakname> p = <Camera_Array> i = <array_count>
	FormatText TextName = file_name qs("\L%a_%i") a = <Camera_Array> i = <array_count>
	if GlobalExists \{name = Capture_File_Name}
		change Capture_File_Name = <file_name>
	endif
	change debug_camera_array = <Camera_Array>
	change debug_camera_array_pakname = <Camera_Array_pakname>
	change debug_camera_array_count = <array_count>
	destroy_cameracuts
	hide_band_members
	Wait \{3
		gameframes}
	create_cameracuts
	unpausegh3
	root_window :LegacyDoMorph \{alpha = 0}
	change \{select_cameracut_video_end_enable = 1}
endscript
select_cameracut_video_end_enable = 0
capture_frame_count = 0

script select_cameracut_video_end 
	printf \{qs("\Lselect_cameracut_video_end")}
	root_window :LegacyDoMorph \{alpha = 1}
	if ($capture_frame_count = 0)
		if ($select_cameracut_video_end_enable = 1)
			pausegh3
			change \{select_cameracut_video_end_enable = 0}
			show_band_members
			if GlobalExists \{name = is_video_capture_session}
				if ($is_video_capture_session = 1)
					video_capture_session_end
				endif
			endif
		endif
	endif
endscript

script create_character_viewer_menu 
	ui_menu_select_sfx
	destroy_debugging_menu
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = character_viewer_scrolling_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos - (30.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = character_viewer_scrolling_menu
		id = character_viewer_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_debug_menu
				}
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = character_viewer_vmenu
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LChange Guitarist")
		z_priority = 100.0
		just = [
			left
			top
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				create_changeguitarist_menu
			}
		]}
	LaunchEvent \{type = focus
		target = character_viewer_vmenu}
endscript

script back_to_character_viewer_menu 
	destroy_changeguitarist_menu
	destroy_changebassist_menu
	destroy_changevocalist_menu
	destroy_changedrummer_menu
	create_character_viewer_menu
endscript

script destroy_character_viewer_menu 
	if ScreenElementExists \{id = character_viewer_scrolling_menu}
		DestroyScreenElement \{id = character_viewer_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script create_changeguitarist_menu 
	ui_menu_select_sfx
	destroy_character_viewer_menu
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = changeguitarist_scrolling_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos + (70.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = changeguitarist_scrolling_menu
		id = changeguitarist_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_character_viewer_menu
				}
			}
		]}
	get_savegame_from_controller controller = ($primary_controller)
	get_musician_profile_size savegame = <savegame>
	index = 0
	begin
	get_musician_profile_struct_by_index index = <index> savegame = <savegame>
	CreateScreenElement {
		type = TextElement
		parent = changeguitarist_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = (<profile_struct>.fullname)
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose debug_menu_choose_guitarist params = {index = <index>}}
		]
	}
	index = (<index> + 1)
	repeat <array_size>
	LaunchEvent \{type = focus
		target = changeguitarist_vmenu}
endscript

script destroy_changeguitarist_menu 
	if ScreenElementExists \{id = changeguitarist_scrolling_menu}
		DestroyScreenElement \{id = changeguitarist_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script debug_menu_choose_guitarist 
	kill_gem_scroller
	get_savegame_from_controller controller = ($primary_controller)
	get_musician_profile_struct_by_index index = <index> savegame = <savegame>
	guitarist_id = (<profile_struct>.name)
	change structurename = player1_status character_id = <guitarist_id>
	if NOT create_guitarist \{useOldPos
			player_status = player1_status
			savegame = 0}
		DownloadContentLost
	endif
	restart_gem_scroller song_name = ($current_song) difficulty = ($player1_status.difficulty) difficulty2 = ($player2_status.difficulty) StartTime = ($current_starttime) device_num = <device_num>
	generic_event_choose \{state = uistate_gameplay}
endscript

script create_changebassist_menu 
endscript

script destroy_changebassist_menu 
endscript

script create_changevocalist_menu 
endscript

script destroy_changevocalist_menu 
endscript

script create_changedrummer_menu 
endscript

script destroy_changedrummer_menu 
endscript

script select_playermode 
	change player1_device = <device_num>
	translate_gamemode
	create_song_menu version = ($current_song_version) from_gameplay = <from_gameplay>
endscript
debug_with_rhythm = 0
force_coop = 0

script translate_gamemode 
	switch $game_mode
		case p1_quickplay
		change \{current_num_players = 1}
		case p1_career
		change \{current_num_players = 1}
		case p1_improv
		change \{current_num_players = 1}
		case p1_boss
		change \{current_num_players = 1}
		case p2_quickplay
		change \{current_num_players = 2}
		case p2_faceoff
		change \{current_num_players = 2}
		case p2_pro_faceoff
		change \{current_num_players = 2}
		case p2_coop
		change \{current_num_players = 2}
		case p2_battle
		change \{current_num_players = 2}
		case p2_career
		change \{current_num_players = 2}
		case training
		change \{current_num_players = 1}
	endswitch
endscript

script toggle_hyperspeed_left 
	ui_menu_select_sfx
	kill_debug_elements
	FormatText checksumname = player_status 'player%d_status' d = <player>
	<new_value> = (($<player_status>.hyperspeed) - 0.01)
	if (<new_value> > $Hyperspeed_Slowest)
		<new_value> = $Hyperspeed_Slowest
	endif
	if (<new_value> < $Hyperspeed_Fastest)
		<new_value> = $Hyperspeed_Fastest
	endif
	change structurename = <player_status> hyperspeed = <new_value>
	toggle_hyperspeed_setprop player = <player>
endscript

script toggle_hyperspeed_right 
	ui_menu_select_sfx
	kill_debug_elements
	FormatText checksumname = player_status 'player%d_status' d = <player>
	<new_value> = (($<player_status>.hyperspeed) + 0.01)
	if (<new_value> > $Hyperspeed_Slowest)
		<new_value> = $Hyperspeed_Slowest
	endif
	if (<new_value> < $Hyperspeed_Fastest)
		<new_value> = $Hyperspeed_Fastest
	endif
	change structurename = <player_status> hyperspeed = <new_value>
	toggle_hyperspeed_setprop player = <player>
endscript

script toggle_playermode_left 
	switch $game_mode
		case p1_quickplay
		if ($force_coop)
			if ($debug_with_rhythm)
				change \{debug_with_rhythm = 0}
			else
				change \{force_coop = 0}
				change \{debug_with_rhythm = 1}
			endif
		else
			if ($debug_with_rhythm)
				change \{debug_with_rhythm = 0}
			else
				change \{game_mode = training}
			endif
		endif
		case p2_quickplay
		change \{force_coop = 1}
		change \{debug_with_rhythm = 1}
		change \{game_mode = p1_quickplay}
		case p1_career
		change \{game_mode = p2_quickplay}
		case p1_improv
		change \{game_mode = p1_career}
		case p1_boss
		change \{game_mode = p1_improv}
		case p2_faceoff
		change \{game_mode = p1_boss}
		case p2_pro_faceoff
		change \{game_mode = p2_faceoff}
		case p2_coop
		change \{game_mode = p2_pro_faceoff}
		case p2_battle
		change \{game_mode = p2_coop}
		case p2_career
		change \{game_mode = p2_battle}
		case training
		change \{game_mode = p2_career}
	endswitch
	toggle_playermode_setprop
endscript

script toggle_playermode_right 
	switch $game_mode
		case p1_quickplay
		if ($force_coop)
			if ($debug_with_rhythm)
				change \{game_mode = p2_quickplay}
				change \{force_coop = 0}
			else
				change \{debug_with_rhythm = 1}
			endif
		else
			if ($debug_with_rhythm)
				change \{force_coop = 1}
				change \{debug_with_rhythm = 0}
			else
				change \{debug_with_rhythm = 1}
			endif
		endif
		case p2_quickplay
		change \{game_mode = p1_career}
		case p1_career
		change \{game_mode = p1_improv}
		case p1_improv
		change \{game_mode = p1_boss}
		case p1_boss
		change \{game_mode = p2_faceoff}
		case p2_faceoff
		change \{game_mode = p2_pro_faceoff}
		case p2_pro_faceoff
		change \{game_mode = p2_coop}
		case p2_coop
		change \{game_mode = p2_battle}
		case p2_battle
		change \{game_mode = p2_career}
		case p2_career
		change \{game_mode = training}
		case training
		change \{game_mode = p1_quickplay}
		change \{debug_with_rhythm = 0}
	endswitch
	toggle_playermode_setprop
endscript

script toggle_playermode_setprop 
	switch $game_mode
		case p1_quickplay
		if ($force_coop)
			if ($debug_with_rhythm)
				toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p1_quickplay with rhythm coop")}
			else
				toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p1_quickplay coop")}
			endif
		else
			if ($debug_with_rhythm)
				toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p1_quickplay with rhythm")}
			else
				toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p1_quickplay")}
			endif
		endif
		case p2_quickplay
		toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p2_quickplay")}
		case p1_career
		toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p1_career")}
		case p1_improv
		toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p1_improv")}
		case p1_boss
		toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p1_boss")}
		case p2_faceoff
		toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p2_faceoff")}
		case p2_pro_faceoff
		toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p2_pro_faceoff")}
		case p2_coop
		toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p2_coop")}
		case p2_battle
		toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p2_battle")}
		case p2_career
		toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: p2_career")}
		case training
		toggle_playermode_menuitem :SE_SetProps \{text = qs("\LPlay Song: training")}
	endswitch
endscript

script toggle_rolandkit 
	if ($roland_drumkit = 1)
		change \{roland_drumkit = 0}
	else
		change \{roland_drumkit = 1}
	endif
	toggle_rolandkit_setprop
endscript

script toggle_rolandkit_setprop 
	if ($roland_drumkit = 1)
		toggle_rolandkit_menuitem :SE_SetProps \{text = qs("\LRoland Drumkit: On")}
	else
		toggle_rolandkit_menuitem :SE_SetProps \{text = qs("\LRoland Drumkit: Off")}
	endif
endscript

script toggle_guitarmotion 
	if ScriptIsRunning \{guitar_motion_test}
		KillSpawnedScript \{name = guitar_motion_test}
		change \{guitar_motion_enable_test = 0}
	else
		spawnscriptnow \{guitar_motion_test}
		change \{guitar_motion_enable_test = 1}
	endif
	toggle_guitarmotion_setprop
endscript

script toggle_guitarmotion_setprop 
	if ScriptIsRunning \{guitar_motion_test}
		toggle_guitarmotion_menuitem :SE_SetProps \{text = qs("\LGuitar motion: On")}
	else
		toggle_guitarmotion_menuitem :SE_SetProps \{text = qs("\LGuitar motion: Off")}
	endif
endscript

script toggle_guitar_touch_test 
	if ScriptIsRunning \{touch_sensor_spawned}
		end_touch_sensor_test
	else
		start_touch_sensor_test
	endif
	toggle_guitar_touch_test_setprop
endscript

script toggle_guitar_touch_test_setprop 
	if ScriptIsRunning \{touch_sensor_spawned}
		toggle_guitar_touch_test_menuitem :SE_SetProps \{text = qs("\LGuitar Touch: On")}
	else
		toggle_guitar_touch_test_menuitem :SE_SetProps \{text = qs("\LGuitar Touch: Off")}
	endif
endscript

script select_slomo 
	ui_menu_select_sfx
	speedfactor = ($current_speedfactor * 10.0)
	CastToInteger \{speedfactor}
	speedfactor = (<speedfactor> + 1)
	if (<speedfactor> > 10)
		speedfactor = 1
	endif
	if (<speedfactor> < 1)
		speedfactor = 1
	endif
	change current_speedfactor = (<speedfactor> / 10.0)
	update_slomo
	select_slomo_setprop
endscript

script update_slomo 
	setslomo \{$current_speedfactor}
	setslomo_song \{slomo = $current_speedfactor}
	player = 1
	begin
	FormatText checksumname = player_status 'player%i_status' i = <player>
	change structurename = <player_status> check_time_early = ($check_time_early * $current_speedfactor)
	change structurename = <player_status> check_time_late = ($check_time_late * $current_speedfactor)
	player = (<player> + 1)
	repeat $current_num_players
endscript

script select_slomo_setprop 
	FormatText \{TextName = slomo_text
		qs("\LSelect Slomo : %s")
		s = $current_speedfactor}
	select_slomo_menuitem :SE_SetProps text = <slomo_text>
endscript
debug_showmeasures = off

script toggle_showmeasures 
	ui_menu_select_sfx
	if ScreenElementExists \{id = debug_measures_text}
		DestroyScreenElement \{id = debug_measures_text}
	endif
	if ($debug_showmeasures = off)
		change \{debug_showmeasures = on}
		CreateScreenElement \{type = TextElement
			parent = root_window
			id = debug_measures_text
			font = debug
			text = qs("\LM: 0 : B: 00")
			scale = 1
			pos = (850.0, 400.0)
			rgba = [
				255
				187
				0
				255
			]
			just = [
				left
				top
			]
			shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba = [
				0
				0
				0
				255
			]
			hide}
		if ($playing_song = 1)
			debug_measures_text :SE_SetProps \{unhide}
		endif
	else
		change \{debug_showmeasures = off}
	endif
	if NOT GotParam \{for_autolaunch}
		toggle_showmeasures_setprop
	endif
endscript

script toggle_showmeasures_setprop 
	if ($debug_showmeasures = off)
		toggle_showmeasures_menuitem :SE_SetProps \{text = qs("\LShow Measures : off")}
	else
		toggle_showmeasures_menuitem :SE_SetProps \{text = qs("\LShow Measures : on")}
	endif
endscript
debug_showsongstars = off

script toggle_showsongstars 
	ui_menu_select_sfx
	if ScreenElementExists \{id = debug_songstars_text}
		DestroyScreenElement \{id = debug_songstars_text}
	endif
	if ($debug_showsongstars = off)
		change \{debug_showsongstars = on}
		CreateScreenElement \{type = TextElement
			parent = root_window
			id = debug_songstars_text
			font = debug
			text = qs("\LStars: 0.0")
			scale = 1
			pos = (850.0, 300.0)
			rgba = [
				255
				187
				0
				255
			]
			just = [
				left
				top
			]
			shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba = [
				0
				0
				0
				255
			]
			hide}
		if ($playing_song = 1)
			debug_songstars_text :SE_SetProps \{unhide}
		endif
	else
		change \{debug_showsongstars = off}
	endif
	toggle_showsongstars_setprop
endscript

script toggle_showsongstars_setprop 
	if NOT ScreenElementExists \{id = toggle_showsongstars_menuitem}
		return
	endif
	if ($debug_showsongstars = off)
		toggle_showsongstars_menuitem :SE_SetProps \{text = qs("\LShow Song Stars : off")}
	else
		toggle_showsongstars_menuitem :SE_SetProps \{text = qs("\LShow Song Stars : on")}
	endif
endscript
debug_showsongtime = off

script toggle_showsongtime 
	ui_menu_select_sfx
	if ScreenElementExists \{id = debug_songtime_text}
		DestroyScreenElement \{id = debug_songtime_text}
	endif
	if ($debug_showsongtime = off)
		change \{debug_showsongtime = on}
		CreateScreenElement \{type = TextElement
			parent = root_window
			id = debug_songtime_text
			font = debug
			text = qs("\LSong Time: 0")
			scale = 1
			pos = (850.0, 350.0)
			rgba = [
				255
				187
				0
				255
			]
			just = [
				left
				top
			]
			shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba = [
				0
				0
				0
				255
			]
			hide}
		if ($playing_song = 1)
			debug_songtime_text :SE_SetProps \{unhide}
		endif
	else
		change \{debug_showsongtime = off}
	endif
	toggle_showsongtime_setprop
endscript

script toggle_showsongtime_setprop 
	if NOT ScreenElementExists \{id = toggle_showsongtime_menuitem}
		return
	endif
	if ($debug_showsongtime = off)
		toggle_showsongtime_menuitem :SE_SetProps \{text = qs("\LShow Song Time : off")}
	else
		toggle_showsongtime_menuitem :SE_SetProps \{text = qs("\LShow Song Time : on")}
	endif
endscript
debug_showcameraname = off

script toggle_showcameraname 
	ui_menu_select_sfx
	if ScreenElementExists \{id = debug_camera_name_text}
		DestroyScreenElement \{id = debug_camera_name_text}
	endif
	if ScreenElementExists \{id = debug_camera_name_text2}
		DestroyScreenElement \{id = debug_camera_name_text2}
	endif
	if ($debug_showcameraname = off)
		change \{debug_showcameraname = on}
	else
		change \{debug_showcameraname = off}
	endif
	toggle_showcameraname_setprop
	CameraCuts_UpdateDebugCameraName
endscript

script toggle_inputlog 
	ui_menu_select_sfx
	kill_debug_elements
	if ($show_play_log = 0)
		change \{show_play_log = 1}
	else
		change \{show_play_log = 0}
	endif
	toggle_inputlog_setprop
	init_play_log
endscript

script toggle_rockmeterdebug 
	ui_menu_select_sfx
	kill_debug_elements
	if ($rock_meter_debug = 0)
		change \{rock_meter_debug = 1}
	else
		change \{rock_meter_debug = 0}
	endif
	toggle_rockmeterdebug_setprop
endscript

script toggle_viewvolumesonscreen 
	ui_menu_select_sfx
	kill_debug_elements
	if ($viewvolumesonscreen = 0)
		change \{viewvolumesonscreen = 1}
		change \{debug_song_volume_info = 1}
	else
		change \{viewvolumesonscreen = 0}
		change \{debug_song_volume_info = 0}
	endif
	toggle_viewvolumesonscreen_setprop
endscript

script toggle_lagtestpart1 
	ui_menu_select_sfx
	kill_debug_elements
	if ($lagtestpart1 = 0)
		change \{lagtestpart1 = 1}
		change \{Debug_Audible_HitNote = 1}
	else
		change \{lagtestpart1 = 0}
		change \{Debug_Audible_HitNote = 0}
	endif
	toggle_lagtestpart1_setprop
endscript

script toggle_lagtestpart2 
	ui_menu_select_sfx
	kill_debug_elements
	if ($lagtestpart2 = 0)
		change \{lagtestpart2 = 1}
		change \{show_play_log = 1}
	else
		change \{lagtestpart2 = 0}
		change \{show_play_log = 0}
	endif
	toggle_lagtestpart2_setprop
endscript

script toggle_lagtestpart3 
	ui_menu_select_sfx
	kill_debug_elements
	if ($lagtestpart3 = 0)
		change \{lagtestpart3 = 1}
		change \{Debug_Audible_Open = 1}
	else
		change \{lagtestpart3 = 0}
		change \{Debug_Audible_Open = 0}
	endif
	toggle_lagtestpart3_setprop
endscript

script edit_inputlagvalue_left 
	ui_menu_select_sfx
	kill_debug_elements
	GetPlatform
	switch <platform>
		case Ps2
		ps2_props = ($default_lag_settings.Ps2)
		ps2_props = {<ps2_props> input_lag_ms = (<ps2_props>.input_lag_ms - 1)}
		change default_lag_settings = {($default_lag_settings) Ps2 = <ps2_props>}
		case ps3
		ps3_props = ($default_lag_settings.ps3)
		ps3_props = {<ps3_props> input_lag_ms = (<ps3_props>.input_lag_ms - 1)}
		change default_lag_settings = {($default_lag_settings) ps3 = <ps3_props>}
		case xenon
		xenon_props = ($default_lag_settings.xenon)
		xenon_props = {<xenon_props> input_lag_ms = (<xenon_props>.input_lag_ms - 1)}
		change default_lag_settings = {($default_lag_settings) xenon = <xenon_props>}
		case wii
		wii_props = ($default_lag_settings.wii)
		wii_props = {<wii_props> input_lag_ms = (<wii_props>.input_lag_ms - 1)}
		change default_lag_settings = {($default_lag_settings) wii = <wii_props>}
		default
		printf \{channel = sfx
			qs("\LDEFAULT CASEEEEEEEEE!!!!!!!!! ")}
	endswitch
	edit_inputlagvalue_setprop
endscript

script edit_inputlagvalue_right 
	ui_menu_select_sfx
	kill_debug_elements
	GetPlatform
	switch <platform>
		case Ps2
		ps2_props = ($default_lag_settings.Ps2)
		ps2_props = {<ps2_props> input_lag_ms = (<ps2_props>.input_lag_ms + 1)}
		change default_lag_settings = {($default_lag_settings) Ps2 = <ps2_props>}
		case ps3
		ps3_props = ($default_lag_settings.ps3)
		ps3_props = {<ps3_props> input_lag_ms = (<ps3_props>.input_lag_ms + 1)}
		change default_lag_settings = {($default_lag_settings) ps3 = <ps3_props>}
		case xenon
		xenon_props = ($default_lag_settings.xenon)
		xenon_props = {<xenon_props> input_lag_ms = (<xenon_props>.input_lag_ms + 1)}
		change default_lag_settings = {($default_lag_settings) xenon = <xenon_props>}
		case wii
		wii_props = ($default_lag_settings.wii)
		wii_props = {<wii_props> input_lag_ms = (<wii_props>.input_lag_ms + 1)}
		change default_lag_settings = {($default_lag_settings) wii = <wii_props>}
		default
		printf \{channel = sfx
			qs("\LDEFAULT CASEEEEEEEEE!!!!!!!!! ")}
	endswitch
	edit_inputlagvalue_setprop
endscript

script edit_gemlagvalue_left 
	ui_menu_select_sfx
	kill_debug_elements
	GetPlatform
	switch <platform>
		case Ps2
		ps2_props = ($default_lag_settings.Ps2)
		ps2_props = {<ps2_props> gem_lag_ms = (<ps2_props>.gem_lag_ms - 1)}
		change default_lag_settings = {($default_lag_settings) Ps2 = <ps2_props>}
		case ps3
		ps3_props = ($default_lag_settings.ps3)
		ps3_props = {<ps3_props> gem_lag_ms = (<ps3_props>.gem_lag_ms - 1)}
		change default_lag_settings = {($default_lag_settings) ps3 = <ps3_props>}
		case xenon
		xenon_props = ($default_lag_settings.xenon)
		xenon_props = {<xenon_props> gem_lag_ms = (<xenon_props>.gem_lag_ms - 1)}
		change default_lag_settings = {($default_lag_settings) xenon = <xenon_props>}
		case wii
		wii_props = ($default_lag_settings.wii)
		wii_props = {<wii_props> gem_lag_ms = (<wii_props>.gem_lag_ms - 1)}
		change default_lag_settings = {($default_lag_settings) wii = <wii_props>}
		default
		printf \{channel = sfx
			qs("\LDEFAULT CASEEEEEEEEE!!!!!!!!! ")}
	endswitch
	edit_gemlagvalue_setprop
endscript

script edit_gemlagvalue_right 
	ui_menu_select_sfx
	kill_debug_elements
	GetPlatform
	switch <platform>
		case Ps2
		ps2_props = ($default_lag_settings.Ps2)
		ps2_props = {<ps2_props> gem_lag_ms = (<ps2_props>.gem_lag_ms + 1)}
		change default_lag_settings = {($default_lag_settings) Ps2 = <ps2_props>}
		case ps3
		ps3_props = ($default_lag_settings.ps3)
		ps3_props = {<ps3_props> gem_lag_ms = (<ps3_props>.gem_lag_ms + 1)}
		change default_lag_settings = {($default_lag_settings) ps3 = <ps3_props>}
		case xenon
		xenon_props = ($default_lag_settings.xenon)
		xenon_props = {<xenon_props> gem_lag_ms = (<xenon_props>.gem_lag_ms + 1)}
		change default_lag_settings = {($default_lag_settings) xenon = <xenon_props>}
		case wii
		wii_props = ($default_lag_settings.wii)
		wii_props = {<wii_props> gem_lag_ms = (<wii_props>.gem_lag_ms + 1)}
		change default_lag_settings = {($default_lag_settings) wii = <wii_props>}
		default
		printf \{channel = sfx
			qs("\LDEFAULT CASEEEEEEEEE!!!!!!!!! ")}
	endswitch
	edit_gemlagvalue_setprop
endscript

script edit_audiolagvalue_left 
	printf \{channel = sfx
		qs("\Ledit_audiolagvalue_left:")}
	ui_menu_select_sfx
	kill_debug_elements
	GetPlatform
	switch <platform>
		case Ps2
		ps2_props = ($default_lag_settings.Ps2)
		ps2_props = {<ps2_props> audio_lag_ms = (<ps2_props>.audio_lag_ms - 1)}
		change default_lag_settings = {($default_lag_settings) Ps2 = <ps2_props>}
		case ps3
		ps3_props = ($default_lag_settings.ps3)
		ps3_props = {<ps3_props> audio_lag_ms = (<ps3_props>.audio_lag_ms - 1)}
		change default_lag_settings = {($default_lag_settings) ps3 = <ps3_props>}
		case xenon
		xenon_props = ($default_lag_settings.xenon)
		xenon_props = {<xenon_props> audio_lag_ms = (<xenon_props>.audio_lag_ms - 1)}
		change default_lag_settings = {($default_lag_settings) xenon = <xenon_props>}
		case wii
		wii_props = ($default_lag_settings.wii)
		wii_props = {<wii_props> audio_lag_ms = (<wii_props>.audio_lag_ms - 1)}
		change default_lag_settings = {($default_lag_settings) wii = <wii_props>}
		default
		printf \{channel = sfx
			qs("\LDEFAULT CASEEEEEEEEE!!!!!!!!! ")}
	endswitch
	edit_audiolagvalue_setprop
endscript

script edit_audiolagvalue_right 
	printf \{channel = sfx
		qs("\Ledit_audiolagvalue_left:")}
	ui_menu_select_sfx
	kill_debug_elements
	GetPlatform
	switch <platform>
		case Ps2
		ps2_props = ($default_lag_settings.Ps2)
		ps2_props = {<ps2_props> audio_lag_ms = (<ps2_props>.audio_lag_ms + 1)}
		change default_lag_settings = {($default_lag_settings) Ps2 = <ps2_props>}
		case ps3
		ps3_props = ($default_lag_settings.ps3)
		ps3_props = {<ps3_props> audio_lag_ms = (<ps3_props>.audio_lag_ms + 1)}
		change default_lag_settings = {($default_lag_settings) ps3 = <ps3_props>}
		case xenon
		xenon_props = ($default_lag_settings.xenon)
		xenon_props = {<xenon_props> audio_lag_ms = (<xenon_props>.audio_lag_ms + 1)}
		change default_lag_settings = {($default_lag_settings) xenon = <xenon_props>}
		case wii
		wii_props = ($default_lag_settings.wii)
		wii_props = {<wii_props> audio_lag_ms = (<wii_props>.audio_lag_ms + 1)}
		change default_lag_settings = {($default_lag_settings) wii = <wii_props>}
		default
		printf \{channel = sfx
			qs("\LDEFAULT CASEEEEEEEEE!!!!!!!!! ")}
	endswitch
	edit_audiolagvalue_setprop
endscript

script toggle_bot \{player = 1}
	ui_menu_select_sfx
	kill_debug_elements
	FormatText checksumname = player_status 'player%d_status' d = <player>
	change structurename = <player_status> bot_play = (1 - ($<player_status>.bot_play))
	toggle_bot_setprop player = <player>
endscript

script toggle_star \{player = 1}
	ui_menu_select_sfx
	kill_debug_elements
	FormatText checksumname = player_status 'player%d_status' d = <player>
	<new_value> = (($<player_status>.star_power_debug_mode) + 1)
	if (<new_value> > 3)
		<new_value> = 0
	endif
	if (<new_value> < 0)
		<new_value> = 3
	endif
	change structurename = <player_status> star_power_debug_mode = <new_value>
	toggle_star_setprop player = <player>
endscript

script edit_inputlog_lines_left 
	ui_menu_select_sfx
	kill_debug_elements
	change play_log_lines = ($play_log_lines -1)
	if ($play_log_lines < 1)
		change \{play_log_lines = 1}
	endif
	edit_inputlog_lines_setprop
	init_play_log
endscript

script edit_inputlog_lines_right 
	ui_menu_select_sfx
	kill_debug_elements
	change play_log_lines = ($play_log_lines + 1)
	if ($play_log_lines > 10)
		change \{play_log_lines = 10}
	endif
	edit_inputlog_lines_setprop
	init_play_log
endscript

script toggle_tilt 
	ui_menu_select_sfx
	kill_debug_elements
	if ($show_guitar_tilt = 0)
		change \{show_guitar_tilt = 1}
	else
		change \{show_guitar_tilt = 0}
	endif
	toggle_tilt_setprop
	init_play_log
endscript

script toggle_showcameraname_setprop 
	if ($debug_showcameraname = off)
		toggle_showcameraname_menuitem :SE_SetProps \{text = qs("\LShow Camera Name : off")}
	else
		toggle_showcameraname_menuitem :SE_SetProps \{text = qs("\LShow Camera Name : on")}
	endif
endscript

script toggle_inputlog_setprop 
	if ($show_play_log = 0)
		toggle_inputlog_menuitem :SE_SetProps \{text = qs("\LShow Input Log : off")}
	else
		toggle_inputlog_menuitem :SE_SetProps \{text = qs("\LShow Input Log : on")}
	endif
endscript

script toggle_rockmeterdebug_setprop 
	if ($rock_meter_debug = 0)
		toggle_rockmeterdebug_menuitem :SE_SetProps \{text = qs("\LRock Meter Debug : off")}
	else
		toggle_rockmeterdebug_menuitem :SE_SetProps \{text = qs("\LRock Meter Debug : on")}
	endif
endscript

script toggle_viewvolumesonscreen_setprop 
	if ($viewvolumesonscreen = 0)
		toggle_viewvolumesonscreen_menuitem :SE_SetProps \{text = qs("\LVolumes On Screen : off")}
	else
		toggle_viewvolumesonscreen_menuitem :SE_SetProps \{text = qs("\LVolumes On Screen : on")}
	endif
endscript

script toggle_lagtestpart1_setprop 
	if ($lagtestpart1 = 0)
		toggle_LagTestPart1_menuitem :SE_SetProps \{text = qs("\LLag Test Part 1 : off")}
	else
		toggle_LagTestPart1_menuitem :SE_SetProps \{text = qs("\LLag Test Part 1 : on")}
	endif
endscript

script toggle_lagtestpart2_setprop 
	if ($lagtestpart2 = 0)
		toggle_LagTestPart2_menuitem :SE_SetProps \{text = qs("\LLag Test Part 2 : off")}
	else
		toggle_LagTestPart2_menuitem :SE_SetProps \{text = qs("\LLag Test Part 2 : on")}
	endif
endscript

script toggle_lagtestpart3_setprop 
	if ($lagtestpart3 = 0)
		toggle_LagTestPart3_menuitem :SE_SetProps \{text = qs("\LLag Test Part 3 : off")}
	else
		toggle_LagTestPart3_menuitem :SE_SetProps \{text = qs("\LLag Test Part 3 : on")}
	endif
endscript

script edit_inputlagvalue_setprop 
	GetPlatform
	switch <platform>
		case Ps2
		FormatText TextName = text qs("\LPS2 Input Logic Lag Value: %l") l = ($default_lag_settings.Ps2.input_lag_ms)
		edit_inputlagvalue_menuitem :SE_SetProps text = <text>
		case ps3
		FormatText TextName = text qs("\LPS3 Input Logic Lag Value: %l") l = ($default_lag_settings.ps3.input_lag_ms)
		edit_inputlagvalue_menuitem :SE_SetProps text = <text>
		case xenon
		FormatText TextName = text qs("\LXenon Input Logic Lag Value: %l") l = ($default_lag_settings.xenon.input_lag_ms)
		edit_inputlagvalue_menuitem :SE_SetProps text = <text>
		case wii
		FormatText TextName = text qs("\LWii Input Logic Lag Value: %l") l = ($default_lag_settings.wii.input_lag_ms)
		edit_inputlagvalue_menuitem :SE_SetProps text = <text>
		default
		printf \{channel = sfx
			qs("\LDEFAULT CASEEEEEEEEE!!!!!!!!! ")}
	endswitch
endscript

script edit_gemlagvalue_setprop 
	GetPlatform
	switch <platform>
		case Ps2
		FormatText TextName = text qs("\LPS2 Gem Lag Value: %l") l = ($default_lag_settings.Ps2.gem_lag_ms)
		edit_gemlagvalue_menuitem :SE_SetProps text = <text>
		case ps3
		FormatText TextName = text qs("\LPS3 Gem Lag Value: %l") l = ($default_lag_settings.ps3.gem_lag_ms)
		edit_gemlagvalue_menuitem :SE_SetProps text = <text>
		case xenon
		FormatText TextName = text qs("\LXenon Gem Lag Value: %l") l = ($default_lag_settings.xenon.gem_lag_ms)
		edit_gemlagvalue_menuitem :SE_SetProps text = <text>
		case wii
		FormatText TextName = text qs("\LWii Gem Lag Value: %l") l = ($default_lag_settings.wii.gem_lag_ms)
		edit_gemlagvalue_menuitem :SE_SetProps text = <text>
		default
		printf \{channel = sfx
			qs("\LDEFAULT CASEEEEEEEEE!!!!!!!!! ")}
	endswitch
endscript

script edit_audiolagvalue_setprop 
	printf \{channel = sfx
		qs("\Ledit_audiolagvalue_setprop:")}
	GetPlatform
	switch <platform>
		case Ps2
		FormatText TextName = text qs("\LPS2 Audio Lag Value: %l") l = ($default_lag_settings.Ps2.audio_lag_ms)
		edit_audiolagvalue_menuitem :SE_SetProps text = <text>
		case ps3
		FormatText TextName = text qs("\LPS3 Audio Lag Value: %l") l = ($default_lag_settings.ps3.audio_lag_ms)
		edit_audiolagvalue_menuitem :SE_SetProps text = <text>
		case xenon
		FormatText TextName = text qs("\LXenon Audio Lag Value: %l") l = ($default_lag_settings.xenon.audio_lag_ms)
		edit_audiolagvalue_menuitem :SE_SetProps text = <text>
		case wii
		FormatText TextName = text qs("\LWii Audio Lag Value: %l") l = ($default_lag_settings.wii.audio_lag_ms)
		edit_audiolagvalue_menuitem :SE_SetProps text = <text>
		default
		printf \{channel = sfx
			qs("\LDEFAULT CASEEEEEEEEE!!!!!!!!! ")}
	endswitch
endscript

script toggle_bot_setprop \{player = 1}
	FormatText checksumname = player_status 'player%d_status' d = <player>
	FormatText TextName = toggletext_off qs("\LToggle Bot P%d: Off") d = <player>
	FormatText TextName = toggletext_on qs("\LToggle Bot P%d: On") d = <player>
	FormatText checksumname = togglebot 'toggle_botp%d_menuitem' d = <player>
	if (($<player_status>.bot_play) = 0)
		<togglebot> :SE_SetProps text = <toggletext_off>
	else
		<togglebot> :SE_SetProps text = <toggletext_on>
	endif
endscript

script toggle_star_setprop \{player = 1}
	FormatText checksumname = player_status 'player%d_status' d = <player>
	FormatText checksumname = togglestar 'toggle_starp%d_menuitem' d = <player>
	switch ($<player_status>.star_power_debug_mode)
		case 0
		FormatText TextName = toggletext qs("\LToggle Star P%d: Off") d = <player>
		case 1
		FormatText TextName = toggletext qs("\LToggle Star P%d: Always on") d = <player>
		case 2
		FormatText TextName = toggletext qs("\LToggle Star P%d: Auto Trigger") d = <player>
		case 3
		FormatText TextName = toggletext qs("\LToggle Star P%d: Auto Full") d = <player>
		default
		FormatText TextName = toggletext qs("\LToggle Star P%d: ???") d = <player>
	endswitch
	<togglestar> :SE_SetProps text = <toggletext>
endscript

script toggle_hyperspeed_setprop \{player = 1}
	FormatText checksumname = player_status 'player%d_status' d = <player>
	FormatText checksumname = togglehyperspeed 'toggle_hyperspeedp%d_menuitem' d = <player>
	FormatText TextName = toggletext qs("\LSet Hyperspeed P%p: %d") p = <player> d = ($<player_status>.hyperspeed)
	<togglehyperspeed> :SE_SetProps text = <toggletext>
endscript

script edit_inputlog_lines_setprop 
	FormatText TextName = text qs("\LInput Log Lines: %l") l = ($play_log_lines)
	edit_inputlog_lines_menuitem :SE_SetProps text = <text>
endscript

script toggle_tilt_setprop 
	if ($show_guitar_tilt = 0)
		toggle_tilt_menuitem :SE_SetProps \{text = qs("\LShow Tilt : off")}
	else
		toggle_tilt_menuitem :SE_SetProps \{text = qs("\LShow Tilt : on")}
	endif
endscript

script toggle_leftyflip 
	ui_menu_select_sfx
	GetGlobalTags \{user_options}
	if (<lefty_flip_p1> = 0)
		SetGlobalTags \{user_options
			params = {
				lefty_flip_p1 = 1
			}}
	else
		SetGlobalTags \{user_options
			params = {
				lefty_flip_p1 = 0
			}}
	endif
	GetGlobalTags \{user_options}
	change structurename = <player_status> lefthanded_gems = <lefty_flip_p1>
	change structurename = <player_status> lefthanded_button_ups = <lefty_flip_p1>
	toggle_leftyflip_setprop
endscript

script toggle_leftyflip_setprop 
	GetGlobalTags \{user_options}
	if (<lefty_flip_p1> = 0)
		toggle_leftyflip_menuitem :SE_SetProps \{text = qs("\LLefty Flip : off")}
	else
		toggle_leftyflip_menuitem :SE_SetProps \{text = qs("\LLefty Flip : on")}
	endif
endscript
debug_forcescore = off
debug_forcescore_dir = up

script toggle_forcescore 
	ui_menu_select_sfx
	switch $debug_forcescore
		case off
		change \{debug_forcescore = poor}
		case poor
		change \{debug_forcescore = medium}
		case medium
		change \{debug_forcescore = good}
		case good
		change \{debug_forcescore = off}
		default
		change \{debug_forcescore = off}
	endswitch
	CrowdIncrease \{player_status = player1_status}
	toggle_forcescore_setprop
endscript

script toggle_forcescore_setprop 
	switch $debug_forcescore
		case off
		toggle_forcescore_menuitem :SE_SetProps \{text = qs("\LForce Score : off")}
		case poor
		toggle_forcescore_menuitem :SE_SetProps \{text = qs("\LForce Score : poor")}
		case medium
		toggle_forcescore_menuitem :SE_SetProps \{text = qs("\LForce Score : medium")}
		case good
		toggle_forcescore_menuitem :SE_SetProps \{text = qs("\LForce Score : good")}
		default
		toggle_forcescore_menuitem :SE_SetProps \{text = qs("\LForce Score : off")}
	endswitch
endscript

script toggle_vocalsfreeform 
	ui_menu_select_sfx
	if ($vocal_enable_freeform_always = 1)
		change \{vocal_enable_freeform_always = 0}
	else
		change \{vocal_enable_freeform_always = 1}
	endif
	toggle_vocalsfreeform_setprop
endscript

script toggle_vocalsfreeform_setprop 
	if ($vocal_enable_freeform_always = 1)
		toggle_vocalsfreeform_menuitem :SE_SetProps \{text = qs("\LVocals Freeform Always: On")}
	else
		toggle_vocalsfreeform_menuitem :SE_SetProps \{text = qs("\LVocals Freeform Always: Off")}
	endif
endscript

script toggle_allowcontroller 
	if ($allow_controller_for_all_instruments = 1)
		change \{allow_controller_for_all_instruments = 0}
	else
		change \{allow_controller_for_all_instruments = 1}
	endif
	toggle_allowcontroller_setprop
endscript

script toggle_allowcontroller_setprop 
	if ($allow_controller_for_all_instruments = 1)
		toggle_allowcontroller_menuitem :SE_SetProps \{text = qs("\LAllow Controller for All Instruments: On")}
	else
		toggle_allowcontroller_menuitem :SE_SetProps \{text = qs("\LAllow Controller for All Instruments: Off")}
	endif
endscript

script create_changevenue_menu 
	ui_menu_select_sfx
	destroy_settings_menu
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = changevenue_scrolling_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos + (70.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = changevenue_scrolling_menu
		id = changevenue_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_settings_menu
				}
			}
		]}
	get_LevelZoneArray_size
	array_count = 0
	begin
	get_LevelZoneArray_checksum index = <array_count>
	CreateScreenElement {
		type = TextElement
		parent = changevenue_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = ($LevelZones.<level_checksum>.title)
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose select_venue params = {level = <level_checksum> norestart}}
		]
	}
	<array_count> = (<array_count> + 1)
	repeat <array_size>
	LaunchEvent \{type = focus
		target = changevenue_vmenu}
endscript

script back_to_changevenue_menu 
	create_changevenue_menu
endscript

script destroy_changevenue_menu 
	if ScreenElementExists \{id = changevenue_scrolling_menu}
		DestroyScreenElement \{id = changevenue_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script select_venue 
	ui_menu_select_sfx
	kill_gem_scroller
	if GotParam \{level}
		change current_level = <level>
	endif
	SetPakManCurrentBlock \{map = zones
		pak = none
		block_scripts = 1}
	ChangeNodeFlag \{LS_3_5_PRE
		1}
	ChangeNodeFlag \{LS_3_5_POST
		0}
	ChangeNodeFlag \{LS_ENCORE_PRE
		1}
	ChangeNodeFlag \{LS_ENCORE_POST
		0}
	DestroyPakManMap \{map = zones}
	MemPushContext \{BottomUpHeap}
	get_heap_sizes
	if ($ps2_venues = 1)
		CreatePakManMap map = zones links = GHZones folder = 'zones_ps2/' size = (<size_zones> / 1024) vram_size = (<size_zones_vram> / 1024) allocheap = heap_cas
	else
		CreatePakManMap map = zones links = GHZones folder = 'zones/' size = (<size_zones> / 1024) vram_size = (<size_zones_vram> / 1024) allocheap = heap_cas
	endif
	MemPopContext
	Load_Venue \{block_scripts = 1}
	setup_bg_viewport
	restore_dummy_bg_camera
	disable_bg_viewport_properties
	create_movie_viewport
	if ($current_level = load_z_testlevel_peds)
		spawnscriptnow \{testlevel_debug}
	else
		if NOT create_band
			DownloadContentLost
		endif
		create_crowd_models
		crowd_reset \{player_status = player1_status
			player = 1}
	endif
	enable_pause
	if NOT GotParam \{norestart}
		gh3_start_pressed
		restart_gem_scroller song_name = ($current_song) difficulty = ($player1_status.difficulty) difficulty2 = ($player2_status.difficulty) StartTime = ($current_starttime) device_num = <device_num>
	else
		ToggleViewMode \{viewerreload}
		ToggleViewMode \{viewerreload}
	endif
	destroy_changevenue_menu
	generic_event_choose \{state = uistate_gameplay}
endscript

script testlevel_debug 
	begin
	if ControllerMake \{circle
			0}
		next_peds
	endif
	if ControllerMake \{circle
			1}
		next_peds
	endif
	Wait \{1
		gameframe}
	repeat
endscript
debug_ped_row = 0

script next_peds 
	kill \{prefix = Z_TestLevel_Peds_Row0}
	kill \{prefix = Z_TestLevel_Peds_Row1}
	kill \{prefix = Z_TestLevel_Peds_Row2}
	kill \{prefix = Z_TestLevel_Peds_Row3}
	kill \{prefix = Z_TestLevel_Peds_Row4}
	kill \{prefix = Z_TestLevel_Peds_Row5}
	kill \{prefix = Z_TestLevel_Peds_Row6}
	kill \{prefix = Z_TestLevel_Peds_Row7}
	Wait \{1
		gameframe}
	begin
	change debug_ped_row = ($debug_ped_row + 1)
	FormatText checksumname = row 'Z_TestLevel_Peds_row%r' r = ($debug_ped_row)
	create prefix = <row>
	if IsAlive prefix = <row>
		break
	else
		change \{debug_ped_row = -1}
	endif
	repeat
endscript

script back_to_changehighway_menu 
	create_changehighway_menu
endscript

script destroy_changehighway_menu 
	if ScreenElementExists \{id = changehighway_scrolling_menu}
		DestroyScreenElement \{id = changehighway_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script create_changeguitar_menu \{type = guitar}
	ui_menu_select_sfx
	destroy_settings_menu
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = changeguitar_scrolling_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos + (70.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = changeguitar_scrolling_menu
		id = changeguitar_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_settings_menu
				}
			}
		]}
	get_musician_instrument_size
	array_count = 0
	begin
	get_musician_instrument_struct index = <array_count>
	if (<type> = (<info_struct>.type))
		printf qs("\LCreating %i") i = (<info_struct>.name)
		CreateScreenElement {
			type = TextElement
			parent = changeguitar_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = (<info_struct>.name)
			just = [left top]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose select_guitar params = {guitar = <array_count> type = <type>}}
			]
		}
	endif
	<array_count> = (<array_count> + 1)
	repeat <array_size>
	LaunchEvent \{type = focus
		target = changeguitar_vmenu}
endscript

script back_to_changeguitar_menu 
	create_changeguitar_menu
endscript

script destroy_changeguitar_menu 
	if ScreenElementExists \{id = changeguitar_scrolling_menu}
		DestroyScreenElement \{id = changeguitar_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script select_guitar \{type = guitar}
	ui_menu_select_sfx
	kill_gem_scroller
	select_start_song
endscript
HideByType_List = [
	'real_crowd'
	'stage'
	'scene_ped'
]
HideByType_Visible = [
	on
	on
	on
]

script create_togglevisibility_menu 
	ui_menu_select_sfx
	destroy_settings_menu
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = togglevisibility_scrolling_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos + (70.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = togglevisibility_scrolling_menu
		id = togglevisibility_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_settings_menu
				}
			}
		]}
	CreateScreenElement \{type = TextElement
		parent = togglevisibility_vmenu
		id = toggle_bandvisible_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LToggle band")
		just = [
			left
			top
		]
		z_priority = 100.0
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_bandvisible
			}
		]}
	toggle_bandvisible_setprop
	GetArraySize \{$HideByType_List}
	array_count = 0
	begin
	FormatText checksumname = type_checksum '%s' s = ($HideByType_List [<array_count>])
	FormatText checksumname = menuitem_checksum 'toggle_hidebytype_menuitem_%s' s = ($HideByType_List [<array_count>])
	CreateScreenElement {
		type = TextElement
		parent = togglevisibility_vmenu
		id = <menuitem_checksum>
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("")
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose toggle_hidebytype params = {type = type_checksum array_count = <array_count>}}
		]
	}
	array_count = (<array_count> + 1)
	repeat <array_size>
	toggle_hidebytype_setprop
	CreateScreenElement \{type = TextElement
		parent = togglevisibility_vmenu
		id = toggle_highway_menuitem
		font = debug
		scale = 0.75
		rgba = [
			210
			210
			210
			250
		]
		text = qs("\LToggle highway and HUD")
		z_priority = 100.0
		just = [
			left
			top
		]
		event_handlers = [
			{
				focus
				menu_focus
			}
			{
				unfocus
				menu_unfocus
			}
			{
				pad_choose
				toggle_highway
			}
		]}
	toggle_highway_setprop
	LaunchEvent \{type = focus
		target = togglevisibility_vmenu}
endscript

script back_to_togglevisibility_menu 
	create_togglevisibility_menu
endscript

script destroy_togglevisibility_menu 
	if ScreenElementExists \{id = togglevisibility_scrolling_menu}
		DestroyScreenElement \{id = togglevisibility_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript
highwayvisible = on

script toggle_highway 
	ui_menu_select_sfx
	if ($highwayvisible = off)
		if ScreenElementExists \{id = gem_containerp1}
			LegacyDoScreenElementMorph \{id = gem_containerp1
				alpha = 1}
		endif
		if ScreenElementExists \{id = gem_containerp2}
			LegacyDoScreenElementMorph \{id = gem_containerp2
				alpha = 1}
		endif
		if ScreenElementExists \{id = gem_containerp3}
			LegacyDoScreenElementMorph \{id = gem_containerp3
				alpha = 1}
		endif
		if ScreenElementExists \{id = gem_containerp4}
			LegacyDoScreenElementMorph \{id = gem_containerp4
				alpha = 1}
		endif
		if ScreenElementExists \{id = vocals_highway_p1}
			LegacyDoScreenElementMorph \{id = vocals_highway_p1
				alpha = 1}
		endif
		if ScreenElementExists \{id = vocals_highway_p2}
			LegacyDoScreenElementMorph \{id = vocals_highway_p2
				alpha = 1}
		endif
		enable_highway_prepass
		change \{highwayvisible = on}
		show_hud
	else
		if ScreenElementExists \{id = gem_containerp1}
			LegacyDoScreenElementMorph \{id = gem_containerp1
				alpha = 0}
		endif
		if ScreenElementExists \{id = gem_containerp2}
			LegacyDoScreenElementMorph \{id = gem_containerp2
				alpha = 0}
		endif
		if ScreenElementExists \{id = gem_containerp3}
			LegacyDoScreenElementMorph \{id = gem_containerp3
				alpha = 0}
		endif
		if ScreenElementExists \{id = gem_containerp4}
			LegacyDoScreenElementMorph \{id = gem_containerp4
				alpha = 0}
		endif
		if ScreenElementExists \{id = vocals_highway_p1}
			LegacyDoScreenElementMorph \{id = vocals_highway_p1
				alpha = 0}
		endif
		if ScreenElementExists \{id = vocals_highway_p2}
			LegacyDoScreenElementMorph \{id = vocals_highway_p2
				alpha = 0}
		endif
		disable_highway_prepass
		change \{highwayvisible = off}
		hide_hud
	endif
	toggle_highway_setprop
endscript

script toggle_highway_setprop 
	if ScreenElementExists \{id = toggle_highway_menuitem}
		if ($highwayvisible = off)
			toggle_highway_menuitem :SE_SetProps \{text = qs("\LToggle highway and HUD : off")}
		else
			toggle_highway_menuitem :SE_SetProps \{text = qs("\LToggle highway and HUD : on")}
		endif
	endif
endscript
bandvisible = on

script toggle_bandvisible 
	ui_menu_select_sfx
	if ($bandvisible = off)
		change \{bandvisible = on}
	else
		change \{bandvisible = off}
	endif
	set_bandvisible
	toggle_bandvisible_setprop
endscript

script set_bandvisible 
	if ($bandvisible = off)
		if CompositeObjectExists \{Guitarist}
			Guitarist :hide
		endif
		if CompositeObjectExists \{vocalist}
			vocalist :hide
		endif
		if CompositeObjectExists \{bassist}
			bassist :hide
		endif
		if CompositeObjectExists \{rhythm}
			rhythm :hide
		endif
		if CompositeObjectExists \{Drummer}
			Drummer :hide
		endif
	else
		if CompositeObjectExists \{Guitarist}
			Guitarist :unhide
		endif
		if CompositeObjectExists \{vocalist}
			vocalist :unhide
		endif
		if CompositeObjectExists \{bassist}
			bassist :unhide
		endif
		if CompositeObjectExists \{rhythm}
			rhythm :unhide
		endif
		if CompositeObjectExists \{Drummer}
			Drummer :unhide
		endif
	endif
endscript

script toggle_bandvisible_setprop 
	if ($bandvisible = off)
		toggle_bandvisible_menuitem :SE_SetProps \{text = qs("\LToggle band : off")}
	else
		toggle_bandvisible_menuitem :SE_SetProps \{text = qs("\LToggle band : on")}
	endif
endscript

script toggle_hidebytype 
	ui_menu_select_sfx
	if (($HideByType_Visible [<array_count>]) = off)
		SetArrayElement ArrayName = HideByType_Visible GlobalArray index = <array_count> newvalue = on
	else
		SetArrayElement ArrayName = HideByType_Visible GlobalArray index = <array_count> newvalue = off
	endif
	set_hidebytype
	toggle_hidebytype_setprop
endscript

script set_hidebytype 
	GetArraySize \{$HideByType_List}
	array_count = 0
	begin
	FormatText checksumname = type_checksum '%s' s = ($HideByType_List [<array_count>])
	if (($HideByType_Visible [<array_count>]) = off)
		HideObjectByType type = <type_checksum>
	else
		HideObjectByType type = <type_checksum> unhide
	endif
	array_count = (<array_count> + 1)
	repeat <array_size>
endscript

script toggle_hidebytype_setprop 
	GetArraySize \{$HideByType_List}
	array_count = 0
	begin
	if (($HideByType_Visible [<array_count>]) = off)
		FormatText TextName = menutext qs("\LToggle %s : off") s = ($HideByType_List [<array_count>])
	else
		FormatText TextName = menutext qs("\LToggle %s : on") s = ($HideByType_List [<array_count>])
	endif
	FormatText checksumname = menuitem_checksum 'toggle_hidebytype_menuitem_%s' s = ($HideByType_List [<array_count>])
	<menuitem_checksum> :SE_SetProps text = <menutext>
	array_count = (<array_count> + 1)
	repeat <array_size>
endscript

script create_skipintosong_menu 
	ui_menu_select_sfx
	destroy_debugging_menu
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = skipintosong_scrolling_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos + (20.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = skipintosong_scrolling_menu
		id = skipintosong_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_debug_menu
				}
			}
		]}
	CreateScreenElement {
		type = TextElement
		parent = skipintosong_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LSkip By Time")
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose create_skipbytime_menu params = {from_gameplay = <from_gameplay>}}
		]
	}
	CreateScreenElement {
		type = TextElement
		parent = skipintosong_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LSkip By Marker")
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose create_skipbymarker_menu params = {from_gameplay = <from_gameplay>}}
		]
	}
	CreateScreenElement {
		type = TextElement
		parent = skipintosong_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LSkip By Measure")
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose create_skipbymeasure_menu params = {from_gameplay = <from_gameplay>}}
		]
	}
	CreateScreenElement {
		type = TextElement
		parent = skipintosong_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LSet Loop Point")
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose create_looppoint_menu params = {from_gameplay = <from_gameplay>}}
		]
	}
	LaunchEvent \{type = focus
		target = skipintosong_vmenu}
endscript

script back_to_skipintosong_menu 
	destroy_skipbytime_menu
	destroy_skipbymarker_menu
	destroy_skipbymeasure_menu
	destroy_looppoint_menu
	create_skipintosong_menu
endscript

script destroy_skipintosong_menu 
	if ScreenElementExists \{id = skipintosong_scrolling_menu}
		DestroyScreenElement \{id = skipintosong_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script create_skipbytime_menu 
	ui_menu_select_sfx
	if GotParam \{looppoint}
		destroy_looppoint_menu
		callback = back_to_looppoint_menu
	else
		destroy_skipintosong_menu
		callback = back_to_skipintosong_menu
	endif
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = skipbytime_scrolling_menu
		just = [left top]
		dims = (400.0, 250.0)
		pos = ($menu_pos + (70.0, 0.0))
	}
	CreateScreenElement {
		type = VMenu
		parent = skipbytime_scrolling_menu
		id = skipbytime_vmenu
		pos = (0.0, 0.0)
		just = [left top]
		event_handlers = [{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
			{pad_back generic_menu_pad_back params = {callback = <callback>}}
		]
	}
	menu_func = select_start_song
	if GotParam \{looppoint}
		menu_func = set_looppoint
		CreateScreenElement {
			type = TextElement
			parent = skipbytime_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = qs("\LNo Loop Point")
			just = [left top]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose <menu_func> params = {StartTime = -1000000 from_gameplay = <from_gameplay>}}
			]
		}
	endif
	get_song_prefix song = ($current_song)
	FormatText checksumname = fretbar_array '%s_fretbars' s = <song_prefix> AddToStringLookup
	GetArraySize $<fretbar_array>
	max_time = (($<fretbar_array> [(<array_size> - 1)]) / 1000)
	current_time = 0
	begin
	FormatText TextName = menu_itemname qs("\LTime %ss") s = <current_time>
	if (<current_time> < <max_time>)
		CreateScreenElement {
			type = TextElement
			parent = skipbytime_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = <menu_itemname>
			just = [left top]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose <menu_func> params = {song_name = ($current_song) difficulty = ($player1_status.difficulty) difficulty2 = ($player2_status.difficulty) StartTime = (<current_time> * 1000) from_gameplay = <from_gameplay>}}
			]
		}
	else
		break
	endif
	current_time = (<current_time> + 5)
	repeat
	LaunchEvent \{type = focus
		target = skipbytime_vmenu}
endscript

script back_to_skipbytime_menu 
	create_skipbytime_menu
endscript

script destroy_skipbytime_menu 
	if ScreenElementExists \{id = skipbytime_scrolling_menu}
		DestroyScreenElement \{id = skipbytime_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script create_skipbymarker_menu 
	ui_menu_select_sfx
	if GotParam \{looppoint}
		destroy_looppoint_menu
		callback = back_to_looppoint_menu
	else
		destroy_skipintosong_menu
		callback = back_to_skipintosong_menu
	endif
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = skipbymarker_scrolling_menu
		just = [left top]
		dims = (400.0, 250.0)
		pos = ($menu_pos + (30.0, 0.0))
	}
	CreateScreenElement {
		type = VMenu
		parent = skipbymarker_scrolling_menu
		id = skipbymarker_vmenu
		pos = (0.0, 0.0)
		just = [left top]
		event_handlers = [{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
			{pad_back generic_menu_pad_back params = {callback = <callback>}}
		]
	}
	menu_func = select_start_song
	if GotParam \{looppoint}
		menu_func = set_looppoint
		CreateScreenElement {
			type = TextElement
			parent = skipbymarker_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = qs("\LNo Loop Point")
			just = [left top]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose <menu_func> params = {StartTime = -1000000 from_gameplay = <from_gameplay>}}
			]
		}
	endif
	get_song_prefix song = ($current_song)
	FormatText checksumname = marker_array '%s_guitar_markers' s = <song_prefix>
	GetMarkerArraySize array = <marker_array>
	if (<array_size> = 0)
		CreateScreenElement {
			type = TextElement
			parent = skipbymarker_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = qs("\Lstart")
			just = [left top]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose <menu_func> params = {song_name = ($current_song) difficulty = ($player1_status.difficulty) difficulty2 = ($player2_status.difficulty) StartTime = -1000000 from_gameplay = <from_gameplay>}}
			]
		}
	else
		marker_count = 0
		begin
		FormatText TextName = menu_itemname qs("\L%m (%ss)") m = ($<marker_array> [<marker_count>].marker) s = (($<marker_array> [<marker_count>].time) / 1000)
		CreateScreenElement {
			type = TextElement
			parent = skipbymarker_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = <menu_itemname>
			just = [left top]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose <menu_func> params = {song_name = ($current_song) difficulty = ($player1_status.difficulty) difficulty2 = ($player2_status.difficulty) StartTime = ($<marker_array> [<marker_count>].time) startmarker = <marker_count> from_gameplay = <from_gameplay>}}
			]
		}
		marker_count = (<marker_count> + 1)
		repeat <array_size>
	endif
	LaunchEvent \{type = focus
		target = skipbymarker_vmenu}
endscript

script back_to_skipbymarker_menu 
	create_skipbymarker_menu
endscript

script destroy_skipbymarker_menu 
	if ScreenElementExists \{id = skipbymarker_scrolling_menu}
		DestroyScreenElement \{id = skipbymarker_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script create_skipbymeasure_menu 
	ui_menu_select_sfx
	if GotParam \{looppoint}
		destroy_looppoint_menu
		callback = back_to_looppoint_menu
	else
		destroy_skipintosong_menu
		callback = back_to_skipintosong_menu
	endif
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = skipbymeasure_scrolling_menu
		just = [left top]
		dims = (400.0, 250.0)
		pos = ($menu_pos + (-30.0, 0.0))
	}
	CreateScreenElement {
		type = VMenu
		parent = skipbymeasure_scrolling_menu
		id = skipbymeasure_vmenu
		pos = (0.0, 0.0)
		just = [left top]
		event_handlers = [{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
			{pad_back generic_menu_pad_back params = {callback = <callback>}}
		]
	}
	menu_func = select_start_song
	if GotParam \{looppoint}
		menu_func = set_looppoint
		CreateScreenElement {
			type = TextElement
			parent = skipbymeasure_vmenu
			font = debug
			scale = 0.75
			rgba = [210 210 210 250]
			text = qs("\LNo Loop Point")
			just = [left top]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose <menu_func> params = {StartTime = -1000000 from_gameplay = <from_gameplay>}}
			]
		}
	endif
	get_song_prefix song = ($current_song)
	FormatText checksumname = fretbar_array '%s_fretbars' s = <song_prefix> AddToStringLookup
	FormatText checksumname = timesig '%s_timesig' s = <song_prefix> AddToStringLookup
	GetArraySize $<timesig>
	timesig_entry = 0
	timesig_size = <array_size>
	timesig_num = 0
	measure_count = 0
	GetArraySize $<fretbar_array>
	array_entry = 0
	fretbar_count = 0
	begin
	if (<timesig_entry> < <timesig_size>)
		if ($<timesig> [<timesig_entry>] [0] <= $<fretbar_array> [<array_entry>])
			<timesig_num> = ($<timesig> [<timesig_entry>] [1])
			fretbar_count = 0
			timesig_entry = (<timesig_entry> + 1)
		endif
	endif
	fretbar_count = (<fretbar_count> + 1)
	if (<fretbar_count> = <timesig_num>)
		measure_count = (<measure_count> + 1)
		fretbar_count = 0
	endif
	array_entry = (<array_entry> + 1)
	repeat <array_size>
	if (<measure_count> > 150)
		measures_per_menuitem = 2
	else
		measures_per_menuitem = 1
	endif
	timesig_entry = 0
	measure_count = 0
	array_entry = 0
	fretbar_count = 0
	measures_per_menuitem_count = 0
	begin
	if (<timesig_entry> < <timesig_size>)
		if ($<timesig> [<timesig_entry>] [0] <= $<fretbar_array> [<array_entry>])
			<timesig_num> = ($<timesig> [<timesig_entry>] [1])
			fretbar_count = 0
			timesig_entry = (<timesig_entry> + 1)
		endif
	endif
	if (<fretbar_count> = 0)
		measures_per_menuitem_count = (<measures_per_menuitem_count> + 1)
		if (<measures_per_menuitem_count> = <measures_per_menuitem>)
			time = ($<fretbar_array> [(<array_entry>)])
			FormatText TextName = menu_itemname qs("\LMeasure %m (%ss)") s = (<time> / 1000.0) m = <measure_count>
			printf qs("\L%m") m = <menu_itemname>
			CreateScreenElement {
				type = TextElement
				parent = skipbymeasure_vmenu
				font = debug
				scale = 0.75
				rgba = [210 210 210 250]
				text = <menu_itemname>
				just = [left top]
				z_priority = 100.0
				event_handlers = [
					{focus menu_focus}
					{unfocus menu_unfocus}
					{pad_choose <menu_func> params = {song_name = ($current_song) difficulty = ($player1_status.difficulty) difficulty2 = ($player2_status.difficulty) StartTime = <time> from_gameplay = <from_gameplay>}}
				]
			}
			measures_per_menuitem_count = 0
		endif
	endif
	fretbar_count = (<fretbar_count> + 1)
	if (<fretbar_count> = <timesig_num>)
		measure_count = (<measure_count> + 1)
		fretbar_count = 0
	endif
	array_entry = (<array_entry> + 1)
	repeat <array_size>
	LaunchEvent \{type = focus
		target = skipbymeasure_vmenu}
endscript

script back_to_skipbymeasure_menu 
	create_skipbymeasure_menu
endscript

script destroy_skipbymeasure_menu 
	if ScreenElementExists \{id = skipbymeasure_scrolling_menu}
		DestroyScreenElement \{id = skipbymeasure_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script create_looppoint_menu 
	ui_menu_select_sfx
	destroy_skipintosong_menu
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	CreateScreenElement {
		type = VScrollingMenu
		parent = Pause_Menu
		id = looppoint_scrolling_menu
		just = [left top]
		dims = (400.0, 480.0)
		pos = ($menu_pos + (20.0, 0.0))
	}
	CreateScreenElement \{type = VMenu
		parent = looppoint_scrolling_menu
		id = looppoint_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_skipintosong_menu
				}
			}
		]}
	CreateScreenElement {
		type = TextElement
		parent = looppoint_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LLoop By Time")
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose create_skipbytime_menu params = {looppoint from_gameplay = <from_gameplay>}}
		]
	}
	CreateScreenElement {
		type = TextElement
		parent = looppoint_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LLoop By Marker")
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose create_skipbymarker_menu params = {looppoint from_gameplay = <from_gameplay>}}
		]
	}
	CreateScreenElement {
		type = TextElement
		parent = looppoint_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = qs("\LLoop By Measure")
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose create_skipbymeasure_menu params = {looppoint from_gameplay = <from_gameplay>}}
		]
	}
	LaunchEvent \{type = focus
		target = looppoint_vmenu}
endscript

script back_to_looppoint_menu 
	destroy_skipbytime_menu
	destroy_skipbymarker_menu
	destroy_skipbymeasure_menu
	create_looppoint_menu
endscript

script destroy_looppoint_menu 
	if ScreenElementExists \{id = looppoint_scrolling_menu}
		DestroyScreenElement \{id = looppoint_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script set_looppoint 
	ui_menu_select_sfx
	change current_looppoint = <StartTime>
	gh3_start_pressed
endscript

script create_replay_menu 
	ui_menu_select_sfx
	destroy_debugging_menu
	create_menu_backdrop \{texture = black
		rgba = [
			0
			0
			0
			128
		]
		z_priority = 90}
	x_pos = 450
	CreateScreenElement \{type = VScrollingMenu
		parent = Pause_Menu
		id = replay_scrolling_menu
		just = [
			left
			top
		]
		dims = (400.0, 250.0)
		pos = (450.0, 120.0)}
	CreateScreenElement \{type = VMenu
		parent = replay_scrolling_menu
		id = replay_vmenu
		pos = (0.0, 0.0)
		just = [
			left
			top
		]
		event_handlers = [
			{
				pad_up
				generic_menu_up_or_down_sound
				params = {
					up
				}
			}
			{
				pad_down
				generic_menu_up_or_down_sound
				params = {
					down
				}
			}
			{
				pad_back
				generic_menu_pad_back
				params = {
					callback = back_to_debug_menu
				}
			}
		]}
	StartWildcardSearch \{wildcard = 'buffers\\*.rep'}
	index = 0
	begin
	if NOT GetWildcardFile
		break
	endif
	CreateScreenElement {
		type = TextElement
		parent = replay_vmenu
		font = debug
		scale = 0.75
		rgba = [210 210 210 250]
		text = <basename>
		just = [left top]
		z_priority = 100.0
		event_handlers = [
			{focus menu_focus}
			{unfocus menu_unfocus}
			{pad_choose play_replay params = {replay = <filename> song_name = qs("\Lblah") difficulty = qs("\Lblah") difficulty2 = qs("\Lblah")}}
		]
	}
	<index> = (<index> + 1)
	repeat
	EndWildcardSearch
	LaunchEvent \{type = focus
		target = replay_vmenu}
endscript

script destroy_replay_menu 
	if ScreenElementExists \{id = replay_scrolling_menu}
		DestroyScreenElement \{id = replay_scrolling_menu}
	endif
	destroy_menu_backdrop
endscript

script play_replay 
	destroy_replay_menu
	restart_gem_scroller <...>
endscript

script select_start_song 
	if GotParam \{forceintro}
		change \{current_transition = forceintro}
	endif
	if GotParam \{song_name}
		change current_song = <song_name>
	endif
	if GotParam \{difficulty}
		change structurename = player1_status difficulty = <difficulty>
	endif
	if GotParam \{difficulty2}
		change structurename = player2_status difficulty = <difficulty2>
	endif
	if GotParam \{StartTime}
		change current_starttime = <StartTime>
	endif
	if GotParam \{part}
		change structurename = player1_status part = <part>
	endif
	if GotParam \{part2}
		change structurename = player2_status part = <part2>
	endif
	if GotParam \{from_gameplay}
		restart_warning_select_restart \{dont_save_song_data}
	else
		generic_event_choose data = {state = uistate_play_song StartTime = <StartTime> uselaststarttime = <uselaststarttime>}
	endif
	vocals_distribute_mics
	destroy_all_debug_menus
endscript

script start_song_with_intro 
	if ($selected_intro = -1)
		printf \{channel = Band
			qs("\Lrestarting intro-------")}
		change \{game_mode = p1_career}
		select_start_song uselaststarttime from_gameplay = <from_gameplay>
		return
	endif
	song_name = ($Celeb_Intro_Transitions [$selected_intro].song)
	venue = ($Celeb_Intro_Transitions [$selected_intro].venue)
	intro = ($Celeb_Intro_Transitions [$selected_intro].intro)
	printf channel = Band qs("\Lplaying %a at %b") a = <song_name> b = <venue>
	printf channel = Band qs("\Lintro is %a") a = <intro>
	FormatText checksumname = transition '%s' s = <intro>
	change current_transition = <transition>
	change current_song = <song_name>
	change current_level = <venue>
	change \{current_starttime = 0}
	select_venue level = <venue>
endscript
selected_intro = 0

script toggle_intro_select_left 
	change selected_intro = ($selected_intro - 1)
	if ($selected_intro < 0)
		GetArraySize \{$Celeb_Intro_Transitions}
		change selected_intro = (<array_size> - 1)
	endif
	toggle_intro_select_setprop
endscript

script toggle_intro_select_right 
	change selected_intro = ($selected_intro + 1)
	GetArraySize \{$Celeb_Intro_Transitions}
	if ($selected_intro >= <array_size>)
		change \{selected_intro = 0}
	endif
	toggle_intro_select_setprop
endscript

script toggle_intro_select_setprop 
	if ($selected_intro = -1)
		toggle_intro_select :SE_SetProps \{text = qs("\LRepeat Last Song With Intro")}
		return
	endif
	intro_name = ($Celeb_Intro_Transitions [$selected_intro].intro)
	printf qs("\Lintro is now %a (%b)") a = <intro_name> b = $selected_intro
	FormatText TextName = select_string qs("\LPlay %a") a = <intro_name>
	toggle_intro_select :SE_SetProps text = <select_string>
endscript

script ui_menu_scroll_sfx 
	SoundEvent \{event = ui_sfx_scroll}
	SoundEvent \{event = ui_sfx_scroll_add}
endscript

script ui_menu_select_sfx 
	SoundEvent \{event = ui_sfx_select}
endscript

script menu_focus 
	Obj_GetID
	<id> = <ObjID>
	printstruct <...>
	SetScreenElementProps id = <id> rgba = [210 130 0 250]
endscript

script menu_unfocus 
	Obj_GetID
	<id> = <ObjID>
	SetScreenElementProps id = <id> rgba = [210 210 210 250]
endscript
debug_menu_mode = 1

script switch_to_retail_menu 
	destroy_all_debug_menus
	change debug_menu_mode = (0)
	start_flow_manager
endscript

script switch_to_debug_menu 
	shut_down_flow_manager
	change debug_menu_mode = (1)
	destroy_all_debug_menus
	create_debugging_menu
endscript

script back_to_retail_menu 
	generic_event_back
endscript

script toggle_global 
	printstruct <...>
	if GotParam \{global_toggle}
		if ($<global_toggle> = 1)
			change globalname = <global_toggle> newvalue = 0
		else
			change globalname = <global_toggle> newvalue = 1
		endif
	endif
endscript

script debug_checkcasassets 
	verify_cas_budgets \{textures
		profiles}
endscript

script debug_dumpheaps 
	FinalBuildMemReport
endscript
toggled_fps_on = 0
framerate_warning = 57.5

script ToggleFPS 
	if ($toggled_fps_on = 1)
		change \{toggled_fps_on = 0}
		KillSpawnedScript \{name = RefreshFPSDisplay}
		Wait \{0.2
			seconds}
		if ObjectExists \{id = fps_anchor}
			DestroyScreenElement \{id = fps_anchor}
		endif
	else
		change \{toggled_fps_on = 1}
		SetScreenElementLock \{id = root_window
			off}
		if ObjectExists \{id = fps_anchor}
			DestroyScreenElement \{id = fps_anchor}
		endif
		CreateScreenElement \{type = ContainerElement
			parent = root_window
			id = fps_anchor
			pos = (30.0, 140.0)
			just = [
				center
				center
			]
			internal_just = [
				left
				center
			]}
		CreateScreenElement \{type = TextElement
			parent = fps_anchor
			id = fps_text
			pos = (20.0, -15.0)
			text = qs("\LFPS: ")
			font = debug
			rgba = [
				120
				120
				200
				200
			]
			just = [
				left
				center
			]
			scale = 0.75
			z_priority = 100}
		CreateScreenElement \{type = SpriteElement
			parent = fps_anchor
			pos = (16.0, -34.0)
			texture = white2
			rgba = [
				10
				10
				10
				180
			]
			just = [
				left
				top
			]
			scale = (2.55, 0.6)
			z_priority = 99}
		SetScreenElementLock \{id = root_window
			on}
		SpawnScriptLater \{RefreshFPSDisplay}
	endif
endscript
fps_display_hold_red = 0

script RefreshFPSDisplay \{interval = 0.1}
	begin
	if ObjectExists \{id = fps_anchor}
		FormatText TextName = fps qs("\LFPS: %d") d = ($framerate_value)
		SetScreenElementProps id = fps_text text = <fps>
		if (($framerate_value) < $framerate_warning)
			change \{fps_display_hold_red = 60}
			SetScreenElementProps \{id = fps_text
				rgba = [
					160
					20
					20
					255
				]}
		elseif ($fps_display_hold_red > 0)
			SetScreenElementProps \{id = fps_text
				rgba = [
					160
					20
					20
					255
				]}
			change fps_display_hold_red = ($fps_display_hold_red - 1)
		else
			SetScreenElementProps \{id = fps_text
				rgba = [
					100
					100
					100
					255
				]}
		endif
	else
		KillSpawnedScript \{id = RefreshFPSDisplay}
		change \{toggled_fps_on = 0}
	endif
	Wait \{1
		frame}
	repeat
endscript
