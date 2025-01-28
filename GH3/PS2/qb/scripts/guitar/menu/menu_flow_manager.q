null_flow_state = {
	is_null
}
ui_flow_manager_state = [
	main_menu_fs
	null_flow_state
]
previous_flow_manager_state = [
	null_flow_state
	null_flow_state
]
ui_flow_manager_under = [
	null_flow_state
	null_flow_state
]
g_flow_manager_responding_to_action = [
	0
	0
]
menu_flow_locked = 0
menu_flow_play_sound = 1
ui_flow_hack_previous_state = none

script ui_flow_manager_respond_to_action \{device_num = 0
		player = 1
		create_params = {
		}
		destroy_params = {
		}
		func_params = {
		}
		flow_state_func_params = {
		}
		play_sound = 1}
	if ($transitions_locked = 1 || $menu_flow_locked = 1)
		return
	endif
	if NOT ((<player> = 1) || (<player> = 2))
		scriptassert \{'Player must be equal to 1 or 2'}
	endif
	player_index = (<player> - 1)
	current_flow_state_name = ($ui_flow_manager_state [<player_index>])
	current_flow_state = (<current_flow_state_name>)
	new_state_name = <current_flow_state_name>
	previous_flow_state_name = ($previous_flow_manager_state [<player_index>])
	previous_flow_state = (<previous_flow_state_name>)
	under_flow_state_name = ($ui_flow_manager_under [<player_index>])
	under_flow_state = (<under_flow_state_name>)
	null_flow_state_name = null_flow_state
	found_action = 0
	if ((gotparam action) && ($g_flow_manager_responding_to_action [<player_index>] = 0))
		setarrayelement arrayname = g_flow_manager_responding_to_action globalarray index = (<player_index>) newvalue = 1 resolveglobals = 0
		getarraysize (<current_flow_state>.actions)
		action_array_size = <array_size>
		array_entry = 0
		begin
		if (<action> = <current_flow_state>.actions [(<array_entry>)].action)
			if ($menu_flow_play_sound = 1)
				if (<play_sound> = 1)
					if (<action> = go_back)
						soundevent \{event = generic_menu_back_sfx}
					else
						soundevent \{event = ui_sfx_select}
					endif
				endif
			else
				change \{menu_flow_play_sound = 1}
			endif
			<found_action> = 1
			spawned_func = 0
			if structurecontains structure = (<current_flow_state>.actions [<array_entry>]) func
				action_function = (<current_flow_state>.actions [<array_entry>].func)
				if structurecontains structure = (<current_flow_state>.actions [<array_entry>]) func_params
					func_params = (<current_flow_state>.actions [<array_entry>].func_params)
				endif
				if structurecontains structure = (<current_flow_state>.actions [<array_entry>]) spawned_func
					<spawned_func> = 1
				endif
			endif
			if structurecontains structure = (<current_flow_state>.actions [<array_entry>]) use_last_flow_state
				<new_state_name> = <previous_flow_state_name>
			else
				if structurecontains structure = ((<current_flow_state>.actions [(<array_entry>)])) flow_state
					<new_state_name> = ((<current_flow_state>.actions [(<array_entry>)]).flow_state)
				elseif structurecontains structure = ((<current_flow_state>.actions [(<array_entry>)])) flow_state_func
					if structurecontains structure = ((<current_flow_state>.actions [(<array_entry>)])) flow_state_func_params
						<flow_state_func_params> = ((<current_flow_state>.actions [(<array_entry>)]).flow_state_func_params)
					endif
					change \{transitions_locked = 1}
					flow_state_func = ((<current_flow_state>.actions [(<array_entry>)]).flow_state_func)
					<flow_state_func> <flow_state_func_params>
					change \{transitions_locked = 0}
					if NOT gotparam \{flow_state}
						scriptassert \{'flow_state_func did not return flow_state'}
					endif
					<new_state_name> = <flow_state>
				else
					scriptassert \{'Action does not define flow_state, use_last_flow_state, or flow_state_func'}
				endif
			endif
			break
		endif
		<array_entry> = (<array_entry> + 1)
		repeat <action_array_size>
		setarrayelement arrayname = g_flow_manager_responding_to_action globalarray index = (<player_index>) newvalue = 0 resolveglobals = 0
	endif
	hack_ps2_get_saveload_successor_checksum
	if ((<ps2_saveload_successor_checksum> != none) && (<new_state_name> = hack_ps2_saveload_successor))

		hack_ps2_set_saveload_successor_checksum \{none}
		new_state_name = <ps2_saveload_successor_checksum>
		if (ui_flow_hack_previous_state != none)
			previous_flow_state_name = ($ui_flow_hack_previous_state)
			previous_flow_state = (<previous_flow_state_name>)
		endif
		if structurecontains structure = ($ps2_saveload_successor_action_state) func
			action_function = ($ps2_saveload_successor_action_state.func)
		endif
		if structurecontains structure = ($ps2_saveload_successor_action_state) func_params
			func_params = (<current_flow_state>.actions [<array_entry>].func_params)
		endif
		if structurecontains structure = ($ps2_saveload_successor_action_state) spawned_func
			<spawned_func> = 1
		endif
	endif
	if (<found_action>)
		new_state = (<new_state_name>)
		is_popup = (0)
		if structurecontains structure = (<new_state>) popup
			<is_popup> = (1)
		endif
		state_destroy_params = {}
		if structurecontains structure = (<new_state>) destroy_params
			state_destroy_params = (<new_state>.destroy_params)
		endif
		if ($playing_song = 0)
			if structurecontains structure = (<current_flow_state>.actions [<array_entry>]) transition_screen
				transition_screen_struct = ((<current_flow_state>.actions [<array_entry>]).transition_screen)
				transition_create_func = (<transition_screen_struct>.create)
				<transition_create_func>
			endif
		endif
		if (<is_popup>)
			if NOT structurecontains structure = (<under_flow_state>) is_null
				if structurecontains structure = (<current_flow_state>) destroy
					destroy_func = (<current_flow_state>.destroy)
					<destroy_func> player = <player> <destroy_params> <state_destroy_params>
				endif
			endif
			setarrayelement arrayname = ui_flow_manager_under globalarray index = (<player_index>) newvalue = <current_flow_state_name> resolveglobals = 0
			launchevent \{type = unfocus
				target = root_window}
		else
			if structurecontains structure = (<current_flow_state>) destroy
				destroy_func = (<current_flow_state>.destroy)
				<destroy_func> player = <player> <destroy_params> <state_destroy_params>
			endif
			if NOT structurecontains structure = (<under_flow_state>) is_null
				if structurecontains structure = (<under_flow_state>) destroy
					destroy_func = (<under_flow_state>.destroy)
					<destroy_func> player = <player> <destroy_params> <state_destroy_params>
				endif
				setarrayelement arrayname = ui_flow_manager_under globalarray index = (<player_index>) newvalue = <null_flow_state_name> resolveglobals = 0
				launchevent \{type = focus
					target = root_window}
			endif
		endif
		setarrayelement arrayname = previous_flow_manager_state globalarray index = (<player_index>) newvalue = <current_flow_state_name> resolveglobals = 0
		setarrayelement arrayname = ui_flow_manager_state globalarray index = (<player_index>) newvalue = <new_state_name> resolveglobals = 0
		if gotparam \{action_function}
			if (<spawned_func> = 1)
				spawnscriptnow <action_function> params = {device_num = (<device_num>) <func_params>}
			else
				<action_function> device_num = (<device_num>) <func_params>
			endif
		endif
		if ($playing_song = 0)
			if structurecontains structure = (<current_flow_state>.actions [<array_entry>]) transition_screen
				transition_screen_struct = ((<current_flow_state>.actions [<array_entry>]).transition_screen)
				transition_destroy_func = (<transition_screen_struct>.destroy)
				<transition_destroy_func>
			endif
		endif
		pak = <new_state_name>



		setpakmancurrentblock map = 0x261ffed7 pak = <pak> block_scripts = 1

		state_create_params = {}
		if structurecontains structure = (<new_state>) create_params
			state_create_params = (<new_state>.create_params)
		endif
		if structurecontains structure = (<new_state>) create
			create_func = (<new_state>.create)
			<create_func> player = <player> <create_params> <state_create_params>
			if screenelementexists \{id = gh3c_fade_box}
				destroyscreenelement \{id = gh3c_fade_box}
			endif
		endif
		if (<play_sound>)
			if (<action> = go_back)
				soundevent \{event = generic_menu_back_sfx}
			else
				soundevent \{event = ui_sfx_select}
			endif
		endif
	endif
