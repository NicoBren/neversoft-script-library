music_store_visited = 0

script create_music_store_menu \{pad_back_script = generic_event_back}
	if ScreenElementExists \{id = gh_music_store}
		return
	endif
	if GotParam \{use_all_controllers}
		RemoveParameter \{exclusive_device}
		get_all_exclusive_devices
	endif
	update_ingame_controllers controller = <exclusive_device>
	if ScreenElementExists \{id = current_menu_anchor}
		DestroyScreenElement \{id = current_menu_anchor}
	endif
	music_store_determine_currency
	CreateScreenElement {
		id = gh_music_store
		parent = root_window
		type = DescInterface
		desc = 'gh_music_store'
		exclusive_device = <exclusive_device>
		credits_availible_currency_texture = <money_icon>
		credits_availible_text_text = <credits_text>
	}
	if gh_music_store :Desc_ResolveAlias \{name = alias_options_list_vmenu
			param = GH_Music_Store_menu}
		AssignAlias id = <GH_Music_Store_menu> alias = current_menu
		<GH_Music_Store_menu> :SetTags {total_length = 0}
	else
		ScriptAssert \{qs("\LGH_Music_Store was unable to create current_menu alias")}
	endif
	if gh_music_store :Desc_ResolveAlias \{name = alias_menu_history_hmenu
			param = GH_Music_Store_history_menu}
		CreateScreenElement {
			parent = <GH_Music_Store_history_menu>
			type = TextBlockElement
			text = qs("MAIN")
			font = fontgrid_text_a3
			dims = (0.0, 26.0)
			fit_height = `scale down if larger`
			fit_width = `expand dims`
			rgba = [0 0 0 255]
			internal_just = [left , top]
			z_priority = 50
		}
		main_id = <id>
		GetScreenElementDims id = <main_id>
		CreateScreenElement {
			parent = <GH_Music_Store_history_menu>
			type = WindowElement
			dims = (<width> * (1.0, 0.0) + <Height> * (0.0, 1.0))
		}
		SetScreenElementProps id = <main_id> parent = <id> pos = (0.0, 0.0) just = [left , top]
		spawnscriptnow music_store_animate_main_history params = {id = <main_id>}
	else
		ScriptAssert \{qs("\LGH_Music_Store was unable to create GH_Music_Store_history_menu alias")}
	endif
	add_generic_menu_up_down_sound_handlers
	if GotParam \{pad_back_script}
		SetScreenElementProps {
			id = current_menu
			event_handlers = [
				{pad_back generic_menu_pad_back_sound}
				{pad_back generic_blocking_execute_script params = {pad_script = <pad_back_script> pad_params = {container_id = <id> <pad_back_params>}}}
			]
			replace_handlers
		}
	endif
	if GotParam \{pad_option2_script}
		SetScreenElementProps {
			id = current_menu
			event_handlers = [
				{pad_option2 ui_menu_select_sfx}
				{pad_option2 generic_blocking_execute_script params = {pad_script = <pad_option2_script> pad_params = {container_id = <id> <pad_option2_params>}}}
			]
			replace_handlers
		}
	endif
	gh_music_store :SetTags \{sort_index = 0}
	change \{music_store_visited = 1}
endscript

script add_music_store_item \{parent = current_menu}
	if GotParam \{text}
		StringLength string = <text>
		if (<str_len> >= 25)
			StringNCopy string = <text> length = 24
			text = (<new_string> + qs("..."))
		endif
	endif
	CreateScreenElement {
		parent = <parent>
		type = DescInterface
		desc = 'gh_music_store_item'
		options_list_item_text_text = <text>
		autoSizeDims = true
	}
	if GotParam \{choose_state}
		pad_choose_script = ui_event_block
		pad_choose_params = {event = menu_change data = {state = <choose_state> <choose_state_data> container_id = <id>}}
	endif
	if GotParam \{replace_state}
		pad_choose_script = ui_event_block
		pad_choose_params = {event = menu_replace data = {state = <replace_state> <replace_state_data> container_id = <id>}}
	endif
	SetScreenElementProps {
		id = <id>
		event_handlers = [
			{focus music_store_item_focus params = {id = <id> additional_focus_script = <additional_focus_script> additional_focus_params = <additional_focus_params>}}
			{unfocus music_store_item_unfocus params = {id = <id> additional_unfocus_script = <additional_unfocus_script> additional_unfocus_params = <additional_unfocus_params>}}
		]
	}
	if GotParam \{pad_choose_script}
		SetScreenElementProps {
			id = <id>
			event_handlers = [
				{pad_choose ui_menu_select_sfx}
				{pad_choose music_store_item_select_anim params = {id = <id>}}
				{pad_choose generic_blocking_execute_script params = {pad_script = <pad_choose_script> pad_params = {container_id = <id> <pad_choose_params>}}}
			]
		}
	endif
	<parent> :GetSingleTag total_length
	if GotParam \{total_length}
		total_length = (<total_length> + 40)
		<parent> :SetTags {total_length = <total_length>}
		if (<total_length> > 310)
			music_store_turn_on_arrows
		endif
	endif
endscript

