online_menu_signin = 0
online_career_band_signin = 0
bootup_signin = 1
from_account_management_screen = 0

script ui_create_winlogin 
	printf \{'---- ui_create_boot_winlogin'}
	spawnscriptnow \{create_winport_connection_status_screen}
endscript

script ui_destroy_winlogin 
endscript

script ui_create_network_prompt_menu 
	printstruct <...>
	if GotParam \{boot}
		printf \{'Got boot!'}
		prompt_options = [
			{
				func = startup_go_online
				text = qs(0x5f9d3025)
			}
			{
				func = startup_stay_offline_boot
				text = qs(0xe15047d5)
			}
		]
	else
		printf \{'No boot!'}
		prompt_options = [
			{
				func = startup_go_online
				text = qs(0x5f9d3025)
			}
			{
				func = startup_stay_offline
				text = qs(0xe15047d5)
			}
		]
	endif
	create_popup_warning_menu {
		textblock = {
			text = qs(0x80eed3be)
			dims = (800.0, 400.0)
			scale = 0.5
		}
		TextElement = {
			text = qs(0xec98ed19)
			pos = (640.0, 465.0)
			scale = 0.6
		}
		menu_pos = (640.0, 480.0)
		dialog_dims = (600.0, 80.0)
		options = <prompt_options>
	}
endscript

script test_spawn 
	printf \{'test spawn...'}
	Wait \{120
		frame}
	winport_signin_complete params = <...>
endscript

script ui_destroy_network_prompt_menu 
	printf \{'--- ui_destroy_network_prompt_menu'}
	destroy_popup_warning_menu
endscript

script startup_go_online 
	ui_event_wait \{event = menu_replace
		state = UIstate_winport_connection_status_screen}
endscript

script startup_stay_offline_boot 
	printf \{'--- startup_stay_offline_boot'}
	winport_signin_complete params = <...>
endscript

script startup_stay_offline 
	printf \{'--- startup_stay_offline'}
	change \{online_menu_signin = 0}
	change \{online_career_band_signin = 0}
	go_to_main_menu
endscript

script go_to_main_menu 
	ui_event_block \{event = menu_replace
		data = {
			state = UIstate_mainmenu
			base_name = 'mainmenu'
			selected_index = 3
			clear_previous_stack
		}}
endscript

script go_to_options_menu 
	ui_event_block \{event = menu_replace
		data = {
			state = uistate_options
		}}
endscript

script go_to_online_career_band_menu 
	printf \{qs(0xc2b9aa40)}
	ui_event_block \{event = menu_replace
		data = {
			state = UIstate_mainmenu
			base_name = 'mainmenu'
			selected_index = 3
			clear_previous_stack
		}}
endscript

