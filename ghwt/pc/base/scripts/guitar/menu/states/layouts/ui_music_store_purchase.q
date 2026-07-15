
script ui_create_music_store_purchase 
	FormatText TextName = text qs("\LYOU ARE ABOUT TO PURCHASE ''%i'' BY %a.\nDO YOU ACCEPT THIS PURCHASE?") i = (<purchase_struct>.name) a = (<purchase_struct>.artist)
	add_music_store_purchase_dialogue {
		text = <text>
		price = (<purchase_struct>.price)
	}
	add_music_store_item \{text = qs("\LCANCEL")
		pad_choose_script = generic_event_back}
	add_music_store_item \{text = qs("\LACCEPT")}
	ui_music_store_purchase_add_info_items option_struct = <purchase_struct>
	spawnscriptnow \{music_store_fade_in_options}
	music_store_set_previous_history previous_history = <previous_history> new_entry = qs("\LPURCHASE")
	add_user_control_helper \{text = qs("\LSELECT")
		button = green
		z = 100000}
	add_user_control_helper \{text = qs("\LBACK")
		button = red
		z = 100000}
endscript

script ui_destroy_music_store_purchase 
	destroy_music_store_menus
endscript

script ui_music_store_purchase_add_info_items 
	RequireParams \{[
			option_struct
		]
		all}
	if ((<option_struct>.type) = song)
		music_store_set_song_info_items option_struct = <option_struct>
	elseif ((<option_struct>.type) = album)
		music_store_set_album_info_items option_struct = <option_struct>
	elseif ((<option_struct>.type) = pack)
		music_store_set_pack_info_items option_struct = <option_struct>
	else
		ScriptAssert qs("\Lui_music_store_purchase_add_info_items was given an invalid type for item %i") i = (<purchase_struct>.name) DoNotResolve
	endif
endscript
