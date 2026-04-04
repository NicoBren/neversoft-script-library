ss_focus_on_create_new_character = 0
cas_from_main_menu = 0
customize_char_popup = 0
character_select_delete_sound = ui_menu_select_sfx
character_select_reset_sound = ui_menu_select_sfx
character_select_edit_sound = ui_menu_select_sfx

script ui_create_character_selection 
	change \{respond_to_signin_changed = 1}
	set_cas_loading_setup \{setup = single}
	spawnscriptnow ui_create_character_selection_spawned params = {<...>}
endscript

script ui_create_character_selection_spawned 
	change \{rich_presence_context = presence_menus}
	change \{Achievements_creating_character = 0}
	change \{respond_to_signin_changed = 1}
	change \{respond_to_signin_changed_func = none}
	if GotParam \{from_main_menu}
		change \{cas_from_main_menu = 1}
	else
		change \{cas_from_main_menu = 0}
	endif
	cas_free_resources_camera_fix \{base_name = 'character_selection'}
	if ($customize_char_popup = 1)
		change \{customize_char_popup = 0}
		begin
		if NOT ScreenElementExists \{id = popup_warning_container}
			break
		endif
		Wait \{1
			gameframe}
		repeat
	endif
	cas_get_player_status
	get_savegame_from_player_status player_status = <player_status>
	printf 'savegame=%s' s = <savegame>
	cas_set_object_node_pos player = ($cas_current_player) node = Z_Soundcheck_TRG_Waypoint_CAR_Select
	printf 'Current character is %s' s = ($<player_status>.character_id) DoNotResolve
	if ($ss_focus_on_create_new_character = 1)
		change \{ss_focus_on_create_new_character = 0}
	else
		if NOT GotParam \{from_main_menu}
			current_character_id = ($<player_status>.character_id)
		endif
	endif
	focus_index = 0
	create_band_money_display savegame = <savegame>
	make_character_selection_menu {
		pad_back_script = character_select_back_out
		pad_back_params = {from_difficulty = <from_difficulty> savegame = <savegame> from_main_menu = <from_main_menu>}
		vmenu_id = create_character_selection_vmenu
	}
	menu_index = 0
	globaltag_getarraysize savegame = <savegame> array_name = custom_profiles
	if ScreenElementExists \{id = character_select_num_custom_profiles}
		DestroyScreenElement \{id = character_select_num_custom_profiles}
	endif
	FormatText TextName = num_profiles_text qs("%a of %b Rockstars Created") a = <array_size> b = $max_num_create_a_rockers
	CreateScreenElement {
		id = character_select_num_custom_profiles
		parent = root_window
		type = TextBlockElement
		pos = (1115.0, 280.0)
		text = <num_profiles_text>
		font = fontgrid_text_a8
		scale = 0.5
		dims = (400.0, 200.0)
		rgba = [255 255 255 255]
		just = [center center]
		z_priority = 500
	}
	<can_create_new_character> = 0
	if (<array_size> < $max_num_create_a_rockers)
		add_character_selection_item {
			name = qs("CREATE NEW")
			bio = qs("Create your own rocker to show these posers how it's done!")
			pad_choose_script = create_new_custom_character
			pad_choose_params = {savegame = <savegame>}
			additional_focus_script = new_custom_char_focus
			additional_focus_params = {from_main_menu = <from_main_menu> savegame = <savegame>}
		}
		menu_index = 1
		<can_create_new_character> = 1
	endif
	get_musician_profile_size savegame = <savegame>
	i = 0
	begin
	get_musician_profile_struct_by_index index = <i> savegame = <savegame>
	this_id = (<profile_struct>.name)
	choose_script = choose_character_to_play
	if GotParam \{from_main_menu}
		if profile_can_be_modified id = <this_id> savegame = <savegame>
			choose_script = choose_character_to_edit
		else
			choose_script = nullscript
		endif
	else
		if StructureContains Structure = <profile_struct> price
			if NOT is_profile_purchased id = <this_id> savegame = <savegame>
				price = (<profile_struct>.price)
				choose_script = purchase_character_to_play
			endif
		endif
	endif
	if display_character_logic profile_struct = <profile_struct> savegame = <savegame> from_main_menu = <from_main_menu> part = ($<player_status>.part)
		get_car_photo_icon profile_struct = <profile_struct> savegame = <savegame> character_id = <this_id>
		bio = (<profile_struct>.blurb)
		if is_completely_custom_musician id = <this_id> savegame = <savegame>
			get_current_band_name
			printf \{qs("\LCUSTOM MUSICIAN!")}
			get_custom_musician_bio name = (<profile_struct>.fullname) Band = <band_name> genre = ((<profile_struct>.appearance).genre)
		endif
		add_character_selection_item {
			price = <price>
			bio = <bio>
			name = (<profile_struct>.fullname)
			icon = <icon>
			pad_choose_script = <choose_script>
			pad_choose_params = {character_id = <this_id> savegame = <savegame> price = <price>}
			additional_focus_script = change_character_focus
			additional_focus_params = {character_id = <this_id> from_main_menu = <from_main_menu> savegame = <savegame>}
		}
		if GotParam \{current_character_id}
			if (<this_id> = <current_character_id>)
				focus_index = <menu_index>
			endif
		endif
		menu_index = (<menu_index> + 1)
	endif
	if GotParam \{price}
		RemoveParameter \{price}
	endif
	i = (<i> + 1)
	repeat <array_size>
	if (<can_create_new_character> = 1)
		add_character_selection_item \{not_focusable}
	endif
	get_musician_profile_size savegame = <savegame>
	i = 0
	begin
	if (<i> = 8)
		break
	endif
	get_musician_profile_struct_by_index index = <i> savegame = <savegame>
	this_id = (<profile_struct>.name)
	if display_character_logic profile_struct = <profile_struct> savegame = <savegame> from_main_menu = <from_main_menu> part = ($<player_status>.part)
		get_car_photo_icon profile_struct = <profile_struct> savegame = <savegame> character_id = <this_id> skip_add
		add_character_selection_item {
			not_focusable
			icon = <icon>
		}
	endif
	i = (<i> + 1)
	repeat <array_size>
	menu_finish \{no_helper_text = 1}
	add_user_control_helper \{text = qs("SELECT")
		button = green
		z = 100000}
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100000}
	if NOT GotParam \{from_main_menu}
		add_user_control_helper \{text = qs("EDIT")
			button = Yellow
			z = 100000}
	endif
	LaunchEvent type = focus target = create_character_selection_vmenu data = {child_index = <focus_index>}
	character_selection_animate_in
	SoundEvent \{event = Menu_Character_Bio_Panel}
	if ($autolaunch_cas_soak_test = 1)
		SpawnScriptLater \{cas_soak_test}
	endif
