winport_in_tutorial = 0

script create_tutorial_select_menu 
	disable_pause
	if IsWinPort
		change \{winport_in_tutorial = 0}
	endif
	change \{rich_presence_context = presence_tutorial}
	if ScreenElementExists \{id = popup_warning_container}
		destroy_popup_warning_menu
	endif
	if (<allowances> = drum)
		if isRBDrum \{controller = $primary_controller}
			create_popup_warning_menu \{no_background
				title = qs("DRUMS")
				textblock = {
					text = qs("You must use an Official Guitar Hero drum controller to play the drum tutorials.")
				}
				options = [
					{
						func = tutorials_event_back
						text = qs("GO BACK")
						no_sound
					}
				]}
			return
		endif
	endif
	make_generic_menu \{title = qs("TUTORIALS")
		pad_back_script = tutorials_event_back
		vmenu_id = tutorial_select_menu}
	if generic_menu :Desc_ResolveAlias \{name = alias_generic_menu_smenu
			param = generic_smenu}
		<generic_smenu> :SetTags treat_not_focusable_as_header
	endif
	GetArraySize \{$tutorial_lessons}
	<total_size> = <array_size>
	<i> = 0
	begin
	<lessons> = ($tutorial_lessons [<i>])
	ForEachIn <lessons> do = add_lesson_menu_item params = {allowances = <allowances> lesson = <i>}
	<i> = (<i> + 1)
	repeat <total_size>
	menu_finish
	LaunchEvent \{type = focus
		target = current_menu}
	current_menu :Obj_SpawnScriptNow menu_tutorial_select_check_disconnected_controllers params = {allowances = <allowances>}
endscript

script menu_tutorial_select_check_disconnected_controllers 
	<my_allowances> = <allowances>
	begin
	check_tutorial_allowances \{allow_RB_drums = 0}
	if NOT (<my_allowances> = <allowances>)
		destroy_tutorial_select_menu
		create_tutorial_select_menu allowances = <allowances>
		return
	endif
	Wait \{10
		gameframes}
	repeat
endscript

script destroy_tutorial_select_menu 
	printf \{channel = newdebug
		qs("\Ldestroy tutorial select screen......")}
	if ScreenElementExists \{id = current_menu}
		LaunchEvent \{type = unfocus
			target = current_menu}
	endif
	if ScreenElementExists \{id = popup_warning_container}
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
		text = qs("GUITAR/BASS:")
		item = 'basic'
		focusable = -1
	}
	{
		text = qs("BASICS")
		item = 'basic'
	}
	{
		text = qs("STAR POWER")
		item = 'star_power'
	}
	{
		text = qs("ADVANCED")
		item = 'advanced_techniques'
	}
	{
		text = qs("NEW FEATURES")
		item = 'new_features'
	}
	{
		text = qs("VERSUS")
		item = 'versus'
	}
]
drum_lessons = [
	{
		text = qs("DRUMS:")
		item = 'basic'
		focusable = -1
	}
	{
		text = qs("BASICS")
		item = 'drum_basic'
	}
	{
		text = qs("INTERMEDIATE")
		item = 'drum_int'
	}
]
vocals_lessons = [
	{
		text = qs("OTHER:")
		item = 'basic'
		focusable = -1
	}
	{
		text = qs("VOCALS")
		item = 'vocals'
	}
]
band_lessons = [
	{
		text = qs("BAND")
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
			if NOT (<allowances> = Vocals || <allowances> = all)
				<focusable> = 0
			endif
		endif
	endif
	FormatText checksumname = lesson_tag '%i_lesson' i = <item>
	GetGlobalTags \{training}
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
		if IsWinPort
			if WinPortIsKeyboardController controller = ($primary_controller)
				change \{winport_keyboard_instrument = 4}
			endif
		endif
		printf \{'menu_tutorial_select_choose'}
		printstruct <...>
		if NOT StructureContains Structure = <allowed> Vocals
			LaunchEvent \{type = unfocus
				target = current_menu}
			if isXenon
				if IsWinPort
					text = qs(0xd35f811b)
				else
					text = qs("You must connect a microphone or Xbox 360 Headset to continue.")
				endif
			else
				text = qs("You must connect a microphone to continue.")
			endif
			create_popup_warning_menu {
				no_background
				title = qs("WARNING")
				textblock = {
					text = <text>
				}
				options = [
					{
						func = {ui_event}
						func_params = {event = menu_refresh}
						text = qs("OK")
					}
				]
			}
			return
		endif
	endif
	FormatText checksumname = tutorial_script 'training_%i_tutorial_script' i = <item>
	if IsWinPort
		change \{winport_in_tutorial = 1}
	endif
	set_training_script name = <tutorial_script>
	generic_event_choose \{state = UIstate_play_tutorial}
endscript

script tutorials_event_back 
	ui_event_get_stack
	if IsWinPort
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