script add_music_store_purchase_item \{parent = current_menu}
	if GotParam \{text}
		StringLength string = <text>
		if (<str_len> >= 25)
			StringNCopy string = <text> length = 24
			text = (<new_string> + qs("..."))
		endif
	endif
	music_store_determine_currency
	if GotParam \{price}
		FormatText TextName = price_text qs("\L%p") p = <price>
	endif
	CreateScreenElement {
		parent = <parent>
		type = DescInterface
		desc = 'gh_music_store_purchase_item'
		options_list_item_money_texture = <money_icon>
		options_list_item_price_text = <price_text>
		options_list_item_text_text = <text>
		autoSizeDims = true
	}
	if GotParam \{choose_state}
		pad_choose_script = ui_event_block
		pad_choose_params = {event = menu_change data = {state = <choose_state> <choose_state_data> container_id = <id>}}
	endif
	if GotParam \{replace_state}
		pad_choose_script = ui_event_block
		pad_choose_params = {event = menu_replace data = {state = <replace_state> <replace_state_data> container_id = <id>}}
	endif
	SetScreenElementProps {
		id = <id>
		event_handlers = [
			{focus music_store_item_focus params = {id = <id> additional_focus_script = <additional_focus_script> additional_focus_params = <additional_focus_params>}}
			{unfocus music_store_item_unfocus params = {id = <id> additional_unfocus_script = <additional_unfocus_script> additional_unfocus_params = <additional_unfocus_params>}}
		]
	}
	if GotParam \{pad_choose_script}
		SetScreenElementProps {
			id = <id>
			event_handlers = [
				{pad_choose ui_menu_select_sfx}
				{pad_choose music_store_item_select_anim params = {id = <id>}}
				{pad_choose generic_blocking_execute_script params = {pad_script = <pad_choose_script> pad_params = {container_id = <id> <pad_choose_params>}}}
			]
		}
	endif
	<parent> :GetSingleTag total_length
	if GotParam \{total_length}
		total_length = (<total_length> + 40)
		<parent> :SetTags {total_length = <total_length>}
		if (<total_length> > 310)
			music_store_turn_on_arrows
		endif
	endif
endscript

script add_music_store_purchase_dialogue \{parent = current_menu}
	music_store_determine_currency
	if GotParam \{price}
		FormatText TextName = price_text qs("\L%p") p = <price>
	endif
	CreateScreenElement {
		parent = <parent>
		type = DescInterface
		desc = 'gh_music_store_purchase_dialogue'
		options_list_item_text_text = <text>
		options_list_purchase_item_options_list_item_money_texture = <money_icon>
		options_list_purchase_item_options_list_item_price_text = <price_text>
		autoSizeDims = true
		not_focusable
	}
	<parent> :GetSingleTag total_length
	if GotParam \{total_length}
		total_length = (<total_length> + 40)
		<parent> :SetTags {total_length = <total_length>}
		if (<total_length> > 310)
			music_store_turn_on_arrows
		endif
	endif
endscript

script destroy_music_store 
	if ScreenElementExists \{id = gh_music_store}
		DestroyScreenElement \{id = gh_music_store}
	endif
endscript

script destroy_music_store_menus 
	music_store_clear_options
	music_store_clear_sort_info
	music_store_clear_history
	if NOT GotParam \{preserve_album_info}
		music_store_clear_album_info
	endif
	music_store_turn_off_arrows
	clean_up_user_control_helpers
endscript

script music_store_clear_options 
	if ScreenElementExists \{id = current_menu}
		DestroyScreenElement \{id = current_menu
			preserve_parent}
		current_menu :SetTags \{total_length = 0}
	endif
endscript

script music_store_turn_on_arrows 
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{arrows_alpha = 0.5}
	endif
endscript

script music_store_turn_off_arrows 
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{arrows_alpha = 0.0}
	endif
endscript

script music_store_add_history_item 
	RequireParams \{[
			text
		]
		all}
	if GotParam \{text}
		StringLength string = <text>
		if (<str_len> >= 25)
			StringNCopy string = <text> length = 24
			text = (<new_string> + qs("..."))
		endif
	endif
	if ScreenElementExists \{id = gh_music_store}
		if gh_music_store :Desc_ResolveAlias \{name = alias_menu_history_hmenu
				param = GH_Music_Store_history_menu}
			CreateScreenElement {
				parent = <GH_Music_Store_history_menu>
				type = TextBlockElement
				text = qs("\L>")
				font = fontgrid_text_a3
				dims = (15.0, 26.0)
				fit_height = `scale down if larger`
				fit_width = `expand dims`
				rgba = [0 0 0 255]
				internal_just = [left , top]
				just = [left , center]
				pos_anchor = [left , center]
				z_priority = 50
			}
			CreateScreenElement {
				parent = <GH_Music_Store_history_menu>
				type = TextBlockElement
				pos = (0.0, 0.0)
				text = <text>
				font = fontgrid_text_a3
				dims = (0.0, 26.0)
				fit_height = `scale down if larger`
				fit_width = `expand dims`
				rgba = [0 0 0 255]
				internal_just = [left , top]
				just = [left , center]
				pos_anchor = [left , center]
				z_priority = 50
			}
			if GotParam \{animate_in}
				hist_id = <id>
				GetScreenElementDims id = <hist_id>
				dims = (<width> * (1.0, 0.0) + <Height> * (0.0, 1.0))
				CreateScreenElement {
					pos = (0.0, 0.0)
					parent = <GH_Music_Store_history_menu>
					type = WindowElement
					dims = (0.0, 26.0)
					just = [left , center]
					pos_anchor = [left , center]
				}
				SetScreenElementProps id = <hist_id> parent = <id> pos = (0.0, 0.0) just = [left , center] pos_anchor = [left , center]
				SetScreenElementProps id = <id> dims = <dims>
				spawnscriptnow music_store_animate_new_history params = {id = <hist_id> width = <width>}
			endif
		else
			ScriptAssert \{qs("\Lmusic_store_add_history_item was unable to create GH_Music_Store_history_menu alias")}
		endif
	endif
endscript

