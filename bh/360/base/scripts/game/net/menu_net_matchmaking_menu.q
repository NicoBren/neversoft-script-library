online_player_slot_bg_gray = [
	89
	90
	92
	255
]
ps3_chat_warning_text = [
	150
	150
	150
	255
]
default_online_warning_pos = (980.0, 480.0)
net_starting_matchmaking = 0
net_block_matchmaking = 0
online_to_setlist_count = 10
net_helper_text_strings = {
	find_a_game_text = qs(0xf4fa09f3)
	debug_create_match_text = qs(0x10b0727c)
	debug_custom_search_text = qs(0x9d1520dd)
	game_mode_text = qs(0xde03dba6)
	start_matchmaking_text = qs(0x07f6b71c)
	matchmaking_complete_text = qs(0x869701dc)
	friends_text = qs(0x3f4b229f)
	timer_5_text = qs(0xbf481dd4)
	timer_4_text = qs(0xa6532c95)
	timer_3_text = qs(0xe912ba52)
	timer_2_text = qs(0xf0098b13)
	timer_1_text = qs(0xdb24d8d0)
	timer_0_text = qs(0xc23fe991)
	postgame_play_again_text = qs(0xd02307b1)
	postgame_party_up_text = qs(0x0a4ae9af)
	p2_pro_faceoff_text = qs(0x61385580)
	p4_pro_faceoff_text = qs(0xc7550a40)
	p2_quickplay_text = qs(0x958a1731)
	p4_quickplay_text = qs(0x7847bad8)
	p8_pro_faceoff_text = qs(0xeecf4e99)
	p4_career_text = qs(0x82f80e32)
}
net_helper_text_strings_xen = {
	preferences_text = qs(0xdf6376f3)
	pref_character_text = qs(0xe0d87a1c)
	pref_difficulty_text = qs(0x58fe6093)
	pref_lefty_flip_text = qs(0xebce6360)
	pref_venue_text = qs(0x4a1fdafa)
	pref_vocal_style_text = qs(0x743fe478)
	gamer_card_text = qs(0x3aa38ab5)
	sign_in_text = qs(0x7ca9368d)
	postgame_quit_text = qs(0xdb9fcce6)
	friends_menu_text = qs(0x5ee2a003)
	blank_text = qs(0x00000000)
}
net_helper_text_strings_ps3 = {
	preferences_text = qs(0x5e4232a5)
	pref_character_text = qs(0x2154e6be)
	pref_difficulty_text = qs(0xe2a82b91)
	pref_lefty_flip_text = qs(0x026e3d2c)
	pref_venue_text = qs(0x78503805)
	pref_vocal_style_text = qs(0xaffa5a09)
	gamer_card_text = qs(0x00000000)
	postgame_quit_text = qs(0xdf3c37a3)
	friends_menu_text = qs(0x0f66f204)
}

script animate_online_icon 
	rot_angle = -360
	begin
	<id> :SE_SetProps rot_angle = <rot_angle> time = 1.0
	<id> :SE_WaitProps
	<rot_angle> = (<rot_angle> - 360)
	repeat
endscript

script create_ps3_chat_warning_message 
	CreateScreenElement {
		type = TextBlockElement
		parent = OnlineLobbyInterface
		id = ps3_chat_warning_text
		font = fontgrid_text_A1
		rgba = ($ps3_chat_warning_text)
		Pos = (870.0, 550.0)
		dims = (515.0, 200.0)
		text = <message>
		just = [center center]
		internal_just = [center center]
		internal_scale = 0.5
		z_priority = 3.1
		single_line = false
		fit_width = wrap
		fit_height = `scale	down	if	larger`
		scale_mode = `per	axis`
	}
endscript

script destroy_ps3_chat_warning_message 
	if ScreenElementExists \{id = ps3_chat_warning_text}
		DestroyScreenElement \{id = ps3_chat_warning_text}
	endif
endscript

