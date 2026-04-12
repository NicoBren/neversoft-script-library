GH4_Download_Songs_Guitar = {
	prefix = 'download_guitar'
	num_tiers = 1
	tier1 = {
		title = qs("Downloaded songs")
		songs = [
		]
		defaultunlocked = 4
		level = load_z_Frathouse
	}
}
GH4_download_songlist = [
]
GH4_Download_Songs_Bass = {
	prefix = 'download_bass'
	num_tiers = 1
	tier1 = {
		title = qs("Downloaded songs")
		songs = [
		]
		defaultunlocked = 4
		level = load_z_Frathouse
	}
}
GH4_Download_Songs_Drums = {
	prefix = 'download_drums'
	num_tiers = 1
	tier1 = {
		title = qs("Downloaded songs")
		songs = [
		]
		defaultunlocked = 4
		level = load_z_Frathouse
	}
}
GH4_Download_Songs_Vocals = {
	prefix = 'download_vocals'
	num_tiers = 1
	tier1 = {
		title = qs("Downloaded songs")
		songs = [
		]
		defaultunlocked = 4
		level = load_z_Frathouse
	}
}
GH4_Download_Songs_Band = {
	prefix = 'download_band'
	num_tiers = 1
	tier1 = {
		title = qs("Downloaded songs")
		songs = [
		]
		defaultunlocked = 4
		level = load_z_Frathouse
	}
}

script scan_globaltag_downloads 
	printf \{qs("\Lscan_globaltag_downloads")}
	LockGlobalTags \{off}
	printstruct ($GH4_download_songlist)
	get_num_globaltag_sets
	if (<num_globaltag_sets> > 0)
		savegame = 0
		begin
		setup_setlisttags savegame = <savegame> SetList_Songs = GH4_Download_Songs_Guitar part = guitar songlist = GH4_download_songlist download = 1
		setup_setlisttags savegame = <savegame> SetList_Songs = GH4_Download_Songs_Bass part = Bass songlist = GH4_download_songlist download = 1
		setup_setlisttags savegame = <savegame> SetList_Songs = GH4_Download_Songs_Drums part = drum songlist = GH4_download_songlist download = 1
		setup_setlisttags savegame = <savegame> SetList_Songs = GH4_Download_Songs_Vocals part = Vocals songlist = GH4_download_songlist download = 1
		setup_setlisttags savegame = <savegame> SetList_Songs = GH4_Download_Songs_Band part = Band songlist = GH4_download_songlist download = 1
		setupsongtags savegame = <savegame> globaltag_checksum = <globaltag_checksum> part = 'guitar'
		setupsongtags savegame = <savegame> globaltag_checksum = <globaltag_checksum> part = 'bass'
		setupsongtags savegame = <savegame> globaltag_checksum = <globaltag_checksum> part = 'drum'
		setupsongtags savegame = <savegame> globaltag_checksum = <globaltag_checksum> part = 'vocals'
		setupsongtags savegame = <savegame> globaltag_checksum = <globaltag_checksum> part = 'band'
		<savegame> = (<savegame> + 1)
		repeat (<num_globaltag_sets>)
	endif
	LockGlobalTags
endscript
global_content_index_pak = 'none'
global_content_index_pak_language = 'none'

