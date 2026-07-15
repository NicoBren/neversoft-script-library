loginTextColor = [
	255
	200
	0
	255
]
gPrivateMatchId = 0

script create_winport_account_create_screen 
	create_winport_account_management_screen \{mode = createAccount
		title = qs(0x47f8b9ab)
		container = accountCreateContainer}
endscript

script destroy_winport_account_create_screen 
	destroy_winport_account_management_screen \{container = accountCreateContainer}
endscript

script ui_create_winport_account_reset_screen 
	printf \{qs(0x32860a8e)}
	ui_event_wait \{event = menu_replace
		data = {
			state = UIstate_winport_account_management_screen
			mode = resetAccount
			title = qs(0xaebdb73e)
			container = accountResetContainer
			yellowButtonText = qs(0x34db5bf4)
			yellowButtonAction = start_winport_account_delete_screen
		}}
endscript

script ui_destroy_winport_account_reset_screen 
	destroy_winport_account_management_screen \{container = accountResetContainer}
endscript

script start_winport_account_reset_screen 
	printf \{qs(0xcbe75dc0)}
	ui_event_wait \{event = menu_replace
		state = UIstate_winport_account_reset_screen}
endscript

script ui_create_winport_account_delete_screen 
	ui_event_wait \{event = menu_replace
		data = {
			state = UIstate_winport_account_management_screen
			mode = deleteAccount
			title = qs(0x16fd5b13)
			container = accountDeleteContainer
		}}
endscript

script ui_destroy_winport_account_delete_screen 
	destroy_winport_account_management_screen \{container = accountDeleteContainer}
endscript

script start_winport_account_delete_screen 
	ui_event_wait \{event = menu_replace
		state = UIstate_winport_account_delete_screen}
endscript

script ui_create_change_password_submenu 
	printf \{'--- ui_create_change_password_submenu'}
	create_change_password_submenu
endscript

script ui_destroy_change_password_submenu 
	destroy_change_password_submenu
endscript

script create_change_password_submenu 
	printf \{qs(0x7632f4d2)}
	printscriptinfo \{qs(0xafaba2ee)}
	ui_event_wait \{event = menu_replace
		data = {
			state = UIstate_winport_account_management_screen
			mode = changeAccount
			title = qs(0x95ad3a57)
			container = accountChangeContainer
			yellowButtonText = qs(0x1cb97731)
			yellowButtonAction = create_account_reset_submenu
			AccountManagementScreen
		}}
endscript

script destroy_change_password_submenu 
	destroy_winport_account_management_screen \{container = accountChangeContainer}
endscript

script ui_create_account_delete_submenu 
	printf \{'--- ui_create_account_delete_submenu'}
	create_account_delete_submenu
endscript

script ui_destroy_account_delete_submenu 
	destroy_account_delete_submenu
endscript

script create_account_delete_submenu 
	ui_event_wait \{event = menu_replace
		data = {
			state = UIstate_winport_account_management_screen
			mode = deleteAccount
			title = qs(0x16fd5b13)
			container = accountDeleteSubmenuContainer
			yellowButtonAction = winport_null_action
			AccountManagementScreen
		}}
endscript

script destroy_account_delete_submenu 
	destroy_winport_account_management_screen \{container = accountDeleteSubmenuContainer}
endscript

script ui_create_account_reset_submenu 
	printf \{'--- ui_create_account_reset_submenu'}
	create_account_reset_submenu
endscript

script ui_destroy_account_reset_submenu 
	destroy_account_reset_submenu
endscript

script create_account_reset_submenu 
	ui_event_wait \{event = menu_replace
		data = {
			state = UIstate_winport_account_management_screen
			mode = resetAccount
			title = qs(0x63f382d1)
			container = accountResetSubmenuContainer
			yellowButtonAction = winport_null_action
			AccountManagementScreen
		}}
endscript

script destroy_account_reset_submenu 
	destroy_winport_account_management_screen \{container = accountResetSubmenuContainer}
endscript

script winport_null_action 
endscript

