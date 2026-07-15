
script ui_create_setlist_prompt 
	create_popup_warning_menu {
		title = qs("NOTICE")
		textblock = {
			text = qs("You can create sets from 1 to 6 songs long. Select the songs you want to play then press the START button when ready.")
		}
		options = [
			{
				func = setlist_prompt_continue
				func_params = {<...>}
				text = qs("CONTINUE")
			}
		]
		no_background
	}
	clean_up_user_control_helpers
	add_user_control_helper \{text = qs("SELECT")
		button = green
		z = 100000}
endscript

script ui_destroy_setlist_prompt 
	destroy_popup_warning_menu
endscript

script setlist_prompt_continue 
	RemoveParameter \{base_name}
	get_current_band_info
	SetGlobalTags <band_info> params = {first_quickplay_setlist = 0}
	ui_event_wait event = menu_replace data = {state = uistate_setlist <...>}
endscript
