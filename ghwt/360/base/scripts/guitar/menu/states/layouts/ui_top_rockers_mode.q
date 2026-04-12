top_rockers_enabled = 0

script ui_init_top_rockers_mode 
	change \{top_rockers_enabled = 1}
endscript

script ui_create_top_rockers_mode 
	change \{rich_presence_context = presence_leaderboards}
	change lb_controller = ($primary_controller)
	make_menu_frontend \{screen = Guitarist
		title = qs("LEADERBOARDS")}
	if isXenon
		add_menu_frontend_item {
			text = qs("Xbox LIVE:")
			rgba = (($g_menu_colors).menu_subhead)
			not_focusable
		}
	else
		add_menu_frontend_item {
			text = qs("ONLINE:")
			rgba = (($g_menu_colors).menu_subhead)
			not_focusable
		}
	endif
	add_menu_frontend_item \{text = qs("SONGS")
		pad_choose_script = ui_leaderboard_group_select
		pad_choose_params = {
			group = song
		}}
	add_menu_frontend_item \{text = qs("CAREER")
		pad_choose_script = ui_leaderboard_group_select
		pad_choose_params = {
			group = career
		}}
	add_menu_frontend_item \{text = qs("ROCK RANK")
		pad_choose_script = ui_leaderboard_list_cash}
	add_menu_frontend_item {
		text = qs("LOCAL:")
		rgba = (($g_menu_colors).menu_subhead)
		not_focusable
	}
	add_menu_frontend_item \{text = qs("TOP ROCKERS")
		pad_choose_script = setup_top_rockers_single}
	menu_finish
endscript

script ui_destroy_top_rockers_mode 
	generic_ui_destroy
endscript

script ui_deinit_top_rockers_mode 
	change \{top_rockers_enabled = 0}
endscript