script update_headset_status 
	headset_icon_alpha = 0
	has_headset = 0
	is_talking = 0
	begin
	<has_headset> = 0
	<is_talking> = 0
	if (NetSessionFunc Obj = voice func = HasHeadset params = {player_xuid = <uid>})
		<has_headset> = 1
	endif
	if (<has_headset> = 1)
		if (NetSessionFunc Obj = voice func = IsTalking params = {player_xuid = <uid>})
			<is_talking> = 1
		endif
		if (<is_talking> = 1)
			headset_icon_alpha = 1.0
		else
			headset_icon_alpha = 0.5
		endif
	else
		headset_icon_alpha = 0
	endif
	if ScreenElementExists id = <obj_id>
		<obj_id> :SE_SetProps headset_icon_alpha = <headset_icon_alpha>
	endif
	wait \{1.0
		second}
	repeat
endscript

script common_start_matchmaking_setup 
	Band = 1
	begin
	SetBandInfo <Band> in_game = 0
	<Band> = (<Band> + 1)
	repeat 8
	if ($game_mode = compmega || $game_mode = fest_mode || $game_mode = fest_mode_team)
		GetFirstPlayer
		GetPlayerInfo <player> part out = first_part
		GameMode_SetInstrument instrument = <first_part>
		if ($g_net_leader_player_num > 0)
			GetPlayerInfo ($g_net_leader_player_num) part out = force_part
			GetNumPlayersInGame \{local}
			if (<num_players> > 0)
				GetFirstPlayer \{local}
				begin
				SetPlayerInfo <player> part = <force_part>
				GetNextPlayer local player = <player>
				repeat <num_players>
			endif
		endif
	endif
	NetSessionFunc \{Obj = party
		func = get_party_members}
	GetArraySize <connections> param = num_party_members
	GetActiveControllers
	GetArraySize <active_controllers> param = num_controllers
	if (<num_controllers> > 0)
		i = 0
		begin
		if NetSessionFunc func = IsControllerInGame params = {controller = <i>}
			controller_found = 0
			if (<num_party_members> > 0)
				j = 0
				begin
				if (((<connections> [<j>].is_local) = 1) && ((<connections> [<j>].controller_index) = <i>))
					controller_found = 1
					break
				endif
				j = (<j> + 1)
				repeat <num_party_members>
			endif
			if (<controller_found> = 0)
				NetSessionFunc func = RemoveController params = {controller = <i>}
			endif
		endif
		<i> = (<i> + 1)
		repeat <num_controllers>
	endif
	clear_temp_net_id_array
	setup_temp_net_id_array
endscript

script lock_player_parts 
	printf \{qs(0x861fd6e0)}
	if IsHost
		GetNumPlayersInGame
		if (<num_players> > 0)
			GetFirstPlayer \{out = index}
			num_bass = [0 0 0 0 0 0 0 0]
			num_guitar = [0 0 0 0 0 0 0 0]
			begin
			GetPlayerInfo <index> part
			GetPlayerInfo <index> Band
			<team> = (<Band> - 1)
			if (<part> = guitar || <part> = bass)
				if (<part> = guitar)
					SetArrayElement arrayName = num_guitar index = <team> newValue = (<num_guitar> [<team>] + 1)
					if (<num_guitar> [<team>] > 1)
						SetPlayerInfo <index> part = bass
					else
						SetPlayerInfo <index> part = guitar
					endif
				elseif (<part> = bass)
					SetArrayElement arrayName = num_bass index = <team> newValue = (<num_bass> [<team>] + 1)
					if (<num_bass> [<team>] > 1)
						SetPlayerInfo <index> part = guitar
					else
						SetPlayerInfo <index> part = bass
					endif
				endif
			endif
			GetNextPlayer player = <index> out = index
			repeat (<num_players>)
		endif
		if ScreenElementExists \{id = OnlineLobbyInterface}
			if ($network_game_postgame_lobby = 0)
				OnlineLobbyInterface :GetTags
				set_ui_to_final_player_slots Slot = <slot_index> locked
			else
				refresh_player_scores_postgame_container \{locked}
			endif
		endif
	endif
endscript