endscript

script character_select_back_out_and_fix_cam 
	if GotParam \{from_difficulty}
		change \{first_character_hub_enter = 1}
		generic_event_back \{nosound
			state = uistate_select_difficulty}
	else
		generic_event_back \{nosound}
	endif
endscript

script get_car_photo_icon 
	RequireParams \{[
			profile_struct
			character_id
			savegame
		]
		all}
	icon = axel_mug
	if StructureContains Structure = <profile_struct> preset_icon
		icon = (<profile_struct>.preset_icon)
	else
		if PhotoExistsInGlobalTags savegame = <savegame> character_name = <character_id>
			FormatText TextName = savegamename '_%i' i = <savegame>
			ExtendCRC <character_id> <savegamename> out = custom_char_icon
			if NOT IsAssetLoaded name = <custom_char_icon>
				if NOT GotParam \{skip_add}
					MemPushContext \{BottomUpHeap}
					PhotoCreateImageAsset savegame = <savegame> character_name = <character_id> asset_name = <custom_char_icon>
					MemPopContext
				endif
			endif
			icon = <custom_char_icon>
		endif
	endif
	return icon = <icon>
endscript

script cleanup_photo_assets 
	RequireParams \{[
			savegame
		]
		all}
	printf \{'cleanup_photo_assets'}
	get_musician_profile_size savegame = <savegame>
	i = 0
	begin
	get_musician_profile_struct_by_index index = <i> savegame = <savegame>
	this_id = (<profile_struct>.name)
	FormatText TextName = savegamename '_%i' i = <savegame>
	ExtendCRC <this_id> <savegamename> out = custom_char_icon
	printf 'deleting photo %d' d = <custom_char_icon> DoNotResolve
	PhotoDeleteImageAsset asset_name = <custom_char_icon>
	i = (<i> + 1)
	repeat <array_size>
