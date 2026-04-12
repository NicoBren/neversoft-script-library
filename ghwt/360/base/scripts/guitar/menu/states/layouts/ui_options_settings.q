
script ui_create_options_settings 
	GetGlobalTags \{user_options}
	make_menu_frontend \{screen = Guitarist
		title = qs("SETTINGS")
		pad_back_script = ui_options_check_settings}
	add_menu_frontend_item \{text = qs("AUDIO")
		choose_state = uistate_options_audio}
	lefty_texture = data_settings_xmark
	GetPlayerInfo \{player = 1
		lefty_flip}
	if (<lefty_flip> = 1)
		lefty_texture = data_settings_checkmark
	endif
	if isXenon
		add_menu_frontend_item {
			text = qs("LEFTY FLIP")
			pos = (20.0, 0.0)
			pad_choose_script = ui_options_controller_choose_lefty_flip
			pad_choose_params = {popup = <popup> player_device = $primary_controller}
		}
	else
		add_menu_frontend_item \{text = qs("LEFTY FLIP")
			pos = (20.0, 0.0)
			choose_state = UIstate_options_settings_lefty_warning
			choose_state_data = {
				is_popup
			}}
		current_menu :SetTags lefty_id = <item_id>
	endif
	CreateScreenElement {
		type = SpriteElement
		parent = <item_container_id>
		local_id = check
		pos = (0.0, 20.0)
		just = [center center]
		texture = <lefty_texture>
	}
	if ($vocal_enable_static_view = 1)
		vocals_get_highway_view \{player = 1}
		if (<highway_view> = static)
			scroll_texture = data_settings_xmark
		else
			scroll_texture = data_settings_checkmark
		endif
		add_menu_frontend_item \{text = qs("SCROLLING VOCALS")
			pos = (20.0, 0.0)
			pad_choose_script = options_change_vocals_highway_view
			pad_choose_params = {
				no_restart
				player = 1
			}}
		CreateScreenElement {
			type = SpriteElement
			parent = <item_container_id>
			local_id = check
			pos = (0.0, 20.0)
			just = [center center]
			texture = <scroll_texture>
		}
	endif
	GetPlayerInfo \{player = 1
		vocals_sp_clap}
	if (<vocals_sp_clap> = 0)
		scroll_texture = data_settings_xmark
	else
		scroll_texture = data_settings_checkmark
	endif
	add_menu_frontend_item \{text = qs("VOCALS STAR\nPOWER CLAP")
		pos = (20.0, 0.0)
		pad_choose_script = options_change_vocals_sp_clap
		pad_choose_params = {
			player = 1
		}}
	CreateScreenElement {
		type = SpriteElement
		parent = <item_container_id>
		local_id = check
		pos = (0.0, 20.0)
		just = [center center]
		texture = <scroll_texture>
	}
	count_texture = data_settings_xmark
	if (<unpause_count> = 1)
		count_texture = data_settings_checkmark
	endif
	add_menu_frontend_item \{text = qs("COUNTDOWN")
		pos = (20.0, 0.0)
		pad_choose_script = ui_options_settings_choose_count
		pad_choose_params = {
			player = 1
		}}
	CreateScreenElement {
		type = SpriteElement
		parent = <item_container_id>
		local_id = check
		pos = (0.0, 20.0)
		just = [center center]
		texture = <count_texture>
	}
	ui_options_set_settings
	menu_finish
endscript

script ui_destroy_options_settings 
	generic_ui_destroy
endscript

script ui_return_options_settings 
	clean_up_user_control_helpers
	add_gamertag_helper \{exclusive_device = $primary_controller}
	menu_finish
endscript

script ui_options_settings_choose_count 
	Obj_GetID
	GetGlobalTags \{user_options
		param = unpause_count}
	if ResolveScreenElementId id = {<ObjID> child = {0 child = check}}
		if (<unpause_count> = 1)
			<unpause_count> = 0
			SoundEvent \{event = checkbox_sfx}
			if GotParam \{popup}
				<resolved_id> :SetProps texture = Options_Controller_X
			else
				<resolved_id> :SetProps texture = data_settings_xmark
			endif
		else
			<unpause_count> = 1
			SoundEvent \{event = CheckBox_Check_SFX}
			if GotParam \{popup}
				<resolved_id> :SetProps texture = Options_Controller_Check
			else
				<resolved_id> :SetProps texture = data_settings_checkmark
			endif
		endif
		SetGlobalTags user_options params = {unpause_count = <unpause_count>}
	endif
endscript

script ui_create_options_settings_lefty_warning 
	create_popup_warning_menu \{title = qs("WARNING")
		textblock = {
			text = qs("Changing the Lefty flip setting will become the default for all players. Players will still be able to set their Lefty flip setting individually in band mode and the music studio.")
		}
		options = [
			{
				func = ui_options_settings_lefty_warning
				text = qs("CONTINUE")
			}
		]
		no_background}
endscript

script ui_destroy_options_settings_lefty_warning 
	destroy_popup_warning_menu
endscript

script ui_options_settings_lefty_warning 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	current_menu :GetSingleTag \{lefty_id}
	<lefty_id> :obj_spawnscript ui_options_controller_choose_lefty_flip params = {player_device = $primary_controller}
	generic_event_back
endscript
