practice_enabled = 0

script ui_init_select_practice_mode 
	change \{practice_enabled = 1}
	change \{came_to_practice_from = main_menu}
	change \{game_mode = training}
	change \{respond_to_signin_changed = 1}
	change \{respond_to_signin_changed_func = none}
	spawnscriptnow \{do_training_loading}
endscript
g_training_loading_done = 0

script do_training_loading 
	change \{g_training_loading_done = 0}
	create_loading_screen
	change \{current_progression_flag = none}
	destroy_band
	StopSoundsByBuss \{Encore_Events}
	apply_band_logo_to_venue \{step = build}
	if GotParam \{part}
		tutorial_setup_band players = 4 part = <part>
	else
		tutorial_setup_band \{players = 4}
	endif
	change \{current_level = load_z_studio}
	Load_Venue \{block_scripts = 0}
	create_band \{async = 1}
	BandManager_AllChangeStance \{stance = Stance_A
		no_wait}
	apply_band_logo_to_venue \{step = apply}
	create_bandname_viewport
	Wait \{2
		gameframes}
	destroy_bg_viewport
	setup_bg_viewport
	change \{current_num_players = 1}
	GameMode_UpdateNumPlayers \{num_players = 1}
	change \{g_training_loading_done = 1}
	hide_band
endscript

script ui_create_select_practice_mode 
	spawnscriptnow \{new_create_select_practice_mode}
endscript

script new_create_select_practice_mode 
	Menu_Music_Off
	BG_Crowd_Front_End_Silence
	begin
	if ($g_training_loading_done = 1)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	disable_pause
	UnPauseGame
	make_generic_menu \{title = qs("TRAINING")
		pad_back_script = menu_select_practice_back}
	add_generic_menu_text_item \{text = qs("PRACTICE")
		pad_choose_script = ui_select_practice_mode_choose
		pad_choose_params = {
			practice
		}}
	add_generic_menu_text_item \{text = qs("TUTORIALS")
		pad_choose_script = ui_select_practice_mode_choose}
	menu_finish
	destroy_loading_screen
	startrendering
	LaunchEvent type = focus target = current_menu data = {child_index = <selected_index>}
endscript

script menu_select_practice_back 
	LaunchEvent \{type = unfocus
		target = current_menu}
	create_loading_screen
	generic_ui_destroy
	destroy_band
	destroy_bandname_viewport
	frontend_load_soundcheck
	generic_event_back
	destroy_loading_screen
endscript

script ui_destroy_select_practice_mode 
	generic_ui_destroy
	destroy_generic_menu
endscript

script ui_deinit_select_practice_mode 
	destroy_band
	destroy_bandname_viewport
	tutorial_disable_botplay
	change \{practice_enabled = 0}
endscript

script ui_select_practice_mode_choose 
	printf \{qs("\Lui_select_practice_mode_choose")}
	if GotParam \{practice}
		change \{training_mode = practice}
		change \{game_mode = training}
	else
		change \{training_mode = tutorials}
	endif
	if ($training_mode = tutorials)
		generic_event_choose \{state = uistate_select_tutorial}
	else
		change \{current_num_players = 1}
		GameMode_UpdateNumPlayers \{num_players = 1}
		generic_event_choose \{state = uistate_setlist
			data = {
				no_jamsession
			}}
	endif
endscript

script check_tutorial_allowances \{allow_RB_drums = 1}
	if ($allow_controller_for_all_instruments = 1)
		return \{allowances = all}
	endif
	if IsGuitarController \{controller = $primary_controller}
		<allowances> = guitar
	elseif isRBDrum \{controller = $primary_controller}
		if (<allow_RB_drums> = 1)
			<allowances> = drum
		else
			<allowances> = not_specific
		endif
	elseif IsDrumController \{controller = $primary_controller}
		<allowances> = drum
	else
		ui_get_controller_parts_allowed \{controller = $primary_controller}
		if StructureContains Structure = <allowed> Vocals
			<allowances> = Vocals
		else
			<allowances> = not_specific
		endif
	endif
	return allowances = <allowances>
endscript