endscript

script cleanup_all_photo_assets 
	if isXenon
		i = 0
		begin
		cleanup_photo_assets savegame = <i>
		i = (<i> + 1)
		repeat 4
	else
		cleanup_photo_assets \{savegame = 0}
	endif
endscript

script ui_destroy_character_selection 
	if ScreenElementExists \{id = character_select_num_custom_profiles}
		DestroyScreenElement \{id = character_select_num_custom_profiles}
	endif
	destroy_character_selection_menu
	cas_get_player_status
	get_savegame_from_player_status player_status = <player_status>
	cleanup_all_photo_assets
endscript

script ui_init_character_selection 
	if GotParam \{player}
		change cas_current_player = <player>
		FormatText checksumname = player_name 'cas_player%i' i = <player>
		change cas_current_player_name = <player_name>
	else
		change \{cas_current_player = 1}
		change \{cas_current_player_name = cas_player1}
	endif
	cas_get_player_status
	change charselect_previous_character_id = ($<player_status>.character_id)
	get_savegame_from_player_status player_status = <player_status>
	create_frontend_lock_targets
	if NOT get_musician_profile_struct_by_id dont_assert id = ($charselect_previous_character_id) savegame = <savegame>
		stars
		printf \{qs("\Lui_init_character_selection was unable to find the profile currently in the player status. Setting charselect_previous_character_id to Axel.")}
		stars
		change \{charselect_previous_character_id = axel}
	endif
	if GotParam \{from_main_menu}
		cas_queue_kill_player player = ($cas_current_player)
		change \{ss_focus_on_create_new_character = 1}
	else
		part = ($<player_status>.part)
		GetGlobalTags savegame = <savegame> last_singleplayer_character
		if NOT (<last_singleplayer_character> = none)
			if profile_exists id = <last_singleplayer_character> savegame = <savegame>
				cas_get_player_status
				change structurename = <player_status> character_id = <last_singleplayer_character>
				cas_queue_new_character_profile id = <last_singleplayer_character> player = ($cas_current_player) savegame = <savegame> hide_old_character = 1
			endif
		else
			cas_queue_kill_player player = ($cas_current_player)
			change \{ss_focus_on_create_new_character = 1}
		endif
	endif
	if NOT IsWinPort
		if isXenon
			if NOT CheckForSignIn local controller_index = ($<player_status>.controller)
				create_popup_warning_menu \{title = qs("Controller not signed in")
					textblock = {
						text = qs("Any changes will not be saved. If using multiple controllers, use a signed in controller to edit and save changes.")
					}
					options = [
						{
							func = destroy_popup_warning_menu
							text = qs("CONTINUE")
						}
					]
					no_background}
				clean_up_user_control_helpers
				add_user_control_helper \{text = qs("SELECT")
					button = green
					z = 100000}
				change \{customize_char_popup = 1}
			endif
		endif
	endif
endscript

script ui_deinit_character_selection 
	destroy_character_selection_menu
	if NOT ($cas_heap_state = in_game)
		cas_free_resources \{spawn
			block_scripts = 1}
	endif
	change \{menu_over_ride_exclusive_device = -1}
	destroy_band_money_display
	destroy_frontend_lock_targets
	change \{customize_char_popup = 0}
endscript