script music_store_clear_history 
	if ScreenElementExists \{id = gh_music_store}
		if gh_music_store :Desc_ResolveAlias \{name = alias_menu_history_hmenu
				param = GH_Music_Store_history_menu}
			DestroyScreenElement id = <GH_Music_Store_history_menu> preserve_parent
			CreateScreenElement {
				parent = <GH_Music_Store_history_menu>
				type = TextBlockElement
				text = qs("MAIN")
				font = fontgrid_text_a3
				dims = (0.0, 26.0)
				fit_height = `scale down if larger`
				fit_width = `expand dims`
				rgba = [0 0 0 255]
				internal_just = [left , top]
				z_priority = 50
			}
		else
			ScriptAssert \{qs("\Lmusic_store_clear_history was unable to create GH_Music_Store_history_menu alias")}
		endif
	endif
endscript

script music_store_add_album_info_item 
	RequireParams \{[
			text
		]
		all}
	if ScreenElementExists \{id = gh_music_store}
		if gh_music_store :Desc_ResolveAlias \{name = alias_title_info_menu
				param = GH_Music_Store_album_info_menu}
			CreateScreenElement {
				parent = <GH_Music_Store_album_info_menu>
				type = TextBlockElement
				text = <text>
				font = fontgrid_text_a3
				dims = (390.0, 28.0)
				fit_height = `scale down if larger`
				fit_width = `expand dims`
				rgba = [220 122 5 200]
				internal_just = [center , center]
				z_priority = 50
			}
			item_id = <id>
			GetScreenElementDims id = <item_id>
			if (<width> > 390)
				dims = (<width> * (1.0, 0.0) + <Height> * (0.0, 1.0))
				CreateScreenElement {
					parent = <GH_Music_Store_album_info_menu>
					type = ContainerElement
					dims = (390.0, 28.0)
					just = [left , center]
				}
				CreateScreenElement {
					parent = <id>
					type = ContainerElement
					dims = (390.0, 28.0)
					just = [left , top]
				}
				ticker_id = <id>
				text = (qs("           ") + <text>)
				SetScreenElementProps id = <item_id> parent = <ticker_id> pos_anchor = [left , center] just = [left , center] pos = (0.0, 0.0) internal_just = [left , center] text = <text>
				GetScreenElementDims id = <item_id>
				new_dims = (<width> * (1.0, 0.0) + <Height> * (0.0, 1.0))
				CreateScreenElement {
					parent = <ticker_id>
					type = TextBlockElement
					text = <text>
					font = fontgrid_text_a3
					dims = <new_dims>
					fit_height = `scale down if larger`
					fit_width = `expand dims`
					rgba = [220 122 5 200]
					internal_just = [center , center]
					z_priority = 50
					just = [left , center]
					pos_anchor = [left , center]
					internal_just = [left , center]
					pos = (<width> * (1.0, 0.0))
				}
				spawnscriptnow music_store_scroll_album_info params = {id = <ticker_id> width = <width>}
			endif
		else
			ScriptAssert \{qs("\Lmusic_store_add_album_info_item was unable to create GH_Music_Store_history_menu alias")}
		endif
	endif
endscript

script music_store_scroll_album_info 
	RequireParams \{[
			id
			width
		]
		all}
	SetSpawnInstanceLimits \{max = 1
		management = kill_oldest}
	time = (<width> * 0.01)
	begin
	if ScreenElementExists id = <id>
		new_pos = (<width> * (-1.0, 0.0))
		<id> :SE_SetProps pos = {relative <new_pos>} time = <time>
	endif
	Wait <time> seconds
	if ScreenElementExists id = <id>
		<id> :SE_SetProps pos = (0.0, 0.0)
	endif
	repeat
endscript

script music_store_clear_album_info 
	if ScriptIsRunning \{music_store_scroll_album_info}
		KillSpawnedScript \{name = music_store_scroll_album_info}
	endif
	if ScreenElementExists \{id = gh_music_store}
		if gh_music_store :Desc_ResolveAlias \{name = alias_title_info_menu
				param = GH_Music_Store_album_info_menu}
			DestroyScreenElement id = <GH_Music_Store_album_info_menu> preserve_parent
		else
			ScriptAssert \{qs("\Lmusic_store_clear_album_info was unable to create GH_Music_Store_history_menu alias")}
		endif
	endif
endscript

script music_store_add_sort_info_item 
	RequireParams \{[
			text
		]
		all}
	if NOT GotParam \{focused}
		alpha = 0.5
	endif
	if ScreenElementExists \{id = gh_music_store}
		if gh_music_store :Desc_ResolveAlias \{name = alias_sort_info_hmenu
				param = GH_Music_Store_sort_info_menu}
			CreateScreenElement {
				parent = <GH_Music_Store_sort_info_menu>
				type = TextBlockElement
				text = <text>
				font = fontgrid_text_a3
				dims = (0.0, 32.0)
				fit_height = `scale down if larger`
				fit_width = `expand dims`
				rgba = [220 122 5 200]
				internal_just = [left , center]
				z_priority = 50
				alpha = <alpha>
			}
		else
			ScriptAssert \{qs("\Lmusic_store_add_sort_info_item was unable to create alias_sort_info_hmenu alias")}
		endif
	endif
endscript