script match_team_player_parts 
	printf \{qs(0x79960405)}
	if ((IsHost) || ($is_network_game = 0))
		GetNumPlayersInGame
		if (<num_players> > 0)
			GetFirstPlayer \{out = index}
			num_bass = [0 0 0 0 0 0 0 0]
			num_guitar = [0 0 0 0 0 0 0 0]
			begin
			GetPlayerInfo <index> part
			GetPlayerInfo <index> Band
			<team> = (<Band> - 1)
			if (<part> = guitar || <part> = bass)
				if (<part> = guitar)
					SetArrayElement arrayName = num_guitar index = <team> newValue = (<num_guitar> [<team>] + 1)
				elseif (<part> = bass)
					SetArrayElement arrayName = num_bass index = <team> newValue = (<num_bass> [<team>] + 1)
				endif
			endif
			GetNextPlayer player = <index> out = index
			repeat (<num_players>)
			<num_extra_bassists> = 0
			GetArraySize \{num_bass}
			<i> = 0
			begin
			if ((<num_bass> [<i>]) < (<num_bass> [(<i> + 1)]))
				<num_extra_bassists> = ((<num_bass> [(<i> + 1)]) - (<num_bass> [<i>]))
				<team> = (<i> + 1)
			elseif ((<num_bass> [<i>]) > (<num_bass> [(<i> + 1)]) && (((<num_bass> [(<i> + 1)]) > 0) || ((<num_guitar> [(<i> + 1)]) > 0)))
				<num_extra_bassists> = ((<num_bass> [<i>]) - (<num_bass> [(<i> + 1)]))
				<team> = <i>
			endif
			if (<num_extra_bassists> > 0)
				GetFirstPlayer
				begin
				GetPlayerInfo <player> Band
				if PlayerInfoEquals <player> Band = (<team> + 1)
					if PlayerInfoEquals <player> part = bass
						SetPlayerInfo <player> part = guitar
						<num_extra_bassists> = (<num_extra_bassists> - 1)
						SetArrayElement arrayName = num_bass index = <team> newValue = (<num_bass> [<team>] - 1)
						SetArrayElement arrayName = num_guitar index = <team> newValue = (<num_guitar> [<team>] + 1)
					endif
				endif
				if (<num_extra_bassists> <= 0)
					break
				endif
				GetNextPlayer player = <player>
				repeat (<num_players>)
			endif
			<i> = (<i> + 1)
			repeat (<array_size> - 1)
		endif
	endif
endscript

script update_ui_total_players 
	printf \{qs(0xdbe11d09)}
	GameMode_GetType
	if ScriptIsRunning \{bl_private_match_ui_timeout}
		killspawnedscript \{name = bl_private_match_ui_timeout}
	endif
	Change \{g_career_search = null}
	if (<type> = career)
		printf \{qs(0x810d64d1)}
		GetNumPlayersInGame \{local}
		if (<total_players> = <num_players>)
			wait \{5
				gameframes}
			if ($g_connection_loss_dialogue = 1)
				return
			endif
			FinalizeJoinProcessLocalOnly
		endif
	else
		get_local_players_in_game
		NetSessionFunc \{Obj = party
			func = get_party_members}
		GetArraySize <connections>
		if ((<array_size> = <num_local_players>) && (<array_size> = <total_players>))
			wait \{1
				second}
			if ($g_connection_loss_dialogue = 1)
				return
			endif
			FinalizeJoinProcessLocalOnly
		endif
	endif
	Change net_num_players = <total_players>
endscript

script net_msg_update_joining_ui 
	printf \{qs(0x1adf4bb7)}
	GameMode_GetType
	if ScriptIsRunning \{band_lobby_matchmaking_update_loop}
		killspawnedscript \{name = band_lobby_matchmaking_update_loop}
	endif
	TEMP_clear_upper_player_infos
	<player> = 1
	begin
	FormatText checksumname = musician_value 'musician%p' p = <player>
	SetPlayerInfo <player> band_member = <musician_value>
	<player> = (<player> + 1)
	repeat 4
	adjust_rest_of_on_stage_characters_and_instruments
	if (<type> = career)
		band_lobby_update_career_players
	else
		if ScreenElementExists \{id = band_lobby_desc_id}
			destroy_dialog_box
			band_lobby_desc_id :Obj_SpawnScriptNow \{band_lobby_display_final_matchmaking_players}
		endif
	endif
	adjust_rest_of_on_stage_characters
	persistent_band_refresh_changed_characters
	spawn_player_drop_listeners \{drop_player_script = band_lobby_drop_player
		end_game_script = band_lobby_end_game}
	if (<type> = career)
		if ScreenElementExists \{id = band_lobby_desc_id}
			RunScriptOnScreenElement \{id = band_lobby_desc_id
				band_lobby_watchdog_all_player_appearance_change}
		endif
	endif
	NetSessionFunc \{Obj = voice
		func = TurnTeamTalkOff}
	if IsHost
		start_dlc_songlist_sync
		SendStructure \{callback = start_dlc_songlist_sync
			data_to_send = {
				None
			}}
	endif