script create_new_custom_character 
	hide_glitch \{num_frames = 20}
	if ($cas_heap_state = in_cas)
		ScriptAssert \{'Should in in_game heap state!'}
	endif
	cas_destroy_all_characters
	destroy_character_selection_menu
	cas_queue_block
	cas_get_player_status
	if NOT ($cas_override_object = none)
		ScriptAssert \{'cas_override_object != none'}
	endif
	cas_load_and_setup_resources
	new_custom_character_name savegame = <savegame>
	is_female = Random (@ 0 @ 1 )
	if (<is_female> = 1)
		profile = ($default_custom_musician_profile_female)
	else
		profile = ($default_custom_musician_profile_male)
	endif
	change cas_current_savegame = <savegame>
	generate_random_name is_female = <is_female>
	generate_random_genre
	generate_random_appearance is_female = <is_female> genre = <genre> new_car_character
	profile = {
		<profile>
		name = <new_character_id>
		fullname = <random_name>
		appearance = ($cas_current_appearance)
	}
	add_new_custom_profile profile = <profile> savegame = <savegame>
	cas_queue_add_request appearance = ($cas_current_appearance) player = ($cas_current_player) hide_old_character = 1
	globaltag_getarraysize savegame = <savegame> array_name = custom_profiles
	cas_edit_character_profile character_id = <new_character_id> savegame = <savegame>
	change \{cas_editing_new_character = true}
	ui_event \{event = menu_change
		data = {
			state = UIstate_create_character_gender
		}}
endscript

script choose_character_to_edit \{event = menu_change}
	if ($cas_heap_state = in_cas)
		ScriptAssert \{'Should in in_game heap state!'}
	endif
	if NOT GotParam \{no_charsel}
		destroy_character_selection_menu
	endif
	cas_queue_block
	cas_edit_character_profile character_id = <character_id> savegame = <savegame>
	if NOT ($cas_override_object = none)
		ScriptAssert \{'cas_override_object != none'}
	endif
	cas_load_and_setup_resources
	change \{cas_editing_new_character = false}
	if GotParam \{state}
		data = {<data> state = <state>}
	endif
	begin
	if is_menu_camera_finished
		ui_event_wait event = <event> data = {state = UIstate_customize_character}
		return
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script purchase_character_to_edit 
	generic_event_choose data = {state = UIstate_character_purchase is_popup choose_yes_script = purchase_character_continue_to_edit choose_yes_params = {<...>} <...>}
endscript

script purchase_character_continue_to_edit 
	purchase_profile id = <character_id> savegame = <savegame>
	choose_character_to_edit <...> event = menu_replace
endscript

script purchase_character_to_play 
	generic_event_choose data = {state = UIstate_character_purchase is_popup choose_yes_script = purchase_character_continue_to_play choose_yes_params = {<...>} <...>}
endscript

script purchase_character_continue_to_play 
	purchase_profile id = <character_id> savegame = <savegame>
	choose_character_to_play <...> num_states = 2
endscript

script choose_character_to_play \{num_states = 1}
	change \{first_character_hub_enter = 0}
	destroy_character_selection_menu
	cas_queue_block
	cas_get_player_status
	change structurename = <player_status> character_id = <character_id>
	SetGlobalTags savegame = <savegame> last_singleplayer_character params = {last_singleplayer_character = <character_id>}
	generic_event_back nosound data = {num_states = <num_states>}
endscript