script music_store_add_sort_info 
	RequireParams \{[
			state_list
		]
		all}
	SetSpawnInstanceLimits \{max = 1
		management = kill_oldest}
	music_store_clear_sort_info
	if ScreenElementExists \{id = current_menu}
		SetScreenElementProps {
			id = current_menu
			event_handlers = [
				{pad_option2 music_store_rotate_sort params = {state_list = <state_list> previous_history = <previous_history> list = <list>}}
			]
			replace_handlers
		}
	endif
	add_user_control_helper \{text = qs("\LSORT")
		button = Yellow
		z = 100000}
	if ScreenElementExists \{id = gh_music_store}
		if gh_music_store :Desc_ResolveAlias \{name = alias_sort_info_hmenu
				param = GH_Music_Store_sort_info_menu}
			<GH_Music_Store_sort_info_menu> :SE_SetProps alpha = 0.0
			music_store_add_all_sort_items state_list = <state_list>
			<GH_Music_Store_sort_info_menu> :SE_SetProps alpha = 1.0 time = 0.2
		endif
	endif
endscript

script music_store_clear_sort_info 
	if ScreenElementExists \{id = current_menu}
		SetScreenElementProps \{id = current_menu
			event_handlers = [
				{
					pad_option2
					nullscript
				}
			]
			replace_handlers}
	endif
	music_store_clear_sort_info_menu
endscript

script music_store_clear_sort_info_menu 
	if ScreenElementExists \{id = gh_music_store}
		if gh_music_store :Desc_ResolveAlias \{name = alias_sort_info_hmenu
				param = GH_Music_Store_sort_info_menu}
			DestroyScreenElement id = <GH_Music_Store_sort_info_menu> preserve_parent
		else
			ScriptAssert \{qs("\Lmusic_store_clear_sort_info was unable to create alias_sort_info_hmenu alias")}
		endif
	endif
endscript

script music_store_motd_callback 
	if GotParam \{motd_text}
		change \{retrieved_message_of_the_day = 1}
		change message_of_the_day = <motd_text>
	endif
	if GotParam \{success}
		if (<success> = success)
			if GlobalExists \{name = motd_subject}
				music_store_set_motd text = ($motd_subject)
				return
			endif
		endif
	endif
	music_store_set_motd \{text = qs("\LCheck out NEW ARRIVALS for recently added downloadable content.")}
endscript

script music_store_set_motd 
	RequireParams \{[
			text
		]
		all}
	if ScreenElementExists \{id = gh_music_store}
		if (($music_store_visited) = 0)
			rgba = [224 224 224 255]
		else
			rgba = [220 122 5 200]
		endif
		CreateScreenElement {
			id = temp_motd_block
			parent = root_window
			type = TextBlockElement
			fit_width = qs("wrap")
			fit_height = qs("expand dims")
			text = <text>
			dims = (1025.0, 2000.0)
			just = [left , top]
			alpha = 0.0
			font = fontgrid_text_a3
			internal_just = [left , top]
		}
		GetScreenElementChildren \{id = temp_motd_block}
		if GotParam \{children}
			GetArraySize <children>
			if (<array_size> > 0)
				if gh_music_store :Desc_ResolveAlias \{name = alias_motd_text_1
						param = GH_Music_Store_motd_1}
					if gh_music_store :Desc_ResolveAlias \{name = alias_motd_text_2
							param = GH_Music_Store_motd_2}
						text_params = {
							type = TextBlockElement
							dims = (0.0, 32.0)
							just = [0.0 , 0.0]
							pos_anchor = [-1.0 , -1.0]
							z_priority = 6
							font = fontgrid_text_a3
							fit_width = `expand dims`
							fit_height = `scale down if larger`
							internal_just = [-1.0 , -1.0]
							rgba = <rgba>
						}
						i = 0
						begin
						if music_store_get_screen_element_text id = (<children> [<i>])
							CreateScreenElement {
								parent = <GH_Music_Store_motd_1>
								<text_params>
								text = (<text> + qs("\L "))
							}
							CreateScreenElement {
								parent = <GH_Music_Store_motd_2>
								<text_params>
								text = (<text> + qs("\L "))
							}
						endif
						i = (<i> + 1)
						repeat <array_size>
						CreateScreenElement {
							parent = <GH_Music_Store_motd_1>
							<text_params>
							text = qs("\L                 ")
						}
						CreateScreenElement {
							parent = <GH_Music_Store_motd_2>
							<text_params>
							text = qs("\L                 ")
						}
						GetScreenElementDims id = <GH_Music_Store_motd_1>
						if (<width> > 1025)
							new_pos = (<width> * (1.0, 0.0))
							gh_music_store :SE_SetProps motd_text_2_pos = {relative <new_pos>}
							spawnscriptnow music_store_scroll_motd params = {width = <width>}
						else
							gh_music_store :SE_SetProps \{motd_text_1_internal_just = [
									center
									center
								]
								motd_text_2_alpha = 0.0}
						endif
					else
						ScriptAssert \{qs("\Lmusic_store_set_motd was unable to create alias_motd_text_2 alias")}
					endif
				else
					ScriptAssert \{qs("\Lmusic_store_set_motd was unable to create alias_motd_text_1 alias")}
				endif
			endif
		endif
		if ScreenElementExists \{id = temp_motd_block}
			DestroyScreenElement \{id = temp_motd_block}
		endif
	endif
endscript

script music_store_get_screen_element_text 
	RequireParams \{[
			id
		]
		all}
	if ScreenElementExists id = <id>
		GetScreenElementProps id = <id>
		return true text = <text>
	else
		return \{false}
	endif
endscript

script music_store_turn_on_preview_bar 
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{preview_bar_alpha = 1.0}
	endif
endscript

script music_store_turn_off_preview_bar 
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{preview_bar_alpha = 0.0}
	endif
endscript

