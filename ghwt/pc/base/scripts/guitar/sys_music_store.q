
script music_store_init 
	music_store_show_loading_screen
	cas_destroy_all_characters
	unload_songqpak
	SetPakManCurrentBlock \{map = zones
		pak = none
		block_scripts = 1}
	FlushDeferredDeletes
	if IsPs3
		VMHeap \{func = swap_out}
		VMHeap \{func = alloc_commerce}
		MemPushContext \{BottomUpHeap}
		MemInitHeap name = 'heap_musicstore' size = (512 * 1024) vram_size = (8 * 1024 * 1024)
		MemPopContext
	else
		MemPushContext \{heap_song}
		MemInitHeap name = 'heap_musicstore' size = (9 * 1024 * 1024)
		MemPopContext
	endif
	music_store_hide_loading_screen
endscript

script music_store_deinit 
	music_store_show_loading_screen
	FlushDeferredDeletes
	memdeleteheap \{name = heap_musicstore}
	if IsPs3
		memdeleteheap \{name = heap_musicstore_vram}
		VMHeap \{func = free_commerce}
		VMHeap \{func = swap_in}
	endif
	SetPakManCurrentBlock \{map = zones
		pak = z_soundcheck
		block_scripts = 1}
	music_store_hide_loading_screen
endscript

script music_store_show_loading_screen 
	if IsPs3
		DisplayLoadingScreen \{'boot_copyright_BG_1'
			spin3d_texture = 'load_wheel'
			spin_x = 877
			spin_y = 467
			scale = 0.055
			Speed = -2}
	endif
endscript

script music_store_hide_loading_screen 
	if IsPs3
		Hideloadingscreen
	endif
endscript