script ui_create_winport_connection_status_screen 
	printf \{'--- ui_create_winport_connection_status_screen'}
	create_menu_backdrop \{texture = xb_online_bg}
	z = 110
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = connectionStatusContainer
		pos = (0.0, 0.0)}
	CreateScreenElement \{type = VScrollingMenu
		parent = connectionStatusContainer
		just = [
			center
			top
		]
		dims = (500.0, 150.0)
		pos = (640.0, 465.0)
		z_priority = 1}
	menu_id = <id>
	CreateScreenElement {
		type = VMenu
		parent = <menu_id>
		pos = (298.0, 0.0)
		just = [center top]
		internal_just = [center top]
		dims = (500.0, 150.0)
		event_handlers = [
			{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
			{pad_back cancel_winport_connection_status_screen}
		]
	}
	vmenu_id = <id>
	change \{user_control_pill_text_color = [
			0
			0
			0
			255
		]}
	change \{user_control_pill_color = [
			180
			180
			180
			255
		]}
	CreateScreenElement \{type = SpriteElement
		parent = connectionStatusContainer
		texture = online_dialog_bg
		dims = (640.0, 500.0)
		pos = (640.0, 80.0)
		just = [
			center
			top
		]
		z_priority = 9
		alpha = 1.0}
	CreateScreenElement \{type = TextElement
		parent = connectionStatusContainer
		font = fontgrid_text_a6
		scale = 0.8
		rgba = [
			223
			223
			223
			250
		]
		text = qs("Online")
		just = [
			center
			top
		]
		z_priority = 10.0
		pos = (640.0, 132.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]}
	CreateScreenElement {
		type = TextBlockElement
		parent = connectionStatusContainer
		id = statusMessage
		font = fontgrid_text_a3
		scale = 0.8
		rgba = [210 210 210 250]
		just = [center top]
		internal_just = [center top]
		internal_scale = <scale>
		z_priority = <z>
		pos = (640.0, 310.0)
		dims = (800.0, 320.0)
		line_spacing = 1.0
	}
	CreateScreenElement \{type = SpriteElement
		parent = connectionStatusContainer
		texture = online_load_wheel_BG
		pos = (930.0, 500.0)
		dims = (140.0, 140.0)
		just = [
			center
			center
		]
		z_priority = 520}
	CreateScreenElement \{type = SpriteElement
		parent = connectionStatusContainer
		texture = online_load_wheel
		pos = (930.0, 500.0)
		dims = (140.0, 140.0)
		just = [
			center
			center
		]
		z_priority = 521}
	SpawnScriptLater winport_animate_online_icon params = {id = <id>}
	SpawnScriptLater create_winport_connection_status_screen_event_loop params = <...>
endscript

script create_winport_connection_status_screen_event_loop 
	if NOT (NetSessionFunc func = IsConnected)
		add_user_control_helper \{text = qs("CANCEL")
			button = red
			z = 100}
		LaunchEvent type = focus target = <vmenu_id>
		NetSessionFunc \{func = onlinesignin}
		begin
		NetSessionFunc \{func = GetNetworkStatus}
		switch (<CurrentNetworkTask>)
			case 'START_NETWORK'
			switch (<CurrentNetworkStatus>)
				case 'PENDING'
				statusText = qs(0xbaa8e5d2)
				case 'DONE'
				statusText = qs(0xa657fa11)
				case 'FAILED'
				statusText = qs(0x5bd88430)
				success = false
				default
				statusText = qs(0xc8d1230a)
				success = false
			endswitch
			case 'CHECK_DNS'
			switch (<CurrentNetworkStatus>)
				case 'PENDING'
				statusText = qs(0x17a86116)
				case 'DONE'
				statusText = qs(0x88acd6d0)
				success = true
				case 'FAILED'
				statusText = qs(0x8692c11a)
				success = false
				default
				statusText = qs(0xc8d1230a)
				success = false
			endswitch
			default
			statusText = qs(0x0f7197e3)
			non_success = true
		endswitch
		SetScreenElementProps id = statusMessage text = <statusText>
		fit_text_into_menu_item \{id = statusMessage
			max_width = 480}
		if GotParam \{success}
			KillSpawnedScript \{name = winport_animate_online_icon}
			clean_up_user_control_helpers
			if (<success> = false)
				add_user_control_helper \{text = qs("BACK")
					button = red
					z = 100}
				return
			endif
			break
		elseif GotParam \{non_success}
			KillSpawnedScript \{name = winport_animate_online_icon}
			cancel_winport_connection_status_screen
			return
		endif
		Wait \{1
			frame}
		if NOT (ScreenElementExists id = connectionStatusContainer)
			return
		endif
		repeat
	endif
	if NOT (NetSessionFunc func = HasExistingLogin)
		KillSpawnedScript \{name = winport_animate_online_icon}
		DestroyScreenElement \{id = connectionStatusContainer}
		clean_up_user_control_helpers
		create_popup_warning_menu \{textblock = {
				text = qs(0x4910e9ae)
				dims = (700.0, 320.0)
				scale = 0.6
			}
			no_background
			menu_pos = (640.0, 465.0)
			dialog_dims = (600.0, 80.0)
			helper_pills = [
				back
				select
				updown
			]
			options = [
				{
					func = start_winport_account_create_screen
					text = qs(0xcd430d4f)
					scale = 0.9
				}
				{
					func = start_winport_account_login_screen
					text = qs(0x6d0df88d)
					scale = 0.9
				}
				{
					func = cancel_winport_connection_status_screen
					text = qs("CANCEL")
					scale = 0.9
				}
			]}
		return
	endif
	if NOT (NetSessionFunc func = IsLoggedIn)
		printf \{'Not logged in...'}
		ui_event_wait \{event = menu_replace
			data = {
				state = UIstate_winport_account_login_screen
			}}
		return
	endif
	add_user_control_helper \{text = qs("Continue")
		button = green
		z = 100}
	new_event_handlers = [
		{pad_choose winport_signin_complete params = <...>}
	]
	SetScreenElementProps \{id = connectionStatusContainer
		event_handlers = new_event_handlers}
endscript

script winport_animate_online_icon 
	rot_angle = -360
	begin
	<id> :SE_SetProps rot_angle = <rot_angle> time = 2.0
	<id> :SE_WaitProps
	<rot_angle> = (<rot_angle> - 360)
	repeat
endscript

script ui_destroy_winport_connection_status_screen 
	printf \{'--- ui_destroy_winport_connection_status_screen'}
	KillSpawnedScript \{name = winport_animate_online_icon}
	KillSpawnedScript \{name = create_winport_connection_status_screen_event_loop}
	destroy_popup_warning_menu
	if ScreenElementExists \{id = connectionStatusContainer}
		DestroyScreenElement \{id = connectionStatusContainer}
	endif
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script cancel_winport_connection_status_screen 
	printf \{'--- cancel_winport_connection_status_screen'}
	NetSessionFunc \{func = ResetNetwork}
	if (($online_menu_signin = 1) || ($online_career_band_signin = 1))
		change \{online_menu_signin = 0}
		change \{online_career_band_signin = 0}
		go_to_main_menu
	else
		if ($bootup_signin = 1)
			ui_event_wait \{event = menu_replace
				data = {
					state = uistate_signin
				}}
		else
			ui_flow_manager_respond_to_action \{action = go_back}
		endif
	endif
endscript

script ui_create_winport_account_login_screen 
	printf \{'--- ui_create_winport_account_login_screen'}
	NetSessionFunc \{func = GetAutoLoginSetting}
	create_menu_backdrop \{texture = xb_online_bg}
	if (<autoLoginSetting> = autoLoginOn && NetSessionFunc func = HasExistingLogin)
		NetSessionFunc \{func = InitializeLoginFields
			params = {
				loginMode = loginAccount
			}}
		ui_event_wait \{event = menu_replace
			data = {
				state = UIstate_winport_account_login_status_screen
			}}
	else
		ui_event_wait \{event = menu_replace
			data = {
				state = UIstate_winport_account_management_screen
				mode = loginAccount
				title = qs(0x21bd4cb8)
				container = accountLoginContainer
				yellowButtonText = qs(0x111659f8)
				yellowButtonAction = start_winport_account_change_screen
				blueButtonText = qs(0xcd430d4f)
				blueButtonAction = start_winport_account_create_screen
			}}
	endif
endscript

script ui_destroy_winport_account_login_screen 
	destroy_winport_account_management_screen \{container = accountLoginContainer}
endscript

script destroy_winport_account_management_screen 
	NetSessionFunc \{func = DestroyLoginFields}
	if (ScreenElementExists id = <container>)
		DestroyScreenElement id = <container>
	endif
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script start_winport_account_change_screen 
	printf \{qs(0xe90b5fab)}
	ui_event_wait \{event = menu_replace
		state = UIstate_winport_account_change_screen}
endscript

script start_winport_account_create_screen 
	ui_event_wait \{event = menu_replace
		state = UIstate_winport_account_create_screen}
endscript

script start_winport_account_login_screen 
	printf \{qs(0x17d501b9)}
	ui_event_wait \{event = menu_replace
		state = UIstate_winport_account_login_screen}
endscript

script ui_create_winport_account_create_status_screen 
	printf \{'--- ui_create_winport_account_create_status_screen'}
	ui_create_winport_account_management_status_screen
endscript

script ui_destroy_winport_account_create_status_screen 
	ui_destroy_winport_account_management_status_screen
endscript

script ui_create_winport_account_login_status_screen 
	printf \{'--- ui_create_winport_account_login_status_screen'}
	ui_create_winport_account_management_status_screen param = <...>
endscript

script ui_destroy_winport_account_login_status_screen 
	ui_destroy_winport_account_management_status_screen param = <...>
endscript

script ui_create_winport_account_change_screen 
	printf \{'--- ui_create_winport_account_change_screen'}
	ui_event_wait \{event = menu_replace
		data = {
			state = UIstate_winport_account_management_screen
			mode = changeAccount
			title = qs(0x95ad3a57)
			container = accountChangeContainer
			yellowButtonText = qs(0x1cb97731)
			yellowButtonAction = start_winport_account_reset_screen
		}}
endscript

script ui_destroy_winport_account_change_screen 
	destroy_winport_account_management_screen \{container = accountChangeContainer}
endscript

script ui_create_winport_account_create_screen 
	printf \{'--- ui_create_winport_account_create_screen'}
	ui_event_wait \{event = menu_replace
		data = {
			state = UIstate_winport_account_management_screen
			mode = createAccount
			title = qs(0x47f8b9ab)
			container = accountCreateContainer
		}}
endscript

script ui_destroy_winport_account_create_screen 
	destroy_winport_account_management_screen \{container = accountCreateContainer}
endscript

script ui_create_winport_account_management_screen 
	printf \{'--- create_winport_account_management_screen'}
	z = 110
	if GotParam (AccountManagementScreen)
		printf \{'Called from account managemnt screen!'}
		change \{from_account_management_screen = 1}
	endif
	create_menu_backdrop \{texture = xb_online_bg}
	if ((GotParam yellowButtonAction) && (GotParam blueButtonAction))
		Handlers = [
			{focus retail_menu_focus}
			{unfocus retail_menu_unfocus}
			{pad_choose select_execute_login params = <...>}
			{pad_option2 <yellowButtonAction>}
			{pad_option <blueButtonAction>}
			{pad_back cancel_winport_account_management_screen params = {mode = <mode>}}
		]
	elseif (GotParam yellowButtonAction)
		Handlers = [
			{focus retail_menu_focus}
			{unfocus retail_menu_unfocus}
			{pad_choose select_execute_login params = <...>}
			{pad_option2 <yellowButtonAction>}
			{pad_back cancel_winport_account_management_screen params = {mode = <mode>}}
		]
	elseif (GotParam blueButtonAction)
		Handlers = [
			{focus retail_menu_focus}
			{unfocus retail_menu_unfocus}
			{pad_choose select_execute_login params = <...>}
			{pad_option <blueButtonAction>}
			{pad_back cancel_winport_account_management_screen params = {mode = <mode>}}
		]
	elseif (<mode> = AddFriend)
		Handlers = [
			{focus retail_menu_focus}
			{unfocus retail_menu_unfocus}
			{pad_choose accept_add_friend params = <...>}
			{pad_back cancel_add_friend params = {mode = <mode>}}
		]
	else
		Handlers = [
			{focus retail_menu_focus}
			{unfocus retail_menu_unfocus}
			{pad_choose select_execute_login params = <...>}
			{pad_back cancel_winport_account_management_screen params = {mode = <mode>}}
		]
	endif
	CreateScreenElement {
		type = ContainerElement
		parent = root_window
		id = <container>
		pos = (0.0, 0.0)
		event_handlers = <Handlers>
	}
	NetSessionFunc func = InitializeLoginFields params = {loginMode = <mode>}
	CreateScreenElement {
		type = SpriteElement
		parent = <container>
		texture = online_dialog_bg
		dims = (840.0, 500.0)
		pos = (640.0, 80.0)
		just = [center top]
		z_priority = 9
		alpha = 1.0
	}
	CreateScreenElement {
		type = TextElement
		parent = <container>
		font = fontgrid_title_a1
		scale = 1.0
		rgba = [223 223 223 250]
		text = <title>
		just = [center top]
		z_priority = 10.0
		pos = (640.0, 129.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
	}
	fit_text_in_rectangle id = <id> dims = (350.0, 75.0) pos = (640.0, 129.0) only_if_larger_x = 1 only_if_larger_y = 1 just = center
	CreateScreenElement {
		type = TextElement
		parent = <container>
		id = capsLockField
		font = fontgrid_text_a3
		scale = 0.6
		rgba = [255 0 0 255]
		text = qs(0x0ed750ea)
		just = [left top]
		z_priority = 10.0
		pos = (36.0, 330.0)
		shadow
		shadow_offs = (1.0, 1.0)
		shadow_rgba = [0 0 0 255]
	}
	CreateScreenElement {
		type = TextElement
		parent = <container>
		font = fontgrid_text_a3
		scale = 0.6
		rgba = [180 180 180 255]
		text = qs(0x99f7e4a5)
		just = [center top]
		z_priority = 10.0
		pos = (640.0, 560.0)
		shadow
		shadow_offs = (1.0, 1.0)
		shadow_rgba = [0 0 0 255]
	}
	CreateScreenElement {
		type = TextElement
		parent = <container>
		font = fontgrid_text_a3
		scale = 1.0
		rgba = [180 180 180 255]
		text = qs(0xc74bcbc2)
		just = [center top]
		z_priority = 10.0
		pos = (640.0, 595.0)
		shadow
		shadow_offs = (1.0, 1.0)
		shadow_rgba = [0 0 0 255]
	}
	fit_text_in_rectangle id = <id> dims = (600.0, 25.0) pos = (640.0, 595.0) only_if_larger_x = 1 only_if_larger_y = 1 just = center keep_ar = 1
	<pos> = (348.0, 280.0)
	if (<mode> = AddFriend)
		create_winport_login_field container = <container> pos = <pos> label = qs(0x83ea16b1) labelId = usernameLabelId prefixId = usernamePrefixId cursorId = usernameCursorId suffixId = usernameSuffixId ang = -2.0 scale = 0.55
	else
		create_winport_login_field container = <container> pos = <pos> label = qs(0x83ea16b1) labelId = usernameLabelId prefixId = usernamePrefixId cursorId = usernameCursorId suffixId = usernameSuffixId ang = -2.0 scale = 0.55
	endif
	GetScreenElementDims \{id = usernameLabelId}
	lineHeight = (<Height> + 8)
	if (<mode> = loginAccount || <mode> = deleteAccount || <mode> = changeAccount)
		pos = (<pos> + ((0.0, 1.0) * <lineHeight>))
		create_winport_login_field container = <container> pos = <pos> label = qs(0x4a1150c5) labelId = passwordLabelId prefixId = passwordPrefixId cursorId = passwordCursorId suffixId = passwordSuffixId ang = 0.2
	endif
	if (<mode> = createAccount || <mode> = changeAccount || <mode> = resetAccount)
		pos = (<pos> + ((0.0, 1.0) * <lineHeight>))
		create_winport_login_field container = <container> pos = <pos> label = qs(0x38b824da) labelId = newPassword1LabelId prefixId = newPassword1PrefixId cursorId = newPassword1CursorId suffixId = newPassword1SuffixId ang = -0.6
		pos = (<pos> + ((0.0, 1.0) * <lineHeight>))
		create_winport_login_field container = <container> pos = <pos> label = qs(0xb06e1a19) labelId = newPassword2LabelId prefixId = newPassword2PrefixId cursorId = newPassword2CursorId suffixId = newPassword2SuffixId ang = 0.5 scale = 0.55
	endif
	if (<mode> = createAccount || <mode> = resetAccount)
		pos = (<pos> + ((0.0, 1.0) * <lineHeight>))
		create_winport_login_field container = <container> pos = <pos> label = qs(0x253d0b55) labelId = licenseLabelId prefixId = licensePrefixId cursorId = licenseCursorId suffixId = licenseSuffixId ang = 1.5 scale = 0.4
	endif
	change \{user_control_pill_text_color = [
			0
			0
			0
			255
		]}
	change \{user_control_pill_color = [
			180
			180
			180
			255
		]}
	if (<mode> = AddFriend)
		add_user_control_helper \{text = qs("ACCEPT")
			button = green
			z = 100
			winport_always_use_keyboard_glyphs = 1}
	else
		add_user_control_helper \{text = qs("ACCEPT")
			button = green
			z = 100}
	endif
	if (<mode> = loginAccount)
		add_user_control_helper \{text = qs("CANCEL")
			button = red
			z = 100}
	elseif (<mode> = AddFriend)
		add_user_control_helper \{text = qs("BACK")
			button = red
			z = 100
			winport_always_use_keyboard_glyphs = 1}
	else
		add_user_control_helper \{text = qs("BACK")
			button = red
			z = 100}
	endif
	if GotParam \{yellowButtonText}
		add_user_control_helper text = <yellowButtonText> fkeys button = Yellow z = 100
	endif
	if GotParam \{blueButtonText}
		add_user_control_helper text = <blueButtonText> fkeys button = Blue z = 100
	endif
	LaunchEvent type = focus target = <container>
	printstruct <...>
	SpawnScriptLater winport_account_management_eventloop params = <...>
endscript

script select_execute_login 
	if (<mode> = loginAccount)
		ui_event_wait \{event = menu_replace
			data = {
				state = UIstate_winport_account_login_status_screen
				action = executeLogin
			}}
	else
		ui_event_wait \{event = menu_replace
			data = {
				state = UIstate_winport_account_create_status_screen
				action = executeLogin
			}}
	endif
endscript

script winport_account_management_eventloop 
	printf \{qs(0xc2669949)}
	begin
	if (IsCapsLockOn)
		SetScreenElementProps \{id = capsLockField
			alpha = 1.0}
	else
		SetScreenElementProps \{id = capsLockField
			alpha = 0.0}
	endif
	if (<mode> = AddFriend)
		update_winport_login_field \{field = friendUsername
			labelId = usernameLabelId
			prefixId = usernamePrefixId
			cursorId = usernameCursorId
			suffixId = usernameSuffixId}
	else
		update_winport_login_field \{field = UserName
			labelId = usernameLabelId
			prefixId = usernamePrefixId
			cursorId = usernameCursorId
			suffixId = usernameSuffixId}
	endif
	update_winport_login_field \{field = password
		labelId = passwordLabelId
		prefixId = passwordPrefixId
		cursorId = passwordCursorId
		suffixId = passwordSuffixId}
	update_winport_login_field \{field = newPassword1
		labelId = newPassword1LabelId
		prefixId = newPassword1PrefixId
		cursorId = newPassword1CursorId
		suffixId = newPassword1SuffixId}
	update_winport_login_field \{field = newPassword2
		labelId = newPassword2LabelId
		prefixId = newPassword2PrefixId
		cursorId = newPassword2CursorId
		suffixId = newPassword2SuffixId}
	update_winport_login_field \{field = license
		labelId = licenseLabelId
		prefixId = licensePrefixId
		cursorId = licenseCursorId
		suffixId = licenseSuffixId}
	Wait \{1
		frame}
	if NOT (ScreenElementExists id = <container>)
		printf \{'no screen element'}
		return
	endif
	NetSessionFunc \{func = GetLoginEntry}
	if (<loginEntry> = loginAccepted)
		break
	endif
	if (<loginEntry> = loginAborted)
		break
	endif
	if ((GotParam yellowButtonAction) && (<loginEntry> = loginOption1))
		break
	endif
	if ((GotParam blueButtonAction) && (<loginEntry> = loginOption2))
		break
	endif
	repeat
	if (<mode> = AddFriend)
		if (<loginEntry> = loginAccepted)
			printf \{qs(0xfcca39a6)}
			NetSessionFunc \{func = GetLoginField
				params = {
					field = friendUsername
				}}
			NetSessionFunc func = AddFriend params = {name = <prefix>}
			if (<winport_from> = join_private_band)
				ui_event_wait \{event = menu_replace
					data = {
						state = UIstate_mainmenu
						base_name = 'mainmenu'
						selected_index = 0
						clear_previous_stack
					}}
			else
				ui_event_wait \{event = menu_replace
					state = uistate_online}
			endif
		elseif (<loginEntry> = loginAborted)
			printf \{qs(0xf0040f9d)}
			if (<winport_from> = join_private_band)
				ui_event_wait \{event = menu_replace
					data = {
						state = UIstate_mainmenu
						base_name = 'mainmenu'
						selected_index = 0
						clear_previous_stack
					}}
			else
				ui_event_wait \{event = menu_replace
					state = uistate_online}
			endif
		endif
		return
	endif
	switch <loginEntry>
		case loginAccepted
		ui_event_wait \{event = menu_replace
			state = UIstate_winport_account_login_status_screen}
		case loginOption1
		if (<mode> = changeAccount)
			ui_event_wait \{event = menu_replace
				state = UIstate_winport_account_reset_screen}
		elseif (<mode> = resetAccount)
			ui_event_wait \{event = menu_replace
				state = UIstate_winport_account_delete_screen}
		else
			ui_event_wait \{event = menu_replace
				state = UIstate_winport_account_change_screen}
		endif
		case loginOption2
		ui_event_wait \{event = menu_replace
			state = UIstate_winport_account_create_screen}
		case loginAborted
		cancel_winport_account_management_screen mode = <mode>
	endswitch
endscript

script ui_destroy_winport_account_management_screen 
	printf \{'ui_destroy_winport_account_management_screen'}
	NetSessionFunc \{func = DestroyLoginFields}
	if (ScreenElementExists id = <container>)
		DestroyScreenElement id = <container>
	endif
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script cancel_winport_account_management_screen 
	printf \{'--- cancel_winport_account_management_screen'}
	if ($from_account_management_screen = 1)
		change \{from_account_management_screen = 0}
		ui_event_wait \{event = menu_replace
			data = {
				state = UIstate_winport_account_submenu
			}}
		return
	else
		cancel_winport_connection_status_screen
		return
	endif
	if (<mode> = loginAccount)
		if NOT (NetSessionFunc func = IsLoggedIn)
			winport_signin_complete params = <...>
		endif
	else
		ui_event_wait \{event = menu_replace
			state = UIstate_winport_connection_status_screen}
	endif
endscript

script create_winport_login_field \{scale = 0.6}
	CreateScreenElement {
		type = ContainerElement
		parent = <container>
		rot_angle = <ang>
	}
	rotContainer = <id>
	CreateScreenElement {
		type = TextElement
		parent = <rotContainer>
		id = <labelId>
		font = fontgrid_title_a1
		scale = <scale>
		rgba = $loginTextColor
		text = <label>
		just = [left top]
		z_priority = 10.0
		pos = <pos>
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
	}
	CreateScreenElement {
		type = TextElement
		parent = <rotContainer>
		id = <prefixId>
		font = fontgrid_title_a1
		scale = <scale>
		rgba = $loginTextColor
		text = qs("")
		just = [left top]
		z_priority = 10.0
		pos = (300.0, 300.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
	}
	CreateScreenElement {
		type = TextElement
		parent = <rotContainer>
		id = <cursorId>
		font = fontgrid_title_a1
		scale = ((-0.1, 0.2) + ((1.0, 1.0) * <scale>))
		rgba = $loginTextColor
		text = qs("\LI")
		just = [left top]
		z_priority = 10.0
		pos = (400.0, 300.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
	}
	CreateScreenElement {
		type = TextElement
		parent = <rotContainer>
		id = <suffixId>
		font = fontgrid_title_a1
		scale = <scale>
		rgba = $loginTextColor
		text = qs("")
		just = [left top]
		z_priority = 10.0
		pos = (500.0, 300.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
	}
	RunScriptOnScreenElement id = <cursorId> winport_cursor_blinker params = {blinkId = <cursorId>}
endscript

script update_winport_login_field 
	if NOT (ScreenElementExists id = <labelId>)
		return
	endif
	NetSessionFunc func = GetLoginField params = {field = <field>}
	if (<active> = 1)
		SetScreenElementProps id = <prefixId> text = <prefix>
		SetScreenElementProps id = <cursorId> text = qs("\LI")
		SetScreenElementProps id = <suffixId> text = <suffix>
	else
		SetScreenElementProps id = <prefixId> text = <prefix>
		SetScreenElementProps id = <cursorId> text = qs("")
		SetScreenElementProps id = <suffixId> text = qs("")
	endif
	GetScreenElementDims id = <labelId>
	GetScreenElementPosition id = <labelId>
	pos = (<screenelementpos> + ((1.0, 0.0) * <width>))
	SetScreenElementProps id = <prefixId> pos = <pos>
	GetScreenElementPosition id = <prefixId>
	GetScreenElementDims id = <prefixId>
	pos = (<screenelementpos> + ((1.0, 0.0) * <width>))
	SetScreenElementProps id = <cursorId> pos = <pos>
	GetScreenElementPosition id = <cursorId>
	GetScreenElementDims id = <cursorId>
	pos = (<screenelementpos> + ((1.0, 0.0) * <width>))
	SetScreenElementProps id = <suffixId> pos = <pos>
endscript

script winport_cursor_blinker 
	begin
	if NOT (ScreenElementExists id = <blinkId>)
		return
	endif
	LegacyDoScreenElementMorph id = <blinkId> alpha = 0 time = 0.5
	Wait \{0.5
		seconds}
	if NOT (ScreenElementExists id = <blinkId>)
		return
	endif
	LegacyDoScreenElementMorph id = <blinkId> alpha = 1.0 time = 0.5
	Wait \{0.5
		seconds}
	repeat
endscript

script ui_create_winport_account_management_status_screen 
	printf \{qs(0xa5ac41c9)}
	create_menu_backdrop \{texture = xb_online_bg}
	z = 110
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = accountStatusContainer
		pos = (0.0, 0.0)}
	CreateScreenElement \{type = VScrollingMenu
		parent = accountStatusContainer
		just = [
			center
			top
		]
		dims = (500.0, 150.0)
		pos = (640.0, 465.0)
		z_priority = 1}
	menu_id = <id>
	CreateScreenElement {
		type = VMenu
		parent = <menu_id>
		id = <vmenu_id>
		pos = (298.0, 0.0)
		just = [center top]
		internal_just = [center top]
		dims = (500.0, 150.0)
		event_handlers = [
			{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
		]
	}
	change \{menu_focus_color = [
			180
			50
			50
			255
		]}
	change \{menu_unfocus_color = [
			0
			0
			0
			255
		]}
	vmenu_id = <id>
	CreateScreenElement \{type = SpriteElement
		parent = accountStatusContainer
		texture = online_dialog_bg
		dims = (640.0, 500.0)
		pos = (640.0, 80.0)
		just = [
			center
			top
		]
		z_priority = 9
		alpha = 1.0}
	CreateScreenElement \{type = TextElement
		parent = accountStatusContainer
		font = fontgrid_text_a6
		scale = 0.8
		rgba = [
			223
			223
			223
			250
		]
		text = qs("Online")
		just = [
			center
			top
		]
		z_priority = 10.0
		pos = (640.0, 132.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]}
	CreateScreenElement {
		type = TextBlockElement
		parent = accountStatusContainer
		id = statusMessage
		font = fontgrid_text_a3
		scale = 0.8
		rgba = [210 210 210 250]
		just = [center top]
		internal_just = [center top]
		internal_scale = <scale>
		z_priority = <z>
		pos = (640.0, 310.0)
		dims = (800.0, 320.0)
		line_spacing = 1.0
	}
	CreateScreenElement \{id = anim_wheel_bg
		type = SpriteElement
		parent = accountStatusContainer
		texture = online_load_wheel_BG
		pos = (930.0, 500.0)
		dims = (140.0, 140.0)
		just = [
			center
			center
		]
		z_priority = 520}
	CreateScreenElement \{id = anim_wheel
		type = SpriteElement
		parent = accountStatusContainer
		texture = online_load_wheel
		pos = (930.0, 500.0)
		dims = (140.0, 140.0)
		just = [
			center
			center
		]
		z_priority = 521}
	SpawnScriptLater winport_animate_online_icon params = {id = <id>}
	LaunchEvent type = focus target = <vmenu_id>
	NetSessionFunc \{func = ExecuteLoginTask}
	SpawnScriptLater winport_account_management_status_screen_event_loop params = <...>
endscript

script winport_account_management_status_screen_event_loop 
	printf \{'--- winport_account_management_status_screen_event_loop'}
	begin
	NetSessionFunc \{func = GetNetworkStatus}
	printf qs(0x3292d0d9) s = <CurrentNetworkTask> p = <CurrentNetworkStatus>
	switch (<CurrentNetworkTask>)
		case 'CREATE_ACCOUNT'
		switch (<CurrentNetworkStatus>)
			case 'PENDING'
			statusText = qs(0x50a1b1c6)
			case 'DONE'
			statusText = qs(0x0053c979)
			success = true
			case 'FAILED'
			statusText = qs(0x25072d1c)
			success = false
			default
			statusText = qs(0xc8d1230a)
			success = false
		endswitch
		case 'LOGIN_ACCOUNT'
		switch (<CurrentNetworkStatus>)
			case 'PENDING'
			statusText = qs(0x230678c7)
			case 'DONE'
			statusText = qs(0x58441bcf)
			success = true
			case 'FAILED'
			statusText = qs(0x435ba072)
			success = false
			default
			statusText = qs(0xc8d1230a)
			success = false
		endswitch
		case 'CHANGE_ACCOUNT'
		switch (<CurrentNetworkStatus>)
			case 'PENDING'
			statusText = qs(0xbd5cafcf)
			case 'DONE'
			statusText = qs(0x1cc36e6a)
			success = true
			case 'FAILED'
			statusText = qs(0xda155fa4)
			success = false
			default
			statusText = qs(0xc8d1230a)
			success = false
		endswitch
		case 'RESET_ACCOUNT'
		switch (<CurrentNetworkStatus>)
			case 'PENDING'
			statusText = qs(0xec23ea5e)
			case 'DONE'
			statusText = qs(0xf6f68c85)
			success = true
			case 'FAILED'
			statusText = qs(0xc7f01ab8)
			success = false
			default
			statusText = qs(0xc8d1230a)
			success = false
		endswitch
		case 'DELETE_ACCOUNT'
		switch (<CurrentNetworkStatus>)
			case 'PENDING'
			statusText = qs(0x3a6545f4)
			case 'DONE'
			statusText = qs(0x654142fa)
			success = true
			case 'FAILED'
			statusText = qs(0x5c163488)
			success = false
			default
			statusText = qs(0xc8d1230a)
			success = false
		endswitch
		default
		printf qs(0x480f953d) s = <CurrentNetworkTask>
		statusText = qs(0xc8d1230a)
		success = false
	endswitch
	SetScreenElementProps id = statusMessage text = <statusText>
	fit_text_into_menu_item \{id = statusMessage
		max_width = 480}
	if GotParam \{success}
		printf \{'got return value...'}
		break
	endif
	Wait \{1
		frame}
	if NOT (ScreenElementExists id = accountStatusContainer)
		printf \{'accountStatusContainer gone!'}
		KillSpawnedScript \{name = winport_animate_online_icon}
		return
	endif
	repeat
	printf \{'Network Status obtained...\\n'}
	KillSpawnedScript \{name = winport_animate_online_icon}
	if ScreenElementExists \{id = anim_wheel}
		DestroyScreenElement \{id = anim_wheel}
	endif
	if ScreenElementExists \{id = anim_wheel_bg}
		DestroyScreenElement \{id = anim_wheel_bg}
	endif
	if (<success> = false)
		NetSessionFunc \{func = GetAutoLoginSetting}
		if (<autoLoginSetting> = autoLoginOn && NetSessionFunc func = HasExistingLogin)
			NetSessionFunc \{func = SetAutoLoginSetting
				params = {
					autoLoginSetting = autoLoginPrompt
				}}
		endif
		NetSessionFunc \{func = GetFailureCode}
		switch <FailureCode>
			case 666
			statusText = qs(0xb1c61217)
			case 667
			statusText = qs(0xcabac166)
			case 668
			statusText = qs(0x95d61e49)
			case 669
			statusText = qs(0x25dd06a8)
			case 700
			statusText = qs(0xc12d2d48)
			case 701
			statusText = qs(0xee47b5fd)
			case 702
			statusText = qs(0xc0b5abdf)
			case 703
			statusText = qs(0xc83332a3)
			case 704
			statusText = qs(0x66aa5e95)
			case 705
			statusText = qs(0x85019694)
			case 706
			statusText = qs(0xf86e8fbb)
			case 707
			statusText = qs(0xef836960)
			case 708
			statusText = qs(0xdd3e1158)
			case 709
			statusText = qs(0x50e514cd)
			case 710
			statusText = qs(0x8335f074)
			case 711
			statusText = qs(0x2ead77bc)
			case 712
			statusText = qs(0x8ee1ad2c)
			case 713
			statusText = qs(0x898e84aa)
			case 714
			statusText = qs(0x5eee8b35)
			case 715
			statusText = qs(0x669915b6)
			case 716
			statusText = qs(0x609a0d6a)
		endswitch
		printf qs(0x7bebc93c) s = <GetFailureCode>
		SetScreenElementProps id = statusMessage text = <statusText>
		fit_text_into_menu_item \{id = statusMessage
			max_width = 480}
		CreateScreenElement {
			type = ContainerElement
			parent = <vmenu_id>
			dims = (100.0, 50.0) Bu
			event_handlers = [
				{pad_choose winport_account_management_status_screen_error}
				{pad_back winport_account_management_status_screen_error}
			]
		}
		clean_up_user_control_helpers
		add_user_control_helper \{text = qs("BACK")
			button = red
			z = 100}
		LaunchEvent type = focus target = <vmenu_id>
		return
	endif
	Wait \{3
		seconds}
	printf \{'Login complete...'}
	NetSessionFunc \{func = stats_init}
	printstruct <...>
	if ($online_menu_signin = 1)
		printf \{'online menu signin!'}
		end_event_handlers = [
			{pad_choose main_menu_select_online}
		]
	elseif ($online_career_band_signin = 1)
		printf \{qs(0x4c8f5f2a)}
		end_event_handlers = [
			{pad_choose go_to_online_career_band_menu}
		]
	elseif ($from_account_management_screen = 1)
		end_event_handlers = [
			{pad_choose go_to_options_menu}
		]
	else
		printf \{'No online menu signin...'}
		end_event_handlers = [
			{pad_choose winport_signin_complete params = <...>}
		]
	endif
	CreateScreenElement {
		type = ContainerElement
		parent = <vmenu_id>
		dims = (100.0, 50.0)
		event_handlers = <end_event_handlers>
	}
	add_user_control_helper \{text = qs("Continue")
		button = green
		z = 100}
	LaunchEvent type = focus target = <vmenu_id>
	change \{online_menu_signin = 0}
	change \{online_career_band_signin = 0}
	change \{from_account_management_screen = 0}
endscript

script ui_destroy_winport_account_management_status_screen 
	if (ScreenElementExists id = accountStatusContainer)
		DestroyScreenElement \{id = accountStatusContainer}
	endif
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script winport_account_management_status_screen_error 
	ui_event_wait \{event = menu_replace
		state = UIstate_winport_account_login_screen}
endscript

script winport_signin_complete 
	ui_signin_process_complete controller = <device_num>
	<callback> controller = <device_num> <callback_params>
endscript

script ui_create_winport_account_submenu 
	make_menu_frontend \{screen = Guitarist
		title = qs(0xcee5ca64)}
	if (NetSessionFunc func = IsLoggedIn)
		add_menu_frontend_item \{text = qs("LOG OUT")
			pad_choose_script = account_management_selection
			pad_choose_params = {
				action = execute_logout
			}}
		add_menu_frontend_item \{text = qs(0x111659f8)
			pad_choose_script = account_management_selection
			pad_choose_params = {
				action = execute_change_password
			}}
		add_menu_frontend_item \{text = qs(0x34db5bf4)
			pad_choose_script = account_management_selection
			pad_choose_params = {
				action = execute_delete_account
			}}
	endif
	add_menu_frontend_item \{text = qs(0xfd1c07a0)
		pad_choose_script = account_management_select_auto_login
		pad_choose_params = {
			no_restart
		}}
	NetSessionFunc \{func = GetAutoLoginSetting}
	switch <autoLoginSetting>
		case autoLoginOff
		autoLoginText = qs("Off")
		case autoLoginOn
		autoLoginText = qs("On")
		case autoLoginUnknown
		case autoLoginPrompt
		autoLoginText = qs(0x8de266cb)
	endswitch
	CreateScreenElement {
		id = current_auto_login
		parent = <item_container_id>
		type = TextBlockElement
		pos = (0.0, 24.0)
		text = <autoLoginText>
		font = fontgrid_title_a1
		font_spacing = 0
		dims = (0.0, 26.0)
		fit_height = `scale down if larger`
		fit_width = `expand dims`
		rgba = [255 255 255 255]
		internal_just = [center , center]
		just = [center , center]
		pos_anchor = [center , center]
		z_priority = 50
	}
	menu_finish
endscript

script ui_destroy_winport_account_submenu 
	destroy_generic_menu
endscript

script account_management_selection 
	printf \{'--- account_management_selection'}
	if (<action> = execute_logout)
		ui_event_wait \{event = menu_replace
			state = UIstate_winport_logout_submenu}
	elseif (<action> = execute_change_password)
		ui_event_wait \{event = menu_replace
			state = UIstate_winport_change_password_submenu}
	elseif (<action> = execute_delete_account)
		ui_event_wait \{event = menu_replace
			state = UIstate_winport_account_delete_submenu}
	else
	endif
endscript

script account_management_select_auto_login 
	NetSessionFunc \{func = GetAutoLoginSetting}
	switch <autoLoginSetting>
		case autoLoginOff
		newLoginText = qs("On")
		NetSessionFunc \{func = SetAutoLoginSetting
			params = {
				autoLoginSetting = autoLoginOn
			}}
		case autoLoginOn
		newLoginText = qs(0x8de266cb)
		NetSessionFunc \{func = SetAutoLoginSetting
			params = {
				autoLoginSetting = autoLoginPrompt
			}}
		case autoLoginUnknown
		case autoLoginPrompt
		newLoginText = qs("Off")
		NetSessionFunc \{func = SetAutoLoginSetting
			params = {
				autoLoginSetting = autoLoginOff
			}}
	endswitch
	current_auto_login :SetProps text = <newLoginText>
endscript

script accept_add_friend 
endscript

script cancel_add_friend 
endscript