script music_store_turn_set_preview_bar 
	RequireParams \{[
			Progress
		]
		all}
	if (<Progress> < 0)
		Progress = 0
	endif
	if (<Progress> > 1)
		Progress = 1
	endif
	progress_scale = (<Progress> * (1.0, 0.0) + (0.0, 1.0))
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps preview_bar_fill_scale = <progress_scale>
	endif
endscript

script music_store_turn_on_loading 
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{loading_alpha = 1.0}
		spawnscriptnow \{music_store_animate_loading}
	endif
endscript

script music_store_turn_off_loading 
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{loading_alpha = 0.0}
		if ScriptIsRunning \{music_store_animate_loading}
			KillSpawnedScript \{name = music_store_animate_loading}
		endif
	endif
endscript

script music_store_animate_loading 
	begin
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{loading_rot_angle = 0}
		gh_music_store :SE_SetProps \{loading_rot_angle = 360
			time = 1.5}
	endif
	Wait \{2
		seconds}
	repeat
endscript

script music_store_turn_on_current_credits 
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{credits_availible_alpha = 1.0}
	endif
endscript

script music_store_turn_off_current_credits 
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{credits_availible_alpha = 0.0}
	endif
endscript

script music_store_item_focus 
	if ScreenElementExists id = <id>
		<id> :SE_SetProps options_list_item_point_alpha = 1.0
		<id> :SE_SetProps options_list_item_alpha = 1.0
	endif
	if GotParam \{additional_focus_script}
		<additional_focus_script> <additional_focus_params>
	endif
endscript

script music_store_item_unfocus 
	if ScreenElementExists id = <id>
		<id> :SE_SetProps options_list_item_point_alpha = 0.0
		<id> :SE_SetProps options_list_item_alpha = 0.6
	endif
	if GotParam \{additional_unfocus_script}
		<additional_unfocus_script> <additional_unfocus_params>
	endif
endscript

script music_store_item_select_anim 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	change \{generic_menu_block_input = 1}
	GetScreenElementChildren id = <id>
	GetArraySize <children>
	if (<array_size> > 0)
		menu_item_id = (<children> [0])
	endif
	GetScreenElementPosition id = <menu_item_id>
	newscreenlementpos = (<screenelementpos> + (20.0, 0.0))
	if ScreenElementExists id = <menu_item_id>
		SetScreenElementProps {id = <menu_item_id> pos = <newscreenlementpos> time = 0.1}
	else
		change \{generic_menu_block_input = 0}
		return
	endif
	Wait \{0.1
		seconds}
	if ScreenElementExists id = <menu_item_id>
		SetScreenElementProps {id = <menu_item_id> pos = <screenelementpos> time = 0.1}
	else
		change \{generic_menu_block_input = 0}
		return
	endif
	Wait \{0.11
		seconds}
	change \{generic_menu_block_input = 0}
endscript

script music_store_wipe_in_options 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	change \{generic_menu_block_input = 1}
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{options_list_smenu_alpha = 0.0}
		gh_music_store :SE_SetProps \{options_list_patch_scale = (0.0, 0.95)}
		gh_music_store :SE_SetProps \{options_list_patch_scale = (0.9, 0.95)
			time = 0.2
			Anim = gentle}
	endif
	Wait \{0.25
		seconds}
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{options_list_smenu_alpha = 1.0}
	endif
	if ScreenElementExists \{id = current_menu}
		GetScreenElementChildren \{id = current_menu}
		GetArraySize <children>
		if (<array_size> > 8)
			array_size = 8
		endif
		if (<array_size> > 0)
			if (<array_size> > 1)
				i = 1
				begin
				if ScreenElementExists id = (<children> [<i>])
					SetScreenElementProps {id = (<children> [<i>]) alpha = 0.0}
				endif
				i = (<i> + 1)
				repeat (<array_size> -1)
			endif
			if ScreenElementExists id = (<children> [0])
				SetScreenElementProps {
					id = (<children> [0])
					options_list_item_pos = {relative (-550.0, 0.0)}
				}
				SetScreenElementProps {
					id = (<children> [0])
					options_list_item_pos = {relative (550.0, 0.0)}
					time = 0.1
				}
				Wait \{0.1
					seconds}
			endif
			if (<array_size> > 1)
				i = 1
				begin
				if ScreenElementExists id = (<children> [<i>])
					SetScreenElementProps {id = (<children> [<i>]) alpha = 1.0 time = 0.1}
					Wait \{0.1
						seconds}
				endif
				i = (<i> + 1)
				repeat (<array_size> -1)
			endif
		endif
	endif
	change \{generic_menu_block_input = 0}
endscript

script music_store_wipe_in_album_info 
	SetSpawnInstanceLimits \{max = 1
		management = kill_oldest}
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{title_info_menu_alpha = 0.0}
		gh_music_store :SE_SetProps \{title_info_bg_scale = (0.0, 0.9)}
		gh_music_store :SE_SetProps \{title_info_bg_scale = (1.0, 0.9)
			time = 0.2
			Anim = gentle}
	endif
	Wait \{0.25
		seconds}
	music_store_fade_in_album_info
endscript

script music_store_fade_in_album_info 
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{title_info_menu_alpha = 1.0
			time = 0.15
			Anim = gentle}
	endif
endscript

script music_store_fade_out_album_info 
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{title_info_menu_alpha = 0.0
			time = 0.1
			Anim = gentle}
	endif
endscript

script music_store_scroll_motd 
	RequireParams \{[
			width
		]
		all}
	SetSpawnInstanceLimits \{max = 1
		management = kill_oldest}
	time = (<width> * 0.003)
	begin
	if ScreenElementExists \{id = gh_music_store}
		new_pos = (<width> * (-1.0, 0.0))
		gh_music_store :SE_SetProps motd_text_pos = {relative <new_pos>} time = <time>
	endif
	Wait <time> seconds
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{motd_text_pos = (0.0, 0.0)}
	endif
	repeat