script Downloads_EnumContent controller = ($primary_controller)
	RemoveContentFiles playerid = <controller>
	Downloads_UnloadContent
	mark_unsafe_for_shutdown
	if EnumContentFiles download dofiles playerid = <controller>
		begin
		if EnumContentFilesFinished
			break
		else
			printf \{qs("\LWaiting for Download Contend Enumeration")}
			Wait \{1
				gameframe}
		endif
		repeat
	endif
	mark_safe_for_shutdown
	if IsEnumContentFilesDamaged
		destroy_popup_warning_menu
		create_popup_warning_menu \{create_popup_warning_menu
			textblock = {
				text = qs("A content package appears damaged or unreadable. Please re-download the content package.")
				Wait
				3
				seconds
			}
			menu_pos = (640.0, 490.0)
			options = [
				{
					func = {
						Downloads_Enumcontentfiles_Continue
					}
					text = qs("CONTINUE")
					scale = (1.0, 1.0)
				}
			]}
		change \{Downloads_Enumcontentfiles_Continue_Flag = 0}
		begin
		if ($Downloads_Enumcontentfiles_Continue_Flag = 1)
			break
		endif
		Wait \{1
			gameframe}
		repeat
	endif
	if ($shutdown_game_for_signin_change_flag = 1)
		return
	endif
	SetSearchAllContentFolders
	if GetLatestContentIndexFile
		printf \{qs("\LFound latest content index file:")}
		printstruct <...>
		mark_unsafe_for_shutdown
		EnableDuplicateSymbolWarning \{off}
		if NOT LoadPakAsync pak_name = <filename> heap = heap_downloads async = 1
			EnableDuplicateSymbolWarning
			mark_safe_for_shutdown
			DownloadContentLost
			SetSearchAllContentFolders \{off}
			return
		endif
		EnableDuplicateSymbolWarning
		change global_content_index_pak = <filename>
		Downloads_LoadLanguageContent <...>
		mark_safe_for_shutdown
	else
		printf \{qs("\LFound no latest content index file")}
	endif
	SetSearchAllContentFolders \{off}
	if ScriptExists \{Downloads_Startup}
		Downloads_Startup
	endif
	Downloads_PostEnumContent
endscript

script destroy_downloads_EnumContent 
	KillSpawnedScript \{name = Downloads_EnumContent}
	KillSpawnedScript \{name = boot_download_scan}
	Downloads_CloseContentFolder \{force = 1}
endscript

script Downloads_LoadLanguageContent 
	FormatText TextName = pakname '%s_text.pak' s = <stem>
	if English
		FormatText TextName = pakname '%s_text.pak' s = <stem>
	elseif French
		FormatText TextName = pakname '%s_text_f.pak' s = <stem>
	elseif Italian
		FormatText TextName = pakname '%s_text_i.pak' s = <stem>
	elseif German
		FormatText TextName = pakname '%s_text_g.pak' s = <stem>
	elseif Spanish
		FormatText TextName = pakname '%s_text_s.pak' s = <stem>
	endif
	GetContentFolderIndexFromFile <pakname>
	if (<device> = content)
		printf qs("\LDownload Language Content found %s") s = <pakname>
		mark_unsafe_for_shutdown
		EnableDuplicateSymbolWarning \{off}
		if NOT LoadPakAsync pak_name = <pakname> heap = heap_downloads async = 1
			EnableDuplicateSymbolWarning
			mark_safe_for_shutdown
			DownloadContentLost
			return
		endif
		EnableDuplicateSymbolWarning
		change global_content_index_pak_language = <pakname>
		mark_safe_for_shutdown
	else
		printf qs("\LDownload Language Content no found %s") s = <pakname>
	endif
endscript

script Downloads_PostEnumContent 
	scan_globaltag_downloads
endscript
Downloads_Enumcontentfiles_Continue_Flag = 0

script Downloads_Enumcontentfiles_Continue 
	change \{Downloads_Enumcontentfiles_Continue_Flag = 1}
endscript

script Downloads_UnloadContent 
	SetSearchAllContentFolders \{off}
	KillSpawnedScript \{name = Downloads_OpenContentFolder}
	change \{downloadcontentfolder_lock = 0}
	if ScriptExists \{Downloads_Shutdown}
		Downloads_Shutdown
	endif
	if NOT ($global_content_index_pak = 'none')
		UnloadPak ($global_content_index_pak)
		change \{global_content_index_pak = 'none'}
	endif
	if NOT ($global_content_index_pak_language = 'none')
		UnloadPak ($global_content_index_pak_language)
		change \{global_content_index_pak_language = 'none'}
	endif