script change_character_focus 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	RequireParams \{[
			savegame
			character_id
		]
		all}
	get_musician_profile_struct_by_id id = <character_id> savegame = <savegame>
	if is_completely_custom_musician id = <character_id> savegame = <savegame>
		SetScreenElementProps {
			id = create_character_selection_vmenu
			event_handlers =
			[
				{pad_option ui_event params = {
						event = menu_change
						data = {
							state = UIstate_generic_dialogue
							is_popup
							title = qs("Delete Character?")
							text = qs("Are you sure you want to delete this character?")
							choose_yes_func = {
								delete_character_profile
								params = {character_id = <character_id> savegame = <savegame>}
							}
						}
					}
				}
				{pad_option ($character_select_delete_sound)}
				{pad_l1 nullscript}
			]
			replace_handlers
		}
		clean_up_user_control_helpers
		add_user_control_helper \{text = qs("SELECT")
			button = green
			z = 100000}
		add_user_control_helper \{text = qs("BACK")
			button = red
			z = 100000}
		if NOT GotParam \{from_main_menu}
			add_user_control_helper \{text = qs("EDIT")
				button = Yellow
				z = 100000}
		endif
		add_user_control_helper \{text = qs("DELETE")
			button = Blue
			z = 100000}
	else
		if profile_can_be_modified id = <character_id> savegame = <savegame>
			if GotParam \{from_main_menu}
				<pad> = pad_option2
			else
				<pad> = pad_l1
			endif
			SetScreenElementProps {
				id = create_character_selection_vmenu
				event_handlers =
				[
					{<pad> ui_event params = {
							event = menu_change
							data = {
								state = UIstate_generic_dialogue
								is_popup
								title = qs("Reset Character?")
								text = qs("Are you sure you want to reset this character?")
								choose_yes_func = {
									reset_preset_character
									params = {character_id = <character_id> savegame = <savegame>}
								}
							}
						}
					}
					{<pad> ($character_select_reset_sound)}
					{pad_option nullscript}
				]
				replace_handlers
			}
		else
			cleanup_character_select_handlers
		endif
		clean_up_user_control_helpers
		if GotParam \{from_main_menu}
			if profile_can_be_modified id = <character_id> savegame = <savegame>
				add_user_control_helper \{text = qs("SELECT")
					button = green
					z = 100000}
			endif
		else
			add_user_control_helper \{text = qs("SELECT")
				button = green
				z = 100000}
		endif
		add_user_control_helper \{text = qs("BACK")
			button = red
			z = 100000}
		if profile_can_be_modified id = <character_id> savegame = <savegame>
			if GotParam \{from_main_menu}
				<instrument_button> = Yellow
				<pad_button> = Yellow
			else
				add_user_control_helper \{text = qs("EDIT")
					button = Yellow
					z = 100000}
				<instrument_button> = Orange
				<pad_button> = LB
			endif
			<controller> = ($primary_controller)
			if NOT (($menu_over_ride_exclusive_device) = -1)
				<controller> = ($menu_over_ride_exclusive_device)
			endif
			if ((IsGuitarController controller = <controller>) || (IsDrumController controller = <controller>))
				add_user_control_helper text = qs("RESET") button = <instrument_button> z = 100000
			else
				add_user_control_helper text = qs("RESET") button = <pad_button> z = 100000
			endif
		endif
	endif
	if NOT GotParam \{from_main_menu}
		if profile_can_be_modified id = <character_id> savegame = <savegame>
			SetScreenElementProps {
				id = create_character_selection_vmenu
				event_handlers = [
					{pad_option2 ($character_select_edit_sound)}
					{pad_option2 choose_character_to_edit params = {character_id = <character_id> savegame = <savegame>}}
				]
				replace_handlers
			}
		endif
	endif
	cas_queue_add_request appearance = (<profile_struct>.appearance) player = ($cas_current_player)
endscript

script character_select_back_out 
	CasCancelLoading
	if GotParam \{from_difficulty}
		cas_destroy_all_characters
	else
		if NOT GotParam \{from_main_menu}
			if profile_exists id = ($charselect_previous_character_id) savegame = <savegame>
				cas_get_player_status
				change structurename = <player_status> character_id = ($charselect_previous_character_id)
				cas_queue_new_character_profile id = ($charselect_previous_character_id) player = ($cas_current_player) savegame = <savegame> hide_old_character = 1
			endif
		endif
	endif
	character_select_back_out_and_fix_cam from_difficulty = <from_difficulty>
endscript

script delete_character_profile 
	cas_destroy_all_characters
	RequireParams \{[
			character_id
			savegame
		]
		all}
	delete_custom_profile id = <character_id> savegame = <savegame>
	cas_get_player_status
	change structurename = <player_status> character_id = ($charselect_previous_character_id)
	PhotoRemoveFromGlobalTags character_name = <character_id> savegame = <savegame>
	ui_memcard_autosave_replace event = menu_back state = uistate_character_selection data = {savegame = <savegame>}
endscript