endscript

script music_store_set_previous_history 
	RequireParams \{[
			previous_history
			new_entry
		]
		all}
	GetArraySize <previous_history>
	if (<array_size> > 0)
		i = 0
		begin
		music_store_add_history_item text = (<previous_history> [<i>])
		i = (<i> + 1)
		repeat <array_size>
	endif
	if GotParam \{do_not_animate}
		music_store_add_history_item text = <new_entry>
	else
		music_store_add_history_item text = <new_entry> animate_in
	endif
	AddArrayElement array = <previous_history> element = <new_entry>
	return previous_history = <array>
endscript

script music_store_change_album_cover 
	RequireParams \{[
			texture
		]
		all}
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps large_album_cover_bg_texture = <texture>
	endif
	spawnscriptnow music_store_change_album_cover_anim params = {texture = <texture>}
endscript

script music_store_change_album_cover_anim 
	SetSpawnInstanceLimits \{max = 1
		management = kill_oldest}
	RequireParams \{[
			texture
		]
		all}
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps new_album_cover_image_z_priority = 30 current_album_cover_image_z_priority = 100 new_album_cover_image_texture = <texture>
		gh_music_store :SE_SetProps \{new_album_cover_pos = (-100.0, 0.0)
			current_album_cover_pos = (100.0, 0.0)
			time = 0.2
			Anim = gentle}
	endif
	Wait \{0.25
		seconds}
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps \{new_album_cover_image_z_priority = 100
			current_album_cover_image_z_priority = 30}
		gh_music_store :SE_SetProps \{new_album_cover_pos = (0.0, 0.0)
			current_album_cover_pos = (0.0, 0.0)
			time = 0.2
			Anim = gentle}
	endif
	Wait \{0.25
		seconds}
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SE_SetProps new_album_cover_image_z_priority = 30 current_album_cover_image_z_priority = 100 current_album_cover_image_texture = <texture>
	endif
endscript

script music_store_fade_in_options 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	change \{generic_menu_block_input = 1}
	if ScreenElementExists \{id = current_menu}
		GetScreenElementChildren \{id = current_menu}
		GetArraySize <children>
		if (<array_size> > 1)
			if (<array_size> > 7)
				array_size = 7
			endif
			i = 1
			begin
			if ScreenElementExists id = (<children> [<i>])
				SetScreenElementProps {id = (<children> [<i>]) alpha = 0.0}
			endif
			i = (<i> + 1)
			repeat (<array_size> -1)
			i = 1
			begin
			if ScreenElementExists id = (<children> [<i>])
				SetScreenElementProps {id = (<children> [<i>]) alpha = 1.0 time = 0.1}
				Wait \{0.11
					seconds}
			endif
			i = (<i> + 1)
			repeat (<array_size> -1)
		endif
	else
		return
	endif
	change \{generic_menu_block_input = 0}
endscript

script music_store_animate_main_history 
	if ScreenElementExists id = <id>
		<id> :SE_SetProps pos = {relative (0.0, 40.0)}
		<id> :SE_SetProps pos = {relative (0.0, -40.0)} time = 0.2
	else
		return
	endif
endscript

script music_store_animate_new_history 
	if ScreenElementExists id = <id>
		GetScreenElementPosition id = <id>
		new_relative_pos = (<width> * (-1.0, 0.0))
		<id> :SE_SetProps pos = {relative <new_relative_pos>}
		<id> :SE_SetProps pos = {relative (-1 * <new_relative_pos>)} time = 0.2
	endif
endscript

script music_store_rotate_sort 
	RequireParams \{[
			state_list
			list
		]
		all}
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	gh_music_store :GetSingleTag \{sort_index}
	sort_index = (<sort_index> + 1)
	GetArraySize <state_list>
	if (<sort_index> >= <array_size>)
		sort_index = 0
	endif
	gh_music_store :SetTags sort_index = <sort_index>
	music_store_clear_sort_info_menu
	music_store_add_all_sort_items state_list = <state_list>
	music_store_get_sort_key state_list = <state_list>
	music_store_sort_list list = <list> key = <key> previous_history = <previous_history>
endscript

script music_store_sort_list 
	RequireParams \{[
			list
			key
		]}
	SortStoreStructArray array = <list> key = <key>
	if ScreenElementExists \{id = current_menu}
		LaunchEvent \{type = unfocus
			target = current_menu}
	endif
	music_store_clear_options
	if GotParam \{sorted_array}
		GetArraySize <sorted_array>
		if (<array_size> > 0)
			i = 0
			begin
			add_music_store_purchase_item {
				text = ((<sorted_array> [<i>]).name)
				price = ((<sorted_array> [<i>]).price)
				pad_choose_script = music_store_new_arrivals_decide_action
				pad_choose_params = {previous_history = <previous_history> option_struct = (<sorted_array> [<i>]) list = <list>}
				additional_focus_script = music_store_new_arrivals_decide_focus
				additional_focus_params = {option_struct = (<sorted_array> [<i>])}
				additional_unfocus_script = music_store_clear_album_info
			}
			i = (<i> + 1)
			repeat <array_size>
		endif
	else
		ScriptAssert \{qs("\Lmusic_store_sort_list was not returned a sorted array by SortStoreStructArray")}
	endif
	if ScreenElementExists \{id = current_menu}
		LaunchEvent \{type = focus
			target = current_menu}
	endif
	music_store_fade_in_options
endscript