endscript

script start_flow_manager \{flow_state = main_menu_fs
		player = 1
		create_params = {
		}}
	if NOT ((<player> = 1) || (<player> = 2))
		scriptassert \{'Player must be equal to 1 or 2'}
	endif
	player_index = (<player> - 1)
	setarrayelement arrayname = ui_flow_manager_state globalarray index = (<player_index>) newvalue = <flow_state> resolveglobals = 0
	current_flow_state_name = ($ui_flow_manager_state [<player_index>])
	current_flow_state = (<current_flow_state_name>)

	pak = <current_flow_state_name>
	hack_ps2_get_saveload_successor_checksum
	if ((<ps2_saveload_successor_checksum> != none) && (<pak> = hack_ps2_saveload_successor))
		hack_ps2_set_saveload_successor_checksum \{none}
		pak = <ps2_saveload_successor_checksum>
		if (ui_flow_hack_previous_state != none)
			previous_flow_state_name = ($ui_flow_hack_previous_state)
			previous_flow_state = (<previous_flow_state_name>)
		endif
	endif



	setpakmancurrentblock map = 0x261ffed7 pak = <pak> block_scripts = 1

	state_create_params = {}
	if structurecontains structure = (<current_flow_state>) create_params
		state_create_params = (<current_flow_state>.create_params)
	endif
	if structurecontains structure = (<current_flow_state>) create
		create_func = (<current_flow_state>.create)
		<create_func> player = <player> <create_params> <state_create_params>
	endif
