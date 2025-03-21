winport_in_tutorial = 0

script create_tutorial_select_menu 
	disable_pause
	if iswinport
		change \{winport_in_tutorial = 0}
	endif
	change \{rich_presence_context = presence_tutorial}
	if screenelementexists \{id = popup_warning_container}
		destroy_popup_warning_menu
	endif
	if (<allowances> = drum)
		if isrbdrum \{controller = $primary_controller}
			create_popup_warning_menu \{no_background
				title = qs(0x388cd3db)
				textblock = {
					text = qs(0x97d50180)
				}
				options = [
					{
						func = tutorials_event_back
						text = qs(0x320a8d1c)
						no_sound
					}
				]}
			return
		endif
	endif
	make_generic_menu \{title = qs(0xc6510dd1)
		pad_back_script = tutorials_event_back
		vmenu_id = tutorial_select_menu}
	if generic_menu :desc_resolvealias \{name = alias_generic_menu_smenu
			param = generic_smenu}
		<generic_smenu> :settags treat_not_focusable_as_header
	endif
	getarraysize \{$tutorial_lessons}
	<total_size> = <array_size>
	<i> = 0
	begin
	<lessons> = ($tutorial_lessons [<i>])
	foreachin <lessons> do = add_lesson_menu_item params = {allowances = <allowances> lesson = <i>}
	<i> = (<i> + 1)
	repeat <total_size>
	menu_finish
	launchevent \{type = focus
		target = current_menu}
	current_menu :obj_spawnscriptnow menu_tutorial_select_check_disconnected_controllers params = {allowances = <allowances>}
endscript

script menu_tutorial_select_check_disconnected_controllers 
	<my_allowances> = <allowances>
	begin
	check_tutorial_allowances \{allow_rb_drums = 0}
	if NOT (<my_allowances> = <allowances>)
		destroy_tutorial_select_menu
		create_tutorial_select_menu allowances = <allowances>
		return
	endif
	wait \{10
		gameframes}
	repeat
endscript

script destroy_tutorial_select_menu 
	printf \{channel = newdebug
		qs(0xa8f2b97f)}
	if screenelementexists \{id = current_menu}
		launchevent \{type = unfocus
			target = current_menu}
	endif
	if screenelementexists \{id = popup_warning_container}
		destroy_popup_warning_menu
	endif
	destroy_generic_menu
	clean_up_user_control_helpers
endscript
tutorial_lessons = [
	$guitar_lessons
	$drum_lessons
	$vocals_lessons
	$band_lessons
]
guitar_lessons = [
	{
		text = qs(0x14aded97)
		item = 'basic'
		focusable = -1
	}
	{
		text = qs(0xc2c32aa4)
		item = 'basic'
	}
	{
		text = qs(0x371c93c9)
		item = 'star_power'
	}
	{
		text = qs(0xe47db24a)
		item = 'advanced_techniques'
	}
	{
		text = qs(0x323949fa)
		item = 'new_features'
	}
	{
		text = qs(0xdfa3757d)
		item = 'versus'
	}
]
drum_lessons = [
	{
		text = qs(0x58bf794f)
		item = 'basic'
		focusable = -1
	}
	{
		text = qs(0xc2c32aa4)
		item = 'drum_basic'
	}
	{
		text = qs(0x500e1674)
		item = 'drum_int'
	}
]
vocals_lessons = [
	{
		text = qs(0x97626cf4)
		item = 'basic'
		focusable = -1
	}
	{
		text = qs(0x1b9f6f84)
		item = 'vocals'
	}
]
band_lessons = [
	{
		text = qs(0xdabf99c0)
		item = 'band'
	}
]

script add_lesson_menu_item \{focusable = 1}
	<needs_mic> = 0
	if NOT (<focusable> = -1)
		if (<lesson> = 0)
			if NOT (<allowances> = guitar || <allowances> = all)
				<focusable> = 0
			endif
		elseif (<lesson> = 1)
			if NOT (<allowances> = drum || <allowances> = all)
				<focusable> = 0
			endif
		elseif (<lesson> = 2)
			<needs_mic> = 1
			if NOT (<allowances> = vocals || <allowances> = all)
				<focusable> = 0
			endif
		endif
	endif
	formattext checksumname = lesson_tag '%i_lesson' i = <item>
	getglobaltags \{training}
	if ((<...>.<lesson_tag>) = complete)
		<icon> = tutorial_complete
	else
		<icon> = tutorial_incomplete
	endif
	if (<focusable> = 1)
		add_generic_menu_icon_item {
			icon = <icon>
			text = <text>
			pad_choose_script = menu_tutorial_select_choose
			pad_choose_params = {item = <item> needs_mic = <needs_mic>}
		}
	elseif (<focusable> = 0)
		add_generic_menu_icon_item {
			icon = <icon>
			text = <text>
			not_focusable
		}
	else
		add_generic_menu_icon_item {
			icon = empty
			text = <text>
			not_focusable
			header_text
		}
	endif
endscript

script menu_tutorial_select_choose \{item = basic
		needs_mic = 0}
	if (<needs_mic> = 1)
		ui_get_controller_parts_allowed \{controller = $primary_controller}
		if iswinport
			if 0x1c708d82 controller = ($primary_controller)
				change \{0xf9695deb = 4}
			endif
		endif
		printf \{'menu_tutorial_select_choose'}
		printstruct <...>
		if NOT structurecontains structure = <allowed> vocals
			launchevent \{type = unfocus
				target = current_menu}
			if isxenon
				if iswinport
					text = qs(0xd35f811b)
				else
					text = qs(0xec4dbd17)
				endif
			else
				text = qs(0x588788f4)
			endif
			create_popup_warning_menu {
				no_background
				title = qs(0xaa163738)
				textblock = {
					text = <text>
				}
				options = [
					{
						func = {ui_event}
						func_params = {event = menu_refresh}
						text = qs(0x0e41fe46)
					}
				]
			}
			return
		endif
	endif
	formattext checksumname = tutorial_script 'training_%i_tutorial_script' i = <item>
	if iswinport
		change \{winport_in_tutorial = 1}
	endif
	set_training_script name = <tutorial_script>
	generic_event_choose \{state = uistate_play_tutorial}
endscript

script tutorials_event_back 
	ui_event_get_stack
	if iswinport
		change \{winport_in_tutorial = 0}
	endif
	i = 0
	begin
	if ((<stack> [<i>].base_name) = 'singleplayer_character_hub')
		create_loading_screen \{destroy_state = 'gig_posters'}
		break
	endif
	i = (<i> + 1)
	repeat <stack_size>
	generic_event_back \{data = {
			pass_to_gigboard = true
		}}
endscript