script music_store_get_sort_key 
	RequireParams \{[
			state_list
		]
		all}
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :GetSingleTag \{sort_index}
		GetArraySize <state_list>
		if (<sort_index> >= <array_size>)
			sort_index = 0
		endif
		if ((<state_list> [<sort_index>]) = alpha)
			return \{key = name}
		elseif ((<state_list> [<sort_index>]) = difficulty)
			return \{key = difficulty}
		elseif ((<state_list> [<sort_index>]) = date)
			return \{key = date}
		elseif ((<state_list> [<sort_index>]) = artist)
			return \{key = artist}
		elseif ((<state_list> [<sort_index>]) = type)
			return \{key = type}
		elseif ((<state_list> [<sort_index>]) = duration)
			return \{key = duration}
		elseif ((<state_list> [<sort_index>]) = price)
			return \{key = price}
		else
			ScriptAssert qs("\L\music_store_get_sort_key was unable to state %s, make sure it exists") s = (<state_list> [<sort_index>]) DoNotResolve
		endif
	else
		ScriptAssert \{qs("\Lmusic_store_get_sort_key was unable to find ScreenElement GH_Music_Store")}
	endif
endscript

script music_store_pre_sort_list 
	RequireParams \{[
			list
			state_list
		]}
	if ScreenElementExists \{id = gh_music_store}
		music_store_get_sort_key state_list = <state_list>
		SortStoreStructArray array = <list> key = <key>
		list = <sorted_array>
	endif
	return list = <list>
endscript

script music_store_get_sort_names 
	array = []
	GetArraySize <state_list>
	if (<sort_index> < <array_size>)
		i = <sort_index>
		begin
		music_store_get_sort_state_name sort_state = (<state_list> [<i>])
		AddArrayElement array = <array> element = <name>
		i = (<i> + 1)
		repeat (<array_size> - <sort_index>)
	endif
	if (<sort_index> > 0)
		i = 0
		begin
		music_store_get_sort_state_name sort_state = (<state_list> [<i>])
		AddArrayElement array = <array> element = <name>
		i = (<i> + 1)
		repeat <sort_index>
	endif
	return names = <array>
endscript

script music_store_get_sort_state_name 
	if (<sort_state> = alpha)
		return \{name = qs("\LNAME")}
	elseif (<sort_state> = difficulty)
		return \{name = qs("\LDIFFICULTY")}
	elseif (<sort_state> = date)
		return \{name = qs("\LDATE")}
	elseif (<sort_state> = artist)
		return \{name = qs("\LARTIST")}
	elseif (<sort_state> = type)
		return \{name = qs("\LTYPE")}
	elseif (<sort_state> = duration)
		return \{name = qs("\LLENGTH")}
	elseif (<sort_state> = price)
		return \{name = qs("\LPRICE")}
	else
		ScriptAssert qs("\Lmusic_store_get_sort_state_name was unable to state %s, make sure it exists") s = <sort_state> DoNotResolve
	endif
endscript

script music_store_reset_sort_index 
	if ScreenElementExists \{id = gh_music_store}
		gh_music_store :SetTags \{sort_index = 0}
	endif
endscript

script music_store_add_all_sort_items 
	RequireParams \{[
			state_list
		]
		all}
	gh_music_store :GetSingleTag \{sort_index}
	music_store_get_sort_names state_list = <state_list> sort_index = <sort_index>
	if NOT GotParam \{names}
		ScriptAssert \{qs("\Lmusic_store_add_all_sort_items did not receive the sort list names.")}
	endif
	GetArraySize <names>
	if (<array_size> > 0)
		music_store_add_sort_info_item \{text = qs("\LSORT")
			focused}
		music_store_add_sort_info_item \{text = qs("\L-")
			focused}
		music_store_add_sort_info_item text = (<names> [0]) focused
	endif
	if (<array_size> > 1)
		i = 1
		begin
		music_store_add_sort_info_item text = (<names> [<i>])
		i = (<i> + 1)
		repeat (<array_size> -1)
	endif
endscript

script music_store_filter_list 
	RequireParams \{[
			filter
			value
			list
		]
		all}
	array = []
	GetArraySize <list>
	if (<array_size> > 0)
		i = 0
		begin
		if StructureContains Structure = (<list> [<i>]) <filter>
			if GotParam \{less_than}
				if (((<list> [<i>]).<filter>) < <value>)
					AddArrayElement array = <array> element = (<list> [<i>])
				endif
			elseif GotParam \{greater_than}
				if (((<list> [<i>]).<filter>) > <value>)
					AddArrayElement array = <array> element = (<list> [<i>])
				endif
			elseif GotParam \{less_than_equal}
				if (((<list> [<i>]).<filter>) <= <value>)
					AddArrayElement array = <array> element = (<list> [<i>])
				endif
			elseif GotParam \{greater_than_equal}
				if (((<list> [<i>]).<filter>) >= <value>)
					AddArrayElement array = <array> element = (<list> [<i>])
				endif
			else
				if (((<list> [<i>]).<filter>) = <value>)
					AddArrayElement array = <array> element = (<list> [<i>])
				endif
			endif
		endif
		i = (<i> + 1)
		repeat <array_size>
	endif
	return filtered_list = <array>
endscript

script music_store_generate_date 
	RequireParams \{[
			year
			month
			day
		]
		all}
	date = 0
	date = (<date> + (<year> * 512))
	date = (<date> + (<month> * 32))
	date = (<date> + <day>)
	return date = <date>
endscript

script music_store_determine_currency 
	if IsPs3
		GetTerritory
		if (<territory> = territory_us)
			money_icon = dollar_sign
		else
			money_icon = euro_sign
		endif
	else
		money_icon = xbl_symbol
	endif
	return money_icon = <money_icon>