script create_winport_account_create_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_winport_account_create_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_winport_account_change_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_winport_account_change_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_winport_account_reset_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_winport_account_reset_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_winport_account_delete_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_winport_account_delete_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_account_change_submenu_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_account_change_submenu_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_account_delete_submenu_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_account_delete_submenu_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_join_private_menu 
	printf \{qs(0xba36d6a6)}
	z = 110
	create_menu_backdrop \{texture = Online_Background}
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = private_menu_container
		pos = (0.0, 0.0)
		event_handlers = [
			{
				focus
				retail_menu_focus
			}
			{
				unfocus
				retail_menu_unfocus
			}
			{
				pad_choose
				executeJoinAttempt
			}
			{
				pad_back
				ui_flow_manager_respond_to_action
				params = {
					action = back
				}
			}
		]}
	NetSessionFunc \{func = InitializeLoginFields
		params = {
			loginMode = matchUsername
		}}
	displaySprite \{parent = private_menu_container
		tex = Dialog_Title_BG
		dims = (300.0, 250.0)
		z = 9
		pos = (640.0, 50.0)
		just = [
			right
			top
		]
		flip_v}
	displaySprite \{parent = private_menu_container
		tex = Dialog_Title_BG
		dims = (300.0, 250.0)
		z = 9
		pos = (640.0, 50.0)
		just = [
			left
			top
		]}
	CreateScreenElement \{type = TextElement
		parent = private_menu_container
		font = fontgrid_title_a1
		scale = 1.0
		rgba = [
			223
			223
			223
			250
		]
		text = qs(0x1e444acc)
		just = [
			center
			top
		]
		z_priority = 10.0
		pos = (640.0, 145.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]}
	fit_text_in_rectangle id = <id> dims = (400.0, 75.0) pos = (640.0, 145.0) only_if_larger_x = 1 only_if_larger_y = 1 just = center
	CreateScreenElement \{type = TextElement
		parent = private_menu_container
		font = fontgrid_text_a4
		scale = 1.0
		rgba = [
			180
			180
			180
			255
		]
		text = qs(0x488b8986)
		just = [
			center
			top
		]
		z_priority = 10.0
		pos = (640.0, 590.0)
		shadow
		shadow_offs = (1.0, 1.0)
		shadow_rgba = [
			0
			0
			0
			255
		]}
	fit_text_in_rectangle id = <id> dims = (600.0, 25.0) pos = (640.0, 590.0) only_if_larger_x = 1 only_if_larger_y = 1 just = center keep_ar = 1
	<pos> = (375.0, 320.0)
	create_winport_login_field container = private_menu_container pos = <pos> label = qs(0x3be57438) labelId = usernameLabelId prefixId = usernamePrefixId cursorId = usernameCursorId suffixId = usernameSuffixId ang = -2.0
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
	add_user_control_helper \{text = qs("ACCEPT")
		button = green
		z = 100}
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100}
	LaunchEvent \{type = focus
		target = private_menu_container}
	begin
	update_winport_login_field \{field = matchUsername
		labelId = usernameLabelId
		prefixId = usernamePrefixId
		cursorId = usernameCursorId
		suffixId = usernameSuffixId}
	Wait \{1
		frame}
	if NOT (ScreenElementExists id = private_menu_container)
		return
	endif
	NetSessionFunc \{func = GetLoginEntry}
	if ((<loginEntry> = loginAccepted) || (<loginEntry> = loginAborted))
		break
	endif
	repeat
	switch <loginEntry>
		case loginAccepted
		executeJoinAttempt
		case loginAborted
		ui_flow_manager_respond_to_action \{action = back}
	endswitch
endscript

script executeJoinAttempt 
	NetSessionFunc \{func = GeneratePrivateMatchId}
	change gPrivateMatchId = <privateMatchId>
	ui_flow_manager_respond_to_action \{action = attempt_join}
endscript

script destroy_join_private_menu 
	NetSessionFunc \{func = DestroyLoginFields}
	DestroyScreenElement \{id = private_menu_container}
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script ui_create_logout_submenu 
	printf \{'--- ui_create_logout_submenu'}
	create_logout_submenu params = <...>
endscript

script ui_destroy_logout_submenu 
	destroy_logout_submenu params = <...>
endscript

script create_logout_submenu 
	printf \{qs(0xfba89727)}
	create_popup_warning_menu \{textblock = {
			title = qs("LOG OUT")
			text = qs(0xdad8f88c)
			dims = (800.0, 400.0)
			scale = 0.5
		}
		menu_pos = (640.0, 480.0)
		dialog_dims = (600.0, 80.0)
		options = [
			{
				func = executeLogout
				text = qs("LOG OUT")
			}
			{
				func = main_menu_select_account
				text = qs(0x7979158a)
			}
		]}
