
script ui_create_group_play 
	change \{band_mode_menu_tags = none}
	spawnscriptnow ui_create_group_play_spawned params = <...>
endscript

script ui_create_group_play_spawned 
	change \{rich_presence_context = presence_menus}
	cas_reset_random_human_picking
	frontend_load_soundcheck \{loadingscreen}
	cas_destroy_all_characters
	make_menu_frontend \{title = qs("BAND")
		use_all_controllers}
	if has_enough_controllers_for_band
		add_menu_frontend_item \{text = qs("BAND PLAY")
			pad_choose_script = ui_group_play_select_local}
		<window_id> :obj_spawnscript ui_group_play_poll_for_band_mode params = {local_mode_allowed = 1}
	else
		add_menu_frontend_item \{text = qs("BAND PLAY")
			pad_choose_script = ui_group_play_select_local
			rgba = [
				50
				44
				35
				255
			]}
		<window_id> :obj_spawnscript ui_group_play_poll_for_band_mode params = {local_mode_allowed = 0}
	endif
	<window_id> :SetTags local_mode_id = <item_id>
	if IsWinPort
		winport_choose_script = winport_ui_online_band_public_or_private
	endif
	if ((IsPs3) || (IsWinPort))
		if has_only_regular_controller_no_mic
			add_menu_frontend_item {
				text = qs("JOIN ONLINE BAND")
				pad_choose_script = <winport_choose_script>
				pad_choose_params = {
					action = join
				}
				rgba = [50 44 35 255]
			}
		else
			add_menu_frontend_item {
				text = qs("JOIN ONLINE BAND")
				pad_choose_script = <winport_choose_script>
				pad_choose_params = {
					action = join
				}
			}
		endif
	else
		if isXenon
			if has_only_regular_controller_no_mic
				add_menu_frontend_item \{text = qs("JOIN Xbox LIVE BAND")
					pad_choose_script = ui_group_play_select_online_career
					pad_choose_params = {
						action = join
					}
					rgba = [
						50
						44
						35
						255
					]}
			else
				add_menu_frontend_item \{text = qs("JOIN Xbox LIVE BAND")
					pad_choose_script = ui_group_play_select_online_career
					pad_choose_params = {
						action = join
					}}
			endif
		endif
	endif
	<window_id> :SetTags join_id = <item_id>
	if ((IsPs3) || (IsWinPort))
		if has_only_regular_controller_no_mic
			add_menu_frontend_item {
				text = qs("HOST ONLINE BAND")
				pad_choose_script = <winport_choose_script>
				pad_choose_params = {
					action = HOST
				}
				rgba = [50 44 35 255]
			}
		else
			add_menu_frontend_item {
				text = qs("HOST ONLINE BAND")
				pad_choose_script = <winport_choose_script>
				pad_choose_params = {
					action = HOST
				}
			}
		endif
	else
		if isXenon
			if has_only_regular_controller_no_mic
				add_menu_frontend_item \{text = qs("HOST Xbox LIVE BAND")
					pad_choose_script = ui_group_play_select_online_career
					pad_choose_params = {
						action = HOST
					}
					rgba = [
						50
						44
						35
						255
					]}
			else
				add_menu_frontend_item \{text = qs("HOST Xbox LIVE BAND")
					pad_choose_script = ui_group_play_select_online_career
					pad_choose_params = {
						action = HOST
					}}
			endif
		endif
	endif
	ui_return_game_mode
	LaunchEvent type = focus target = current_menu data = {child_index = <selected_index>}
endscript

script ui_destroy_group_play 
	generic_ui_destroy
endscript

script ui_return_group_play 
	ui_return_game_mode
endscript

script ui_group_play_select_local 
	if IsWinPort
		if are_multiple_controllers_connected
			ui_event \{event = menu_change
				data = {
					state = UIstate_band_mode
				}}
		else
			ui_event event = menu_change data = {is_popup state = UIstate_generic_alert_popup title = qs("Warning") text = qs("You must have at least two controllers plugged in to continue.") player_device = <device_num>}
		endif
	else
		if is_regular_controller_not_enough_mics controller = <device_num>
			if isXenon
				ui_event event = menu_change data = {is_popup state = UIstate_generic_alert_popup title = qs("Warning") text = qs("You must connect a microphone or Xbox 360 Headset to continue.") player_device = <device_num>}
			else
				ui_event event = menu_change data = {is_popup state = UIstate_generic_alert_popup title = qs("Warning") text = qs("You must plug in a microphone with your controller to continue.") player_device = <device_num>}
			endif
		elseif are_multiple_controllers_connected
			ui_event \{event = menu_change
				data = {
					state = UIstate_band_mode
				}}
		else
			ui_event event = menu_change data = {is_popup state = UIstate_generic_alert_popup title = qs("Warning") text = qs("You must have at least two controllers plugged in to continue.") player_device = <device_num>}
		endif
	endif
endscript