endscript

script music_store_get_duration_string 
	RequireParams \{[
			duration
		]
		all}
	original_duration = <duration>
	CastToInteger \{duration}
	minutes = (<duration> / 60)
	seconds = (<original_duration> - (<minutes> * 60))
	FormatText TextName = Duration_String qs("\L%m:%s") m = <minutes> s = <seconds>
	printstruct <...>
	return string = <Duration_String>
endscript

script music_store_song_focus 
	if GotParam \{alt_focus}
		music_store_set_song_info_items_alt option_struct = <option_struct>
	else
		music_store_set_song_info_items option_struct = <option_struct>
	endif
endscript

script music_store_song_unfocus 
	music_store_clear_album_info
endscript

script music_store_pack_focus 
	music_store_set_pack_info_items option_struct = <option_struct>
endscript

script music_store_pack_unfocus 
	music_store_clear_album_info
endscript

script music_store_album_focus 
	music_store_set_album_info_items option_struct = <option_struct>
endscript

script music_store_album_unfocus 
	music_store_clear_album_info
endscript

script music_store_set_song_info_items 
	SetSpawnInstanceLimits \{max = 1
		management = kill_oldest}
	RequireParams \{[
			option_struct
		]
		all}
	music_store_clear_album_info
	music_store_add_album_info_item text = (<option_struct>.artist)
	if StructureContains Structure = <option_struct> album
		music_store_add_album_info_item text = (<option_struct>.album)
	endif
	music_store_get_duration_string duration = (<option_struct>.duration)
	music_store_add_album_info_item text = <string>
endscript

script music_store_set_song_info_items_alt 
	SetSpawnInstanceLimits \{max = 1
		management = kill_oldest}
	RequireParams \{[
			option_struct
		]
		all}
	music_store_clear_album_info
	music_store_add_album_info_item text = (<option_struct>.name)
	music_store_add_album_info_item text = (<option_struct>.artist)
	if StructureContains Structure = <option_struct> album
		music_store_add_album_info_item text = (<option_struct>.album)
	endif
endscript

script music_store_set_pack_info_items 
	SetSpawnInstanceLimits \{max = 1
		management = kill_oldest}
	RequireParams \{[
			option_struct
		]
		all}
	music_store_clear_album_info
	music_store_add_album_info_item text = (<option_struct>.name)
endscript

script music_store_set_album_info_items 
	SetSpawnInstanceLimits \{max = 1
		management = kill_oldest}
	RequireParams \{[
			option_struct
		]
		all}
	music_store_clear_album_info
	music_store_add_album_info_item text = (<option_struct>.artist)
	music_store_add_album_info_item text = (<option_struct>.name)
endscript

script music_store_preview_list 
	RequireParams \{[
			list
		]
		all}
	begin
	GetArraySize <list>
	i = 0
	begin
	if (((<list> [<i>]).type) = song)
		music_store_song_focus option_struct = (<list> [<i>]) alt_focus
	elseif (((<list> [<i>]).type) = album)
		music_store_album_focus option_struct = (<list> [<i>])
	elseif (((<list> [<i>]).type) = pack)
		music_store_pack_focus option_struct = (<list> [<i>])
	else
		ScriptAssert = qs("\Lmusic_store_preview_list found an item %i with invalid type %t") i = ((<list> [<i>]).name) t = ((<list> [<i>]).type) DoNotResolve
	endif
	Wait \{1.5
		seconds}
	i = (<i> + 1)
	repeat <array_size>
	repeat
endscript

script music_store_end_preview_list 
	if ScriptIsRunning \{music_store_preview_list}
		KillSpawnedScript \{name = music_store_preview_list}
	endif
	music_store_clear_album_info
endscript
test_dlc_list = [
	{
		name = qs("\LSONG 1")
		artist = qs("\LSOME ARTIST")
		difficulty = 5
		date = 402410
		type = song
		duration = 500
		price = 200
		album = qs("SOME ARTIST'S ALBUM")
	}
	{
		name = qs("\LSONG 2")
		artist = qs("\LSOME ARTIST")
		difficulty = 2
		date = 402410
		type = song
		duration = 200
		price = 200
		album = qs("SOME ARTIST'S ALBUM")
	}
	{
		name = qs("\LSONG 3 HAS A LONGER NAME")
		artist = qs("\LSOME OTHER ARTIST")
		difficulty = 1
		date = 402412
		type = song
		duration = 150
		price = 200
		album = qs("SOME OTHER ARTIST'S ALBUM")
	}
	{
		name = qs("\LSONG 4")
		artist = qs("\LUNKNOWN ARTIST")
		difficulty = 4
		date = 403084
		type = song
		duration = 400
		price = 150
		album = qs("UNKNOWN ALBUM")
	}
	{
		name = qs("\LPACK 1")
		artist = qs("\LMY ARTIST")
		difficulty = 0
		date = 403084
		type = pack
		duration = 0
		price = 500
	}
	{
		name = qs("\LPACK 2")
		artist = qs("\LUNKNOWN ARTIST")
		difficulty = 0
		date = 403085
		type = pack
		duration = 0
		price = 500
	}
	{
		name = qs("\LALBUM 1")
		artist = qs("\LUNKNOWN ARTIST")
		difficulty = 0
		date = 403084
		type = album
		duration = 0
		price = 1000
	}
	{
		name = qs("\LALBUM 2")
		artist = qs("\LSOME ARTIST")
		difficulty = 0
		date = 403084
		type = album
		duration = 0
		price = 900
	}
]
