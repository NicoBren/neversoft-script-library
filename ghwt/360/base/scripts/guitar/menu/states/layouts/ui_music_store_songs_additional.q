
script ui_create_music_store_songs_additional 
	if GotParam \{selected_index}
		do_not_animate = {do_not_animate}
	endif
	if GotParam \{pack_list}
		FormatText TextName = hist_text qs("\L%a SONGS") a = <pack_list>
		music_store_set_previous_history previous_history = <previous_history> new_entry = <hist_text> <do_not_animate>
	elseif GotParam \{album_list}
		FormatText TextName = hist_text qs("\L%a SONGS") a = <album_list>
		music_store_set_previous_history previous_history = <previous_history> new_entry = <hist_text> <do_not_animate>
	endif
	GetArraySize <list>
	if (<array_size> > 0)
		i = 0
		begin
		add_music_store_purchase_item {
			text = ((<list> [<i>]).name)
			price = ((<list> [<i>]).price)
		}
		i = (<i> + 1)
		repeat <array_size>
	else
		if NOT CD
			add_music_store_item \{text = qs("\LNO SONG LIST! FILL THIS OUT!")}
		endif
	endif
	spawnscriptnow \{music_store_fade_in_options}
	add_user_control_helper \{text = qs("\LBACK")
		button = red
		z = 100000}
endscript

script ui_destroy_music_store_songs_additional 
	destroy_music_store_menus
endscript
