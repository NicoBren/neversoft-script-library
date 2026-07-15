
script ui_init_music_store 
	music_store_init
endscript

script ui_create_music_store 
	create_music_store_menu
	add_music_store_item {
		text = qs("\LNEW ARRIVALS")
		choose_state = UIstate_music_store_newarrivals
		choose_state_data = {list = ($test_dlc_list)}
		additional_focus_script = music_store_preview_list
		additional_focus_params = {list = ($test_dlc_list)}
		additional_unfocus_script = music_store_end_preview_list
	}
	music_store_filter_list list = ($test_dlc_list) filter = type value = song
	add_music_store_item {
		text = qs("\LSONGS")
		choose_state = UIstate_music_store_songs
		choose_state_data = {list = <filtered_list>}
		additional_focus_script = music_store_preview_list
		additional_focus_params = {list = <filtered_list>}
		additional_unfocus_script = music_store_end_preview_list
	}
	music_store_filter_list list = ($test_dlc_list) filter = type value = pack
	add_music_store_item {
		text = qs("\LSPECIAL PACKS")
		choose_state = UIstate_music_store_specialpacks
		choose_state_data = {list = <filtered_list>}
		additional_focus_script = music_store_preview_list
		additional_focus_params = {list = <filtered_list>}
		additional_unfocus_script = music_store_end_preview_list
	}
	music_store_filter_list list = ($test_dlc_list) filter = type value = album
	add_music_store_item {
		text = qs("\LALBUMS")
		choose_state = UIstate_music_store_albums
		choose_state_data = {list = <filtered_list>}
		additional_focus_script = music_store_preview_list
		additional_focus_params = {list = <filtered_list>}
		additional_unfocus_script = music_store_end_preview_list
	}
	add_user_control_helper \{text = qs("\LSELECT")
		button = green
		z = 100000}
	add_user_control_helper \{text = qs("\LBACK")
		button = red
		z = 100000}
	if NOT GotParam \{selected_index}
		NetSessionFunc \{obj = motd
			func = get_demonware_motd
			params = {
				callback = music_store_motd_callback
			}}
		spawnscriptnow \{music_store_wipe_in_options}
		spawnscriptnow \{music_store_wipe_in_album_info}
	else
		spawnscriptnow \{music_store_fade_in_options}
	endif
endscript

script ui_destroy_music_store 
	destroy_music_store_menus
endscript

script ui_deinit_music_store 
	destroy_music_store
	music_store_deinit
endscript
