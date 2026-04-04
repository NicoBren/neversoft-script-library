g_head_to_head_instrument_type = none
g_head_to_head_active_controllers = [
]

script ui_create_select_controller \{player = 2}
	clear_exclusive_devices
	change \{respond_to_signin_changed = 0}
	change \{respond_to_signin_changed_all_players = 0}
	change \{respond_to_signin_changed_func = main_menu_signin_changed}
	change \{in_controller_select_menu = 1}
	GetActiveControllers
	change g_head_to_head_active_controllers = <active_controllers>
	make_menu_frontend \{screen = bassist
		title = qs("Select Controller")
		no_menu
		use_all_controllers}
	if <desc_id> :Desc_ResolveAlias name = alias_body
		GetScreenElementDims id = <resolved_id>
		CreateScreenElement {
			type = DescInterface
			id = current_menu
			parent = <resolved_id>
			desc = 'p2_select_controller'
			pos = (-75.0, -10.0)
			autoSizeDims = true
		}
		if French
			current_menu :SE_SetProps \{ready_banner_texture = ready_banner_french}
		elseif German
			current_menu :SE_SetProps \{ready_banner_texture = ready_banner_german}
		elseif Italian
			current_menu :SE_SetProps \{ready_banner_texture = ready_banner_italian}
		elseif Spanish
			current_menu :SE_SetProps \{ready_banner_texture = ready_banner_spanish}
		endif
	endif
	if current_menu :Desc_ResolveAlias \{name = alias_all_controllers}
		<alias_players> = <resolved_id>
		<alias_players> :SetTags {p1 = -1 p2 = -1 p1_ready = 0 p2_ready = 0}
		GetScreenElementChildren id = <alias_players>
		<players_children> = <children>
		printstruct <...>
		GetArraySize <players_children>
		if NOT (<array_size> = 4)
			ScriptAssert \{'array size needs to be four, we have four controller slots'}
		endif
		i = 0
		begin
		ui_select_controller_hide_or_unhide_icons i = <i> players_children = <players_children> active_controllers = <active_controllers>
		i = (<i> + 1)
		repeat <array_size>
	endif
	spawnscriptnow ui_select_controller_poll_for_controllers params = {players_children = <players_children>}
	ui_return_game_mode
endscript

script get_controller_texture 
	switch <type>
		case guitar
		printf \{qs("\LI've got guitar controller!")}
		<texture> = guitar_controller
		case Drums
		printf \{qs("\LI've got drum controller!")}
		<texture> = drum_controller
		case keyboard
		printf \{qs(0x5018b68c)}
		<texture> = mixer_icon_keyboard
	endswitch
	return texture = <texture>
endscript

script ui_destroy_select_controller 
	change \{in_controller_select_menu = 0}
	if ScreenElementExists \{id = popup_warning_container}
		destroy_popup_warning_menu
	endif
	KillSpawnedScript \{name = ui_select_controller_poll_for_controllers}
	generic_ui_destroy
endscript

script ui_select_controller_get_controller_type controller = ($primary_controller)
	type = guitar
	if NOT IsGuitarController controller = <controller>
		type = Drums
		if NOT IsDrumController controller = <controller>
			type = keyboard
		endif
	endif
	return {type = <type>}
endscript

script ui_select_controller_hide_or_unhide_icons 
	<child_id> = (<players_children> [<i>])
	if ((<active_controllers> [<i>]) = 0)
		<child_id> :SE_GetParentId
		<parent_id> :GetTags
		<child_id> :GetTags
		<child_id> :SE_SetProps hide pos = <old_pos>
		<child_id> :SetTags hidden = 1
		get_controller_ready_se_objs
		if (<p1> = <i>)
			<parent_id> :SetTags p1 = -1
			<parent_id> :SetTags p1_ready = 0
			SetScreenElementProps id = {<p1_se> child = ready} alpha = 0.0 time = 0.1
		elseif (<p2> = <i>)
			<parent_id> :SetTags p2 = -1
			<parent_id> :SetTags p2_ready = 0
			SetScreenElementProps id = {<p2_se> child = ready} alpha = 0.0 time = 0.1
		endif
		printf 'ui_select_controller_hide_or_unhide_icons controller %c HIDE' c = <i>
	else
		printf 'ui_select_controller_hide_or_unhide_icons controller %c NOTHIDE' c = <i>
		<child_id> :SE_GetProps
		<child_id> :SE_SetProps {
			event_handlers = [] replace_handlers
		}
		<child_id> :SE_SetProps {
			exclusive_device = <i>
			event_handlers = [
				{pad_up ui_select_controller_move params = {left}}
				{pad_down ui_select_controller_move params = {right}}
				{pad_choose ui_select_controller_choose}
				{pad_back ui_select_controller_back}
			]
			replace_handlers
			tags = {old_pos = <pos>}
		}
		if IsWinPort
			ui_select_controller_get_controller_type controller = <i>
		else
			ui_options_get_controller_type controller = <i>
		endif
		if NOT IsWinPort
			if (<type> = Vocals)
				get_num_mics_plugged_in
				if (<num_mics_plugged_in> < 2)
					<type> = vocals_no_mic
				endif
			endif
		endif
		get_controller_texture type = <type>
		<child_id> :SE_SetProps {
			texture = <texture>
			unhide
		}
		<child_id> :SetTags hidden = 0
		LaunchEvent type = focus target = <child_id>
	endif