script ui_group_play_select_online_career 
	hide_glitch \{num_frames = 20}
	if IsWinPort
		printf qs(0x711ebb89) a = <action> b = <winport_private>
		change \{gPrivateMatchId = 0}
		if (<action> = join)
			if (<winport_private> = 0)
				SetNetworkPreference \{field = 'private_slots'
					num = 0
					string = qs(0xaec7c1fb)}
			else
				SetNetworkPreference \{field = 'private_slots'
					num = 0
					string = qs(0xaec7c1fb)}
				NetSessionFunc func = SetPrivateMatchId params = {privateMatchName = <winport_friend_name>}
				change gPrivateMatchId = <privateMatchId>
			endif
		else
			if (<winport_private> = 0)
				SetNetworkPreference \{field = 'private_slots'
					num = 0
					string = qs(0xaec7c1fb)}
			else
				SetNetworkPreference \{field = 'private_slots'
					num = 1
					string = qs(0xaec7c1fb)}
			endif
		endif
		check_net_privaleges action = <action> device_num = <device_num>
	else
		if NOT is_regular_controller_not_enough_mics controller = <device_num>
			check_net_privaleges action = <action> device_num = <device_num>
		else
			if isXenon
				ui_event event = menu_change data = {is_popup state = UIstate_generic_alert_popup title = qs("Warning") text = qs("You must connect a microphone or Xbox 360 Headset to continue.") player_device = <device_num>}
			else
				ui_event event = menu_change data = {is_popup state = UIstate_generic_alert_popup title = qs("Warning") text = qs("You must plug in a microphone with your controller to continue.") player_device = <device_num>}
			endif
		endif
	endif
endscript

script ui_group_play_select_host 
	ui_group_play_select_join action = <action>
endscript

script check_net_privaleges 
	printf \{qs("\Lcheck_net_privaleges")}
	RequireParams \{[
			device_num
			action
		]
		all}
	if isXenon
		change \{game_mode = p4_career}
		NetOptions :Pref_Choose \{name = game_modes
			checksum = p4_career}
	endif
	if IsWinPort
		if NOT (NetSessionFunc func = IsLoggedIn)
			printf \{qs(0x4ad0132e)}
			change \{online_career_band_signin = 1}
			ui_event event = menu_replace data = {state = uistate_signin device_num = <device_num> online_menu}
			return
		endif
		ui_event event = menu_change data = {state = uistate_signin
			device_num = <device_num>
			allow_back = 1
			new_state = uistate_net_setup
			new_data = {action = <action> controller = <device_num> going_to_career}
			require_live = 1}
	else
		ui_event event = menu_change data = {state = uistate_signin
			device_num = <device_num>
			allow_back = 1
			new_state = uistate_net_setup
			new_data = {action = <action> controller = <device_num> going_to_career}
			require_live = 1}
	endif
endscript

script are_multiple_controllers_connected 
	if ($allow_controller_for_all_instruments = 1)
		return \{true}
	endif
	GetActiveControllers
	GetArraySize <active_controllers>
	total_active = 0
	controller_index = 0
	begin
	if (<active_controllers> [<controller_index>] = 1)
		<total_active> = (<total_active> + 1)
	endif
	<controller_index> = (<controller_index> + 1)
	repeat <array_size>
	if (<total_active> > 1)
		return \{true}
	endif
	return \{false}
endscript

script ui_group_play_poll_for_band_mode 
	begin
	if NOT has_enough_controllers_for_band
		if (<local_mode_allowed> = 1)
			ui_event \{event = menu_replace
				data = {
					state = uistate_group_play
				}}
			Block
		endif
	else
		if (<local_mode_allowed> = 0)
			ui_event \{event = menu_replace
				data = {
					state = uistate_group_play
				}}
			Block
		endif
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script has_only_regular_controller_no_mic 
	if ($allow_controller_for_all_instruments = 1)
		return \{false}
	endif
	get_num_mics_plugged_in
	if (<num_mics_plugged_in> > 0)
		return \{false}
	endif
	GetActiveControllers
	GetArraySize <active_controllers>
	total_active = 0
	controller_index = 0
	begin
	if (<active_controllers> [<controller_index>] = 1)
		<total_active> = (<total_active> + 1)
		if NOT is_regular_controller controller = <controller_index>
			return \{false}
		elseif controller_has_headset controller = <controller_index>
			return \{false}
		endif
	endif
	<controller_index> = (<controller_index> + 1)
	repeat <array_size>
	return \{true}
endscript

script is_regular_controller_not_enough_mics 
	RequireParams \{[
			controller
		]
		all}
	if is_regular_controller controller = <controller>
		if ($allow_controller_for_all_instruments = 1)
			return \{false}
		endif
		get_num_mics_plugged_in
		if (<num_mics_plugged_in> > 0)
			return \{false}
		endif
		if controller_has_headset controller = <controller>
			return \{false}
		endif
		return \{true}
	endif
	return \{false}
endscript

script has_enough_controllers_for_band 
	if are_multiple_controllers_connected
		if NOT has_only_regular_controller_no_mic
			return \{true}
		endif
	endif
	return \{false}