script reset_preset_character 
	cas_destroy_all_characters
	RequireParams \{[
			savegame
			character_id
		]
		all}
	restore_custom_musician_parts id = <character_id> savegame = <savegame>
	if ($cas_from_main_menu = 0)
		cas_queue_new_character_profile player = ($cas_current_player) id = <character_id> savegame = <savegame>
	endif
	ui_memcard_autosave_replace event = menu_back state = uistate_character_selection data = {savegame = <savegame>}
endscript

script cleanup_character_select_handlers 
	SetScreenElementProps \{id = create_character_selection_vmenu
		event_handlers = [
			{
				pad_option
				nullscript
			}
			{
				pad_l1
				nullscript
			}
			{
				pad_option2
				nullscript
			}
		]
		replace_handlers}
	clean_up_user_control_helpers
	add_user_control_helper \{text = qs("SELECT")
		button = green
		z = 100000}
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100000}
endscript

script new_custom_char_focus 
	RequireParams \{[
			savegame
		]
		all}
	cleanup_character_select_handlers
	if GotParam \{from_main_menu}
		switch RandomInteger (0.0, 4.0)
			case 0
			printf \{qs("\LDummer")}
			cas_queue_new_character_profile id = Drummer player = ($cas_current_player) savegame = <savegame>
			case 1
			printf \{qs("\LBassist")}
			cas_queue_new_character_profile id = bassist player = ($cas_current_player) savegame = <savegame>
			case 2
			printf \{qs("\LGuitarist")}
			cas_queue_new_character_profile id = Guitarist player = ($cas_current_player) savegame = <savegame>
			default
			printf \{qs("\LSinger")}
			cas_queue_new_character_profile id = singer player = ($cas_current_player) savegame = <savegame>
		endswitch
	else
		if (($current_progression_flag) = Career_Guitar)
			cas_queue_new_character_profile id = Guitarist player = ($cas_current_player) savegame = <savegame>
		elseif (($current_progression_flag) = Career_Bass)
			cas_queue_new_character_profile id = bassist player = ($cas_current_player) savegame = <savegame>
		elseif (($current_progression_flag) = Career_Drum)
			cas_queue_new_character_profile id = Drummer player = ($cas_current_player) savegame = <savegame>
		else
			cas_queue_new_character_profile id = singer player = ($cas_current_player) savegame = <savegame>
		endif
	endif
endscript

script display_character_logic 
	RequireParams \{[
			savegame
			profile_struct
			part
		]
		all}
	if ChecksumEquals a = (<profile_struct>.name) b = Jimi
		return \{false}
	endif
	if NOT GotParam \{from_main_menu}
		if NOT is_allowed_part profile_struct = <profile_struct> part = <part>
			if GotParam \{bandplay}
				if (<part> = guitar)
					if NOT is_allowed_part profile_struct = <profile_struct> part = Bass
						return \{false}
					endif
				else
					return \{false}
				endif
			else
				return \{false}
			endif
		endif
	endif
	if is_profile_unlocked savegame = <savegame> profile_struct = <profile_struct>
		if is_selectable_profile profile_struct = <profile_struct>
			if NOT GotParam \{from_main_menu}
				return \{true}
			else
				if profile_can_be_modified id = (<profile_struct>.name) savegame = <savegame>
					return \{true}
				else
					return \{false}
				endif
			endif
		else
			return \{false}
		endif
	endif
endscript