endscript

script ui_select_controller_poll_for_controllers 
	begin
	GetActiveControllers
	GetArraySize <active_controllers>
	<i> = 0
	begin
	if IsWinPort
		ui_select_controller_get_controller_type controller = <i>
	else
		ui_options_get_controller_type controller = <i>
	endif
	if NOT (($g_head_to_head_active_controllers [<i>]) = (<active_controllers> [<i>]))
		ui_select_controller_hide_or_unhide_icons i = <i> players_children = <players_children> active_controllers = <active_controllers>
		SetArrayElement ArrayName = g_head_to_head_active_controllers GlobalArray index = <i> newvalue = (<active_controllers> [<i>])
	elseif IsPs3
		<child_id> = (<players_children> [<i>])
		<child_id> :SE_GetProps
		<my_texture> = <texture>
		<child_id> :GetTags
		if (<hidden> = 0)
			ui_options_get_controller_type controller = <i>
			if (<type> = Vocals)
				get_num_mics_plugged_in
				if (<num_mics_plugged_in> < 2)
					<type> = vocals_no_mic
				endif
			endif
			get_controller_texture type = <type>
			<new_texture> = <texture>
			if NOT (<my_texture> = <new_texture>)
				<child_id> :SE_SetProps {
					texture = <new_texture>
					unhide
				}
				<child_id> :SetTags hidden = 0
			endif
		endif
	endif
	<i> = (<i> + 1)
	repeat <array_size>
	Wait \{1
		gameframe}
	repeat
endscript

script ui_select_controller_move 
	SE_GetParentId
	Obj_GetID
	<parent_id> :GetTags
	GetTags
	if IsWinPort
		if (<device_num> > 0)
			if is_regular_controller controller = <device_num>
				LaunchEvent \{type = unfocus
					target = current_menu}
				text = qs(0xb31a37ce)
				create_popup_warning_menu {
					textblock = {
						text = <text>
					}
					player_device = <device_num>
					no_background
					options = [
						{
							func = ui_select_controller_warning_go_back
							text = qs("GO BACK")
						}
					]
				}
				SoundEvent \{event = Menu_Warning_SFX}
				return
			endif
		endif
	endif
	<play_sound> = 1
	if GotParam \{left}
		<dir> = {up}
		if (<p2> = <device_num>)
			if (<p2_ready> = 1)
				return
			endif
			<parent_id> :SetTags p2 = -1
			SE_SetProps pos = <old_pos> time = 0.1
		elseif (<p1> = -1)
			<parent_id> :SetTags p1 = <device_num>
			SE_SetProps \{pos = (-200.0, -250.0)
				time = 0.1}
		else
			<play_sound> = 0
		endif
	else
		<dir> = {down}
		if (<p1> = <device_num>)
			if (<p1_ready> = 1)
				return
			endif
			<parent_id> :SetTags p1 = -1
			SE_SetProps pos = <old_pos> time = 0.1
		elseif (<p2> = -1)
			<parent_id> :SetTags p2 = <device_num>
			SE_SetProps \{pos = (180.0, 50.0)
				time = 0.1}
		else
			<play_sound> = 0
		endif
	endif
	if (<play_sound>)
		generic_menu_up_or_down_sound <dir>
	endif
endscript

script get_controller_ready_se_objs 
	current_menu :Desc_ResolveAlias \{name = alias_players}
	<alias_players> = <resolved_id>
	GetScreenElementChildren id = <alias_players>
	return p1_se = (<children> [0]) p2_se = (<children> [1])
endscript