endscript

script start_dlc_songlist_sync 
	SonglistMatch \{func = send_local}
endscript
player_drop_in_setting_sync = 0

script party_is_full 
	NetSessionFunc \{Obj = party
		func = get_party_members}
	GetArraySize <connections>
	if (<array_size> >= 8)
		if NOT GotParam \{controller}
			return \{true}
		else
			i = 0
			begin
			if ((<connections> [<i>]).is_local = 1)
				if ((<connections> [<i>]).controller_index = <controller>)
					return \{false}
				endif
			endif
			<i> = (<i> + 1)
			repeat <array_size>
			return \{true}
		endif
	else
		return \{false}
	endif
endscript

script ps3_display_invites_received 
	NetSessionFunc \{func = DisplayAndAcceptInvites
		params = {
			callback = ps3_invite_callback
		}}
endscript

script ps3_invite_callback 
	printf \{qs(0xb8afcd4a)}
endscript

script print_net_ui_status 
	OnlineLobbyInterface :GetTags
	<player_slots_menu_id> :GetTags
	printstruct <...>
endscript

script print_current_net_prefs 
	NetOptions :Pref_Get \{name = game_modes}
	printstruct <...>
	NetOptions :Pref_Get \{name = ranked}
	printstruct <...>
endscript

script check_signin_wrapper 
	printstruct <...>
	if CheckForSignIn local controller controller_index = <device_num>
		NetSessionFunc \{func = showsigninui
			params = {
				convert_offline_to_guest
			}}
	else
		NetSessionFunc \{func = ShowSignInUI4Pane
			params = {
				online_only
			}}
	endif
	wait_for_blade_complete
	if CheckForSignIn controller_index = <device_num>
		printf \{qs(0x08ec2e8b)}
	else
		if IsXenonOrWinDX
			if CheckForSignIn local controller controller_index = <device_num>
				NetSessionFunc \{func = showsigninui
					params = {
						convert_offline_to_guest
					}}
			else
				NetSessionFunc \{func = ShowSignInUI4Pane
					params = {
						online_only
					}}
			endif
			wait_for_blade_complete
		endif
	endif
endscript

script debug_4player_signin 
	if IsXenonOrWinDX
		NetSessionFunc \{func = ShowSignInUI4Pane}
		wait_for_blade_complete
	endif
endscript

script print_player_net_info 
	printf \{qs(0x75bc108d)}
	i = 1
	begin
	FormatText checksumname = GamerTag 'gamertag_%i' i = (<i> - 1)
	name = $<GamerTag>
	DumpPlayerInfo <i>
	GetPlayerInfo <i> is_local_client
	GetPlayerInfo <i> net_id_first
	GetPlayerInfo <i> net_id_second
	GetPlayerInfo <i> net_obj_id
	GetPlayerInfo <i> part
	GetPlayerInfo <i> net_difficulty
	GetPlayerInfo <i> controller
	GetPlayerInfo <i> Band
	printf qs(0x8eca38c7) d = <is_local_client>
	printf qs(0xa5bccced) d = <net_id_first>
	printf qs(0x084465d1) d = <net_id_second>
	printf qs(0x5b7377e6) g = <name>
	printf qs(0xdd16850f) d = <net_obj_id>
	printf qs(0xb8cf5ed6) d = <Band>
	printf <part>
	printf <net_difficulty>
	printf <controller>
	i = (<i> + 1)
	repeat 8
endscript