endscript

script winport_ui_online_band_public_or_private 
	printf \{qs(0x14cee058)}
	RequireParams \{[
			device_num
			action
		]
		all}
	spawnscriptnow ui_create_winport_online_band_public_or_private params = {<...>}
endscript

script ui_create_winport_online_band_public_or_private 
	printf \{qs(0xf89fb39c)}
	change \{winport_force_career_band_vocals = 0}
	public_choose_script = ui_group_play_select_online_career
	private_choose_script = ui_group_play_select_online_career
	if (<action> = join)
		menu_title = qs("JOIN ONLINE BAND")
		private_choose_script = winport_ui_online_band_choose_friend
	else
		menu_title = qs("HOST ONLINE BAND")
	endif
	make_menu_frontend {
		pad_back_script = ui_game_mode_back
		title = <menu_title>
		use_all_controllers
	}
	add_menu_frontend_item {
		text = qs(0x5bf31553)
		pad_choose_script = <public_choose_script>
		pad_choose_params = {
			<...>
			winport_private = 0
		}
	}
	add_menu_frontend_item {
		text = qs(0x063894c5)
		pad_choose_script = <private_choose_script>
		pad_choose_params = {
			<...>
			winport_private = 1
		}
	}
	LaunchEvent type = focus target = current_menu data = {child_index = <selected_index>}
endscript

script ui_destroy_winport_online_band_public_or_private 
	printf \{qs(0x7ca23ef2)}
	generic_ui_destroy
endscript
winport_temp_device_num = 0
winport_temp_online_band_action = join
winport_temp_online_band_winport_private = 0

script winport_ui_online_band_choose_friend 
	printf qs(0xb3bb45da) a = <action> b = <winport_private>
	change winport_temp_device_num = <device_num>
	change winport_temp_online_band_action = <action>
	change winport_temp_online_band_winport_private = <winport_private>
	NetSessionFunc \{func = friends_init}
	NetSessionFunc obj = friends func = begin_retrieve_friends_list params = {
		callback = winport_ui_online_band_friendcallback
		device_num = <device_num>
		callback_params = {none}
	}
	make_generic_menu \{title = qs(0x9506c199)
		pad_back_script = ui_winport_select_friend_back
		pad_option2_script = ui_winport_select_friend_add
		pad_option_script = ui_winport_select_friend_remove
		menu_id = winport_select_friend_menu
		vmenu_id = winport_select_friend_vmenu
		dims = (600.0, 400.0)
		use_all_controllers}
	clean_up_user_control_helpers
	add_user_control_helper \{text = qs("SELECT")
		button = green
		z = 100}
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100}
	add_user_control_helper \{text = qs(0xc29d3992)
		button = Yellow
		z = 100}
	add_user_control_helper \{text = qs(0x73fa75be)
		button = Blue
		z = 100}
	LaunchEvent \{type = focus
		target = winport_select_friend_vmenu}
endscript

script winport_ui_online_band_friendcallback 
	printf \{qs(0x76b4ee34)}
	if ScreenElementExists \{id = current_menu}
		if GotParam \{friendList}
			current_menu :SetTags friendList = <friendList>
			GetArraySize <friendList>
			if (<array_size> > 0)
				i = 0
				begin
				add_generic_menu_text_item {
					text = (<friendList> [<i>].name)
					pad_choose_script = ui_winport_select_friend_choose_item
					pad_choose_params = {name = (<friendList> [<i>].name) index = <i>}
				}
				<i> = (<i> + 1)
				repeat <array_size>
			else
				add_generic_menu_text_item \{text = qs("Empty")}
			endif
		endif
	endif
endscript

script ui_winport_select_friend_choose_item 
	printf \{qs(0x3b8f7574)}
	printf qs(0xaac75fdc) i = <index> n = <name>
	spawnscriptnow ui_group_play_select_online_career params = {
		device_num = $winport_temp_device_num
		action = $winport_temp_online_band_action
		winport_private = $winport_temp_online_band_winport_private
		winport_friend_name = <name>
	}
endscript

script ui_winport_select_friend_back 
	printf \{qs(0x255e2796)}
	generic_event_back
endscript

script ui_winport_select_friend_add 
	printf \{qs(0x65b3499e)}
	ui_create_winport_add_friend \{winport_from = join_private_band}
endscript

script ui_winport_select_friend_remove 
	printf \{qs(0x17233780)}
	if ScreenElementExists \{id = current_menu}
		current_menu :GetTags
		GetArraySize <friendList>
		Menu_GetSelectedIndex
		if ((<array_size> > 0) && (<selected_index> < <array_size>))
			NetSessionFunc func = RemoveFriend params = {name = (<friendList> [<selected_index>].name)}
			ui_event_wait \{event = menu_replace
				data = {
					state = UIstate_mainmenu
					base_name = 'mainmenu'
					selected_index = 0
					clear_previous_stack
				}}
		endif
	endif
endscript
