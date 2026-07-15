
script ui_create_mainmenu_intro 
	spawnscriptnow \{ui_create_mainmenu_intro_spawned}
endscript

script ui_destroy_mainmenu_intro 
	if ScriptIsRunning \{ui_create_mainmenu_intro}
		KillSpawnedScript \{name = ui_create_mainmenu_intro}
		DestroyScreenElement \{id = current_menu}
	endif
endscript

script ui_mainmenu_intro_anim_out 
	startrendering \{reason = menu_transition}
endscript

script ui_create_mainmenu_intro_spawned 
	if ($invite_controller = -1)
		frontend_load_soundcheck \{loadingscreen}
		z_soundcheck_UIResetPos
		z_soundcheck_UIAnimationPre
		ui_event_wait_for_safe
		Wait \{0.1
			seconds}
		fadetoblack \{off
			no_wait}
		Wait \{0.5
			seconds}
		create_main_menu_elements
		z_soundcheck_UIAnimation
		SoundEvent \{event = Front_End_Main_Menu_Intro}
		SoundEvent \{event = Front_End_Main_Menu_Intro_Rears}
		Wait \{2.4
			seconds}
		ui_event_wait \{event = menu_replace
			data = {
				state = UIstate_mainmenu
			}}
	else
		ui_event_block \{event = menu_replace
			data = {
				state = UIstate_mainmenu
			}}
	endif
endscript