endscript

script shut_down_flow_manager \{player = 1}
	if NOT ((<player> = 1) || (<player> = 2))
		scriptassert \{'Player must be equal to 1 or 2'}
	endif
	player_index = (<player> - 1)
	current_flow_state_name = ($ui_flow_manager_state [<player_index>])
	current_flow_state = (<current_flow_state_name>)
	if structurecontains structure = (<current_flow_state>) destroy
		destroy_func = (<current_flow_state>.destroy)
		<destroy_func> player = <player> <destroy_params>
	endif
endscript

script get_flow_manager_action_state \{player = 1}
	if NOT ((<player> = 1) || (<player> = 2))
		scriptassert \{'Player must be equal to 1 or 2'}
	endif
	player_index = (<player> - 1)
	if NOT gotparam \{action}
		scriptassert \{'No action'}
	endif
	current_flow_state_name = ($ui_flow_manager_state [<player_index>])
	current_flow_state = (<current_flow_state_name>)
	getarraysize (<current_flow_state>.actions)
	action_array_size = <array_size>
	array_entry = 0
	begin
	if (<action> = <current_flow_state>.actions [(<array_entry>)].action)
		if structurecontains structure = ((<current_flow_state>.actions [(<array_entry>)])) flow_state_func
			flow_state_func = ((<current_flow_state>.actions [(<array_entry>)]).flow_state_func)
			<flow_state_func>
			if NOT gotparam \{flow_state}
				scriptassert \{'flow_state_func did not return flow_state'}
			endif
			return state = <flow_state> action_struct = (<current_flow_state>.actions [<array_entry>])
		else
			return state = (<current_flow_state>.actions [(<array_entry>)].flow_state) action_struct = (<current_flow_state>.actions [<array_entry>])
		endif
	endif
	<array_entry> = (<array_entry> + 1)
	repeat <action_array_size>
endscript