script ui_select_controller_choose 
	get_controller_ready_se_objs
	SE_GetParentId
	Obj_GetID
	<parent_id> :GetTags
	if (<p1> = <device_num>)
		<parent_id> :SetTags p1_ready = 1
		SetScreenElementProps id = {<p1_se> child = ready} alpha = 1.0 time = 0.1
		SoundEvent \{event = Box_Check_SFX}
	elseif (<p2> = <device_num>)
		<parent_id> :SetTags p2_ready = 1
		SetScreenElementProps id = {<p2_se> child = ready} alpha = 1.0 time = 0.1
		SoundEvent \{event = Box_Check_SFX}
	endif
	<parent_id> :GetTags
	if ((<p1_ready> = 1) && (<p2_ready> = 1))
		if ((<p1> < 0) || (<p1> >= 4))
			return
		endif
		if ((<p2> < 0) || (<p2> >= 4))
			return
		endif
		if IsWinPort
			ui_select_controller_get_controller_type controller = <p1>
		else
			ui_options_get_controller_type controller = <p1>
		endif
		p1_type = <type>
		if IsWinPort
			ui_select_controller_get_controller_type controller = <p2>
		else
			ui_options_get_controller_type controller = <p2>
		endif
		p2_type = <type>
		if IsWinPort
			if WinPortIsKeyboardController controller = <p1>
				printf \{qs(0x20a6a33d)}
				p1_type = <p2_type>
			endif
			if WinPortIsKeyboardController controller = <p2>
				printf \{qs(0x189d284e)}
				p2_type = <p1_type>
			endif
		endif
		if ($allow_controller_for_all_instruments = 0)
			if NOT (<p1_type> = <p2_type>)
				LaunchEvent \{type = unfocus
					target = current_menu}
				create_popup_warning_menu {
					title = qs("MISMATCH")
					textblock = {
						text = qs("You can only go Head to Head with the same instrument type!")
					}
					player_device = <device_num>
					no_background
					options = [
						{
							func = ui_select_controller_warning_go_back
							text = qs("GO BACK")
						}
					]
				}
				SoundEvent \{event = Menu_Warning_SFX}
				ui_select_controller_back <...>
				return
			endif
			if ChecksumEquals a = <p1_type> b = Vocals
				get_num_mics_plugged_in
				if (<num_mics_plugged_in> < 2)
					LaunchEvent \{type = unfocus
						target = current_menu}
					if IsWinPort
						<text> = qs("You need to have two microphones plugged in to go Head to Head on vocals!")
					elseif isXenon
						<text> = qs("You need to have two microphones or Xbox 360 Headsets to go Head to Head on vocals!")
					else
						<text> = qs("You need to have two microphones plugged in to go Head to Head on vocals!")
					endif
					create_popup_warning_menu {
						textblock = {
							text = <text>
						}
						player_device = <device_num>
						no_background
						options = [
							{
								func = ui_select_controller_warning_go_back
								text = qs("GO BACK")
							}
						]
					}
					SoundEvent \{event = Menu_Warning_SFX}
					ui_select_controller_back <...>
					return
				endif
			endif
		endif
		change g_head_to_head_instrument_type = <p1_type>
		LaunchEvent \{type = unfocus
			target = current_menu}
		if (<p1> != ($player1_status.controller))
			swap_player_status_elements \{player_A = 1
				player_B = 2
				lefty_flip}
		endif
		change structurename = player1_status controller = <p1>
		change structurename = player2_status controller = <p2>
		change player1_device = <p1>
		change player2_device = <p2>
		add_exclusive_device device = <p1>
		add_exclusive_device device = <p2>
		printstruct <...>
		if ChecksumEquals a = <p1_type> b = Vocals
			change \{structurename = player1_status
				part = Vocals}
			change \{structurename = player2_status
				part = Vocals}
			vocals_distribute_mics
		endif
		Wait \{0.25
			seconds}
		data = {device_num = <p2> allow_back = 1 new_state = UIstate_select_mp_mode primary = 0}
		set_primary_controller device_num = <p1> state = uistate_signin data = <data>
	endif
endscript

script ui_select_controller_warning_go_back 
	destroy_popup_warning_menu
	ui_destroy_select_controller
	ui_create_select_controller
endscript

script ui_select_controller_back 
	get_controller_ready_se_objs
	SE_GetParentId
	Obj_GetID
	<parent_id> :GetTags
	if ((<p1_ready> = 0) && (<p2_ready> = 0))
		generic_event_back
	endif
	if (<p1> = <device_num>)
		<parent_id> :SetTags p1_ready = 0
		SetScreenElementProps id = {<p1_se> child = ready} alpha = 0.0 time = 0.1
		generic_menu_pad_back_sound
	elseif (<p2> = <device_num>)
		<parent_id> :SetTags p2_ready = 0
		SetScreenElementProps id = {<p2_se> child = ready} alpha = 0.0 time = 0.1
		generic_menu_pad_back_sound
	endif
endscript

script swap_player_status_elements \{player_A = 1
		player_B = 2}
	FormatText checksumname = player_status_A 'player%n_status' n = <player_A>
	FormatText checksumname = player_status_B 'player%n_status' n = <player_B>
	if GotParam \{lefty_flip}
		<temp_value> = ($<player_status_A>.lefty_flip)
		change structurename = <player_status_A> lefty_flip = ($<player_status_B>.lefty_flip)
		get_savegame_from_controller controller = ($<player_status_A>.controller)
		SetGlobalTags savegame = <savegame> user_options params = {lefty_flip_save = ($<player_status_B>.lefty_flip)}
		change structurename = <player_status_B> lefty_flip = <temp_value>
		get_savegame_from_controller controller = ($<player_status_B>.controller)
		SetGlobalTags savegame = <savegame> user_options params = {lefty_flip_save = <temp_value>}
	endif
endscript
