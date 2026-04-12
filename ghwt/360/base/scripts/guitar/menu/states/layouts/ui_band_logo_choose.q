
script ui_create_band_logo_choose 
	change \{rich_presence_context = presence_band_logo_edit_and_instrument_edit}
	pad_back_script = nullscript
	menu_create_script = make_generic_menu
	item_add_script = add_generic_menu_text_item
	if ui_event_exists_in_stack \{name = 'mainmenu'}
		pad_back_script = generic_event_back
	endif
	cam_name = 'options_manage_band_logo'
	<menu_create_script> {
		title = qs("CHOOSE BAND LOGO")
		item_scale = 1.3
		pad_back_script = <pad_back_script>
	}
	<item_add_script> {
		text = qs("Continue")
		pad_choose_script = band_logo_choose_continue
		pad_choose_params = {event_params = <event_params>}
	}
	get_savegame_from_controller controller = ($primary_controller)
	<item_add_script> {
		text = qs("Edit")
		choose_state = UIstate_cap_main
		choose_state_data = {savegame = <savegame> text = qs("Edit Band Logo") part = CAS_Band_Logo cam_name = <cam_name> num_icons = 0}
	}
	<item_add_script> {
		text = qs("Randomize")
		pad_choose_script = randomize_band_logo
	}
	if NOT GotParam \{pad_back_script}
		menu_finish
	else
		add_user_control_helper \{text = qs("SELECT")
			button = green
			z = 100000}
	endif
endscript

script ui_destroy_band_logo_choose 
	generic_ui_destroy
	destroy_generic_menu
endscript

script ui_init_band_logo_choose controller = ($primary_controller)
	init_band_logo controller = <controller>
	fadetoblack \{off
		alpha = 1.0
		time = 0.1
		z_priority = 100
		no_wait}
	spawnscriptnow \{task_menu_default_anim_in
		params = {
			base_name = 'options_manage_band_logo'
		}}
	BandLogoObject :Obj_SetPosition \{position = (-33.45, -1.42, 21.9)}
	BandLogoObject :Obj_SetOrientation \{dir = (0.0, 0.0, -1.0)}
	BandLogoObject :SwitchOnAtomic \{CAS_Band_Logo}
	BandLogoObject :Obj_ApplyScaling \{scale = 1.0}
	SpawnScript \{randomize_band_logo}
endscript

script ui_deinit_band_logo_choose 
	change \{cas_override_object = none}
	BandLogoObject :SwitchOffAtomic \{CAS_Band_Logo}
	cas_free_resources \{no_bink
		no_loading_screen
		band_logo}
endscript

script randomize_band_logo 
	if GotParam \{Name_logo}
		SoundEvent \{event = Enter_Band_Name_Caps}
	endif
	change \{save_data_dirty = 1}
	cas_random_band_logo
	SetCASAppearanceCAP part = CAS_Band_Logo cap = <cap>
	cas_queue_block
	UpdateCASModelCAP \{part = CAS_Band_Logo}
	change \{Achievements_modified_logo = 0}
endscript

script band_logo_choose_continue 
	GetCASAppearancePart \{part = CAS_Band_Logo}
	if GotParam \{cap}
		get_savegame_from_controller controller = <device_num>
		get_current_band_info
		SetGlobalTags savegame = <savegame> <band_info> params = {band_logo = <cap>}
	endif
	ui_memcard_autosave_replace event = menu_replace state = uistate_boot_download_scan data = {controller = <device_num>}
endscript

script current_band_has_band_logo controller = ($primary_controller)
	get_savegame_from_controller controller = <controller>
	get_current_band_info
	GetGlobalTags savegame = <savegame> <band_info>
	if GotParam \{band_logo}
		return \{true}
	else
		return \{false}
	endif
endscript

script current_band_has_band_name controller = ($primary_controller)
	get_savegame_from_controller controller = <controller>
	get_current_band_info
	GetGlobalTags savegame = <savegame> <band_info>
	if GotParam \{name}
		if (<name> = qs("\L"))
			return \{false}
		else
			return \{true}
		endif
	else
		return \{false}
	endif
endscript