endscript

script destroy_logout_submenu 
	destroy_popup_warning_menu
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script executeLogout 
	NetSessionFunc \{func = ResetNetwork}
	Wait \{1.0
		second}
	destroy_logout_submenu
	ui_event_block \{event = menu_replace
		data = {
			state = UIstate_mainmenu
			base_name = 'mainmenu'
			selected_index = 3
			clear_previous_stack
		}}
endscript

script create_account_submenu \{menu_title = qs(0xf66be5f9)
		menu_id = online_account_menu
		vmenu_id = online_account_vmenu}
	change \{online_main_menu_pos = (640.0, 110.0)}
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = account_submenu_anchor
		pos = (0.0, 0.0)}
	CreateScreenElement {
		type = VScrollingMenu
		parent = account_submenu_anchor
		id = <menu_id>
		just = [center top]
		dims = (400.0, 480.0)
		pos = (($online_main_menu_pos) + (0.0, 75.0))
		z_priority = 1
	}
	CreateScreenElement {
		type = VMenu
		parent = <menu_id>
		id = <vmenu_id>
		pos = (47.5, 0.0)
		just = [left top]
		internal_just = [center top]
		dims = (400.0, 480.0)
		event_handlers = [
			{pad_back ui_flow_manager_respond_to_action params = {action = back}}
			{pad_back generic_menu_pad_back}
			{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
		]
	}
	CreateScreenElement \{type = ContainerElement
		parent = account_submenu_anchor
		id = online_account_submenu_container
		pos = (0.0, 0.0)}
	CreateScreenElement \{type = ContainerElement
		parent = online_account_submenu_container
		id = online_account_submenu_text_container
		pos = (0.0, 0.0)}
	CreateScreenElement \{type = ContainerElement
		parent = account_submenu_anchor
		id = online_info_pane_container
		pos = (0.0, 0.0)}
	create_menu_backdrop \{texture = Online_Background}
	displaySprite id = online_frame parent = online_account_submenu_container tex = Online_Frame_Large pos = ($online_main_menu_pos) dims = (660.0, 480.0) just = [center top] z = 2
	displaySprite id = online_frame_crown parent = online_account_submenu_container tex = online_frame_crown pos = (($online_main_menu_pos) + (0.0, -62.0)) dims = (256.0, 105.0) just = [center top] z = 3
	CreateScreenElement {
		type = TextElement
		parent = online_account_submenu_text_container
		id = online_title
		font = fontgrid_title_a1
		scale = 0.85
		rgba = ($online_dark_purple)
		pos = (($online_main_menu_pos) + (0.0, 35.0))
		text = <menu_title>
		just = [center top]
		z_priority = 4.0
	}
	GetScreenElementDims id = <id>
	if (<width> > 420)
		SetScreenElementProps {
			id = <id>
			scale = 1.0
		}
		scale_element_to_size {
			id = <id>
			target_width = 420
			target_height = <Height>
		}
	endif
	net_add_item_to_main_menu {
		VMenu = <vmenu_id>
		text = qs(0x3c3f3a27)
		pad_choose_script = ui_flow_manager_respond_to_action
		choose_script_params = {action = execute_logout}
		line_spacing = 50
	}
	net_add_item_to_main_menu {
		VMenu = <vmenu_id>
		text = qs(0x95ad3a57)
		pad_choose_script = ui_flow_manager_respond_to_action
		choose_script_params = {action = execute_change_password}
		line_spacing = 50
	}
	net_add_item_to_main_menu {
		VMenu = <vmenu_id>
		text = qs(0x16fd5b13)
		pad_choose_script = ui_flow_manager_respond_to_action
		choose_script_params = {action = execute_delete_account}
		line_spacing = 50
	}
	set_focus_color rgba = ($online_dark_purple)
	set_unfocus_color rgba = ($online_light_blue)
	create_online_main_menu_helper_buttons
	LaunchEvent type = focus target = <vmenu_id>
endscript

script destroy_account_submenu 
	clean_up_user_control_helpers
	destroy_menu_backdrop
	if ScreenElementExists \{id = account_submenu_anchor}
		DestroyScreenElement \{id = account_submenu_anchor}
	endif
endscript