endscript
downloadcontentfolder_lock = 0
downloadcontentfolder_index = -1
downloadcontentfolder_count = 0

script Downloads_OpenContentFolder 
	unpausespawnedscript \{Downloads_CloseContentFolder}
	mark_unsafe_for_shutdown
	begin
	if ($downloadcontentfolder_lock = 0)
		break
	endif
	if ($downloadcontentfolder_index = <content_index>)
		change downloadcontentfolder_count = ($downloadcontentfolder_count + 1)
		mark_safe_for_shutdown
		return \{true}
	endif
	Wait \{1
		gameframe}
	repeat
	change \{downloadcontentfolder_lock = 1}
	if NOT OpenContentFolder content_index = <content_index>
		mark_safe_for_shutdown
		return \{false}
	endif
	begin
	GetContentFolderState
	if (<contentfolderstate> = failed)
		change \{downloadcontentfolder_lock = 0}
		mark_safe_for_shutdown
		return \{false}
	endif
	if (<contentfolderstate> = opened)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	change downloadcontentfolder_count = ($downloadcontentfolder_count + 1)
	change downloadcontentfolder_index = <content_index>
	mark_safe_for_shutdown
	return \{true}
endscript

script Downloads_CloseContentFolder \{force = 0}
	mark_unsafe_for_shutdown
	if (<force> = 1)
		if ($downloadcontentfolder_index = -1)
			mark_safe_for_shutdown
			return
		endif
	endif
	if (<force> = 1)
		change \{downloadcontentfolder_count = 0}
	else
		change downloadcontentfolder_count = ($downloadcontentfolder_count - 1)
		if ($downloadcontentfolder_count > 0)
			mark_safe_for_shutdown
			return \{true}
		endif
	endif
	if (<force> = 1)
		content_index = ($downloadcontentfolder_index)
	else
		change \{downloadcontentfolder_index = -1}
	endif
	if NOT CloseContentFolder content_index = <content_index>
		change \{downloadcontentfolder_lock = 0}
		mark_safe_for_shutdown
		return \{false}
	endif
	begin
	GetContentFolderState
	if (<contentfolderstate> = free)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	change \{downloadcontentfolder_lock = 0}
	mark_safe_for_shutdown
	return \{true}
endscript

script find_instrument_index 
	return \{index = 0
		false}
endscript

script store_select_downloads 
	NetSessionFunc \{func = ShowMarketPlaceUI}
	wait_for_blade_complete
	Downloads_UnloadContent
endscript

script fmod_diskejected_event 
	printf \{qs("\Lfmod_diskejected_event")}
	DownloadContentLost
endscript

script DownloadContentLost 
	change \{is_changing_levels = 0}
	change \{practice_songpreview_changing = 0}
	printscriptinfo \{qs("DownloadContentLost")}
	spawnscriptnow \{noqbid
		DownloadContentLost_Spawned}
	KillSpawnedScript \{name = setlist_choose_song}
	KillSpawnedScript \{name = DownloadContentLost}
endscript

script DownloadContentLost_Spawned 
	if NOT ($shutdown_game_for_signin_change_flag = 0)
		return
	endif
	if ($respond_to_signin_changed = 0)
		return
	endif
	change \{respond_to_signin_changed = 0}
	printf \{qs("\LDownloadContentLost_Spawned")}
	disable_pause
	create_loading_screen \{no_bink}
	ui_event_block \{event = menu_back
		data = {
			state = UIstate_Null
		}}
	shutdown_game_for_signin_change
	RemoveContentFiles \{playerid = -1
		clear_cache}
	ui_event_block \{event = menu_change
		data = {
			state = uistate_signin_changed
			clear_previous_stack
		}}
	destroy_loading_screen \{force = 1}
	LaunchEvent \{type = unfocus
		target = root_window}
	create_downloadcontentlost_menu
	startrendering
	SetButtonEventMappings \{unblock_menu_input}
	printf \{qs("\LDownloadContentLost")}