script get_custom_musician_bio 
	RequireParams \{[
			name
			Band
			genre
		]
		all}
	switch <genre>
		case Rock
		FormatText TextName = blurb qs("%n was raised on rock-n-roll, pure and simple. It's not about the clothes, the fans, or even the money... it's about the music, man! It's also about the thrill of playing live with your friends, it doesn't matter where. %b aims to do just that. Play out, and play loud, play Forever!") n = <name> b = <Band>
		case Punk
		FormatText TextName = blurb qs("Stick it to the man! Music is about the experience, not the merchandise! %b doesn't have any T-shirts. %b doesnt press any albums. You want those things? Well make them yourself. While you're at it, give them away to all your friends or better yet tell them to make their own! ") n = <name> b = <Band>
		case `Heavy Metal`
		FormatText TextName = blurb qs("METAL!!!! Metal isn't just music, it's a way of life, and all those whacko poseurs out on the boulevard will never understand what it's all about!  For little %n, it was the life of choice. with a hard and heavy style, a razor sharp wit and a taste for the extreme, there was no other choice. Mess with the Bull... you get the HORNS!") n = <name> b = <Band>
		case `Glam Rock`
		FormatText TextName = blurb qs("Let's face it, music isn't just about music. It's 10 percent how you play and 90 percent how you LOOK, and %n's got all the looks babe! You know it! You think all those losers who get up on stage in t-shirts and jeans know anything about putting on a good show? It's a privilege to be up there man, not a right... you got fans to entertain!") n = <name> b = <Band>
		case `Black Metal`
		FormatText TextName = blurb qs("We are the children of the frost, the keepers of the mountains... let it be known to all who bear witness, that %b is the coming of doom and %n is its master!") n = <name> b = <Band>
		case `Classic Rock`
		FormatText TextName = blurb qs("FM rock, man! That was where it was at! Remember the good ole' days of hard rock radio? Back when they didn't butcher a song just so you could hear the next commercial? Life's a strange trip, baby, and %n's along for the ride!") n = <name> b = <Band>
		case Goth
		FormatText TextName = blurb qs("Life is dark, and %n always felt an uncontrollable pull to all the things that were weird and taboo. To the children of the dark, the strange and fantastic are things to explore and experience, not ignore.") n = <name> b = <Band>
		case Pop
		FormatText TextName = blurb qs("I am a superstar! Well, I'm almost a superstar! One day you're gonna see %n's face all over the TV, on billboards, or anywhere my fine products are sold! Don't like it? Tough!") n = <name> b = <Band>
		case any
		FormatText TextName = blurb qs("Rover, Wanderer, free spirit. All these things describe what it's like to be %n. Early in life, %n learned that limiting ones self to labels and preconceived notions lead to nothing but shackled creativity and a life lived inside boxes. No boundaries, no rules, no limits... Own the drums, Be the beat.") n = <name> b = <Band>
		default
		ScriptAssert qs("\Lget_custom_musician_bio was passed an unrecognized Genre %g!") g = <genre> DoNotResolve
	endswitch
	return bio = <blurb>
endscript

script external_edit_character 
	change \{cas_from_main_menu = 0}
	if GotParam \{player}
		change cas_current_player = <player>
		FormatText checksumname = player_name 'cas_player%i' i = <player>
		change cas_current_player_name = <player_name>
	else
		change \{cas_current_player = 1}
		change \{cas_current_player_name = cas_player1}
	endif
	cancel_all_cas_loads except = ($cas_current_player)
	cas_get_player_status
	get_savegame_from_player_status player_status = <player_status>
	change charselect_previous_character_id = ($<player_status>.character_id)
	cas_set_object_node_pos player = ($cas_current_player) node = Z_Soundcheck_TRG_Waypoint_CAR_Select
	current_character_id = ($<player_status>.character_id)
	cas_queue_new_character_profile id = <current_character_id> player = ($cas_current_player) savegame = <savegame>
	change menu_over_ride_exclusive_device = ($<player_status>.controller)
	choose_character_to_edit character_id = <current_character_id> savegame = <savegame> no_charsel
endscript

script is_custom_modified 
	RequireParams \{[
			savegame
			id
		]
		all}
	if find_profile_by_id id = <id> savegame = <savegame>
		globaltag_getarraysize savegame = <savegame> array_name = custom_profiles
		if (<index> < <array_size>)
			return \{false}
		else
			get_musician_profile_struct_by_index index = <index> savegame = <savegame>
			index = (<index> - <array_size>)
			GetArraySize \{$Preset_Musician_Profiles_Modifiable}
			if (<index> < <array_size>)
				struct1 = ($Preset_Musician_Profiles_Modifiable [<index>].appearance)
				struct2 = (<profile_struct>.appearance)
				printstruct <...>
				if (CompareStructs struct1 = <struct1> struct2 = <struct2>)
					return \{false}
				else
					return \{true}
				endif
			else
				return \{false}
			endif
		endif
	endif
endscript