endscript

script create_downloadcontentlost_menu 
	destroy_popup_warning_menu
	create_popup_warning_menu \{title = qs("CONTENT CHANGED")
		title_props = {
			scale = 1.0
		}
		textblock = {
			text = qs("The downloadable content has changed. As a result, the game has restarted.")
			pos = (640.0, 380.0)
		}
		menu_pos = (640.0, 490.0)
		options = [
			{
				func = {
					downloadcontentlost_reboot
				}
				text = qs("CONTINUE")
				scale = (1.0, 1.0)
			}
		]}
endscript

script downloadcontentlost_reboot 
	printf \{qs("\Ldownloadcontentlost_reboot")}
	destroy_downloadcontentlost_menu
	Wait \{5
		gameframes}
	ui_event \{event = menu_change
		data = {
			state = UIstate_boot_iis
			clear_previous_stack
		}}
	printf \{qs("\Ldownloadcontentlost_reboot end")}
endscript

script destroy_downloadcontentlost_menu 
	destroy_popup_warning_menu
endscript

script recreate_downloadcontentlost_menu 
	destroy_downloadcontentlost_menu
	create_downloadcontentlost_menu
endscript
net_checksum_packet = [
	none
	none
	none
	none
	none
	none
	none
	none
	none
	none
	none
	none
	none
	none
	none
	none
	none
	none
	none
	none
]
num_net_checksum_packet = 0
total_num_net_checksum_packet = 0
net_checksum_packet_for_host = 0
net_match_available_items_request_finished = 0
net_match_dlc_sync_finished = 0

script net_match_send_available_items 
	printf \{qs("\Lnet_match_send_available_items")}
	disable_pause
	change \{net_match_dlc_sync_finished = 0}
	if IsHost
		net_match_send_available_items_host
	else
		net_match_send_available_items_client
	endif
	change \{net_match_dlc_sync_finished = 1}
	printf \{qs("\Lnet_match_send_available_items end")}
endscript

script net_match_send_available_items_host 
	net_match_clear_available_items \{for_host = 1}
	SendStructure \{callback = net_match_download_items_send
		data_to_send = {
			for_host = 0
		}}
	GetNumRemoteConnections
	wait_for_net_match_available_items num_finished = <num_connections>
	net_match_calc_available_items
	net_match_download_items_send \{for_host = 1}
endscript

script net_match_send_available_items_client 
	wait_for_net_match_available_items
endscript

script net_match_clear_available_items 
	if NOT net_match_verify_host for_host = <for_host>
		return
	endif
	get_songlist_size
	song_count = 0
	begin
	get_songlist_checksum index = <song_count>
	if GlobalTagExists <song_checksum> noassert = 1
		SetGlobalTags <song_checksum> params = {available_on_other_client = 0}
	endif
	song_count = (<song_count> + 1)
	repeat <array_size>
	printf qs("\LLocal total songs = %i") i = <array_size>
	return \{true}
endscript

script net_match_set_available_items 
	get_songlist_size
	song_count = 0
	begin
	get_songlist_checksum index = <song_count>
	if GlobalTagExists <song_checksum> noassert = 1
		SetGlobalTags <song_checksum> params = {available_on_other_client = 1}
	endif
	song_count = (<song_count> + 1)
	repeat <array_size>
	printf qs("\LLocal total songs = %i") i = <array_size>
	return \{true}
endscript

script net_match_calc_available_items 
	printf \{qs("\Lnet_match_calc_available_items")}
	GetNumRemoteConnections
	get_songlist_size
	song_count = 0
	begin
	get_songlist_checksum index = <song_count>
	if GlobalTagExists <song_checksum> noassert = 1
		if is_song_downloaded song_checksum = <song_checksum>
			GetGlobalTags <song_checksum>
			if (<available_on_other_client> >= <num_connections>)
				SetGlobalTags <song_checksum> params = {available_on_other_client = 1}
			else
				SetGlobalTags <song_checksum> params = {available_on_other_client = 0}
			endif
		else
			SetGlobalTags <song_checksum> params = {available_on_other_client = 0}
		endif
	endif
	song_count = (<song_count> + 1)
	repeat <array_size>
	printf \{qs("\Lnet_match_calc_available_items end")}
	return \{true}
endscript

script clear_wait_for_net_match_available_items 
	change \{net_match_available_items_request_finished = 0}
endscript

script wait_for_net_match_available_items \{num_finished = 1}
	begin
	if ($net_match_available_items_request_finished = <num_finished>)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	clear_wait_for_net_match_available_items
endscript

script net_match_verify_host 
	if IsHost
		is_host = 1
	else
		is_host = 0
	endif
	if NOT (<is_host> = <for_host>)
		printf \{qs("\Lnet_match_download_items_send non-fatal shouldn't be on host")}
		printstruct <...>
		return \{false}
	else
		return \{true}
	endif
endscript

script net_match_download_items_send 
	printf \{qs("\Lnet_match_download_items_send")}
	if NOT net_match_verify_host for_host = <for_host>
		return
	endif
	if NOT IsHost
		net_match_clear_available_items \{for_host = 0}
	endif
	net_match_init_items for_host = (1 - <for_host>)
	get_songlist_size
	song_count = 0
	begin
	get_songlist_checksum index = <song_count>
	if GlobalTagExists <song_checksum> noassert = 1
		if IsHost
			GetGlobalTags <song_checksum>
			if (<available_on_other_client> = 1)
				net_match_add_item item = <song_checksum>
			endif
		else
			if is_song_downloaded song_checksum = <song_checksum>
				net_match_add_item item = <song_checksum>
			endif
		endif
	endif
	song_count = (<song_count> + 1)
	repeat <array_size>
	net_match_send_items
	Wait \{1
		gameframe}
	net_match_init_items for_host = (1 - <for_host>)
	net_match_send_items \{final = 1}
	printf \{qs("\Lnet_match_download_items_send end")}
endscript

script net_match_init_items 
	change \{num_net_checksum_packet = 0}
	change \{total_num_net_checksum_packet = 0}
	change net_checksum_packet_for_host = <for_host>
endscript

script net_match_add_item 
	SetArrayElement ArrayName = net_checksum_packet GlobalArray index = ($num_net_checksum_packet) newvalue = <item>
	change num_net_checksum_packet = ($num_net_checksum_packet + 1)
	if ($num_net_checksum_packet = 20)
		change total_num_net_checksum_packet = ($total_num_net_checksum_packet + 1)
		net_match_send_items
		change \{num_net_checksum_packet = 0}
	else
		return message_struct = <message_struct>
	endif
endscript

script net_match_send_items \{final = 0
		additional_info = {
		}}
	SendStructure callback = net_match_download_items_send_callback data_to_send = {net_items = ($net_checksum_packet)
		num_valid = ($num_net_checksum_packet)
		packet = ($total_num_net_checksum_packet)
		final = <final>
		for_host = ($net_checksum_packet_for_host)
		<additional_info>
		spawn_script_now}
endscript

script net_match_download_items_send_callback 
	printf \{qs("\Lnet_match_download_items_send_callback")}
	printstruct <...>
	if NOT net_match_verify_host for_host = <for_host>
		return
	endif
	if (<num_valid> > 0)
		index = 0
		begin
		if GlobalTagExists (<net_items> [<index>]) noassert = 1
			available_on_other_client = 0
			GetGlobalTags (<net_items> [<index>])
			available_on_other_client = (<available_on_other_client> + 1)
			SetGlobalTags (<net_items> [<index>]) params = {available_on_other_client = <available_on_other_client>}
		endif
		index = (<index> + 1)
		repeat <num_valid>
	endif
	if (<final> = 1)
		change net_match_available_items_request_finished = (($net_match_available_items_request_finished) + 1)
	endif
endscript
