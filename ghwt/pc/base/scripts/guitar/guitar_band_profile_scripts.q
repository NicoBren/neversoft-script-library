
script get_musician_profile_size 
	RequireParams \{[
			savegame
		]
		all}
	size = 0
	if GotParam \{borrowed_from_band_leader}
		globaltag_getarraysize savegame = <borrowed_from_band_leader> array_name = custom_profiles
		size = (<array_size> + <size>)
	endif
	globaltag_getarraysize savegame = <savegame> array_name = custom_profiles
	size = (<array_size> + <size>)
	GetArraySize \{$Preset_Musician_Profiles_Modifiable}
	size = (<array_size> + <size>)
	GetArraySize \{$Preset_Musician_Profiles_Locked}
	size = (<array_size> + <size>)
	GetArraySize \{$Net_Musician_Profiles}
	size = (<array_size> + <size>)
	return array_size = <size>
endscript

script get_musician_profile_struct_by_index 
	RequireParams \{[
			index
			savegame
		]
		all}
	if GotParam \{borrowed_from_band_leader}
		globaltag_getarraysize savegame = <borrowed_from_band_leader> array_name = custom_profiles
		if (<index> < <array_size>)
			globaltag_getarrayelement savegame = <borrowed_from_band_leader> array_name = custom_profiles index = <index>
			return profile_struct = <element> character_savegame = <borrowed_from_band_leader>
		endif
		index = (<index> - <array_size>)
	endif
	globaltag_getarraysize savegame = <savegame> array_name = custom_profiles
	if (<index> < <array_size>)
		globaltag_getarrayelement savegame = <savegame> array_name = custom_profiles index = <index>
		profile_struct = <element>
	else
		index = (<index> - <array_size>)
		GetArraySize \{$Preset_Musician_Profiles_Modifiable}
		if (<index> < <array_size>)
			profile_struct = ($Preset_Musician_Profiles_Modifiable [<index>])
			globaltag_get_preset_musician savegame = <savegame> profile_struct = <profile_struct> index = <index>
		else
			index = (<index> - <array_size>)
			GetArraySize \{$Preset_Musician_Profiles_Locked}
			if (<index> < <array_size>)
				profile_struct = ($Preset_Musician_Profiles_Locked [<index>])
				resolve_random_appearance profile_struct = <profile_struct>
			else
				index = (<index> - <array_size>)
				GetArraySize \{$Net_Musician_Profiles}
				if (<index> < <array_size>)
					profile_struct = ($Net_Musician_Profiles [<index>])
				else
					ScriptAssert \{'profile index out of bounds'}
				endif
			endif
		endif
	endif
	if NOT StructureContains Structure = <profile_struct> appearance
		ScriptAssert \{'All profiles require an appearance'}
	endif
	if NOT StructureContains Structure = <profile_struct> name
		ScriptAssert \{'All profiles require a name'}
	endif
	return profile_struct = <profile_struct> character_savegame = <savegame>
endscript

script get_musician_profile_struct_by_id 
	RequireParams \{[
			id
			savegame
		]
		all}
	if SearchMusicianProfileArray array_name = Preset_Musician_Profiles_Locked id = <id>
		profile_struct = ($Preset_Musician_Profiles_Locked [<index>])
		resolve_random_appearance profile_struct = <profile_struct>
		return true profile_struct = <profile_struct>
	endif
	if SearchMusicianProfileArray array_name = Net_Musician_Profiles id = <id>
		return true profile_struct = ($Net_Musician_Profiles [<index>])
	endif
	if SearchMusicianProfileArray array_name = Preset_Musician_Profiles_Modifiable id = <id>
		globaltag_get_preset_musician savegame = <savegame> profile_struct = ($Preset_Musician_Profiles_Modifiable [<index>]) index = <index>
		return true profile_struct = <profile_struct>
	endif
	globaltag_getarraysize savegame = <savegame> array_name = custom_profiles
	i = 0
	if (<array_size> > 0)
		begin
		globaltag_getarrayelement savegame = <savegame> array_name = custom_profiles index = <i>
		if (<id> = (<element>.name))
			return true profile_struct = <element>
		endif
		i = (<i> + 1)
		repeat <array_size>
	endif
	if NOT GotParam \{dont_assert}
		ScriptAssert 'Profile %d not found' d = <id>
	endif
	return \{false}
endscript

script profile_exists 
	RequireParams \{[
			id
			savegame
		]
		all}
	if SearchMusicianProfileArray array_name = Preset_Musician_Profiles_Locked id = <id>
		return \{true}
	endif
	if SearchMusicianProfileArray array_name = Net_Musician_Profiles id = <id>
		return \{true}
	endif
	if SearchMusicianProfileArray array_name = Preset_Musician_Profiles_Modifiable id = <id>
		return \{true}
	endif
	globaltag_getarraysize savegame = <savegame> array_name = custom_profiles
	i = 0
	if (<array_size> > 0)
		begin
		globaltag_getarrayelement savegame = <savegame> array_name = custom_profiles index = <i>
		if (<id> = (<element>.name))
			return \{true}
		endif
		i = (<i> + 1)
		repeat <array_size>
	endif
	return \{false}
endscript

script new_custom_character_name 
	RequireParams \{[
			savegame
		]
		all}
	i = 0
	begin
	FormatText checksumname = id_checksum 'custom_character_%d' d = <i> AddToStringLookup = true
	if NOT is_completely_custom_musician id = <id_checksum> savegame = <savegame>
		return new_character_id = <id_checksum>
	endif
	i = (<i> + 1)
	repeat 100
	ScriptAssert \{'Cannot make a new custom character id'}
endscript

script profile_can_be_modified 
	RequireParams \{[
			id
			savegame
		]
		all}
	if SearchMusicianProfileArray array_name = Preset_Musician_Profiles_Modifiable id = <id>
		return \{true}
	endif
	if is_completely_custom_musician id = <id> savegame = <savegame>
		return \{true}
	endif
	return \{false}
endscript

script is_completely_custom_musician 
	RequireParams \{[
			id
			savegame
		]
		all}
	globaltag_getarraysize savegame = <savegame> array_name = custom_profiles
	i = 0
	if (<array_size> > 0)
		begin
		globaltag_getarrayelement savegame = <savegame> array_name = custom_profiles index = <i>
		if (<id> = (<element>.name))
			return true custom_musician_index = <i>
		endif
		i = (<i> + 1)
		repeat <array_size>
	endif
	return \{false}
endscript

script modify_custom_profile_appearance 
	RequireParams \{[
			id
			savegame
			appearance
		]
		all}
	if is_completely_custom_musician id = <id> savegame = <savegame>
		globaltag_getarrayelement savegame = <savegame> array_name = custom_profiles index = <custom_musician_index>
		globaltag_setarrayelement savegame = <savegame> array_name = custom_profiles index = <custom_musician_index> element = {
			<element>
			appearance = <appearance>
		}
	elseif SearchMusicianProfileArray array_name = Preset_Musician_Profiles_Modifiable id = <id>
		globaltag_set_preset_musician savegame = <savegame> appearance = <appearance> index = <index>
	endif
endscript

script modify_custom_profile_fullname 
	RequireParams \{[
			id
			savegame
			fullname
		]
		all}
	if is_completely_custom_musician id = <id> savegame = <savegame>
		globaltag_getarrayelement savegame = <savegame> array_name = custom_profiles index = <custom_musician_index>
		globaltag_setarrayelement savegame = <savegame> array_name = custom_profiles index = <custom_musician_index> element = {
			<element>
			fullname = <fullname>
		}
	endif
endscript

script modify_custom_profile_blurb 
	RequireParams \{[
			id
			savegame
			blurb
		]
		all}
	if is_completely_custom_musician id = <id> savegame = <savegame>
		globaltag_getarrayelement savegame = <savegame> array_name = custom_profiles index = <custom_musician_index>
		globaltag_setarrayelement savegame = <savegame> array_name = custom_profiles index = <custom_musician_index> element = {
			<element>
			blurb = <blurb>
		}
	endif
endscript

script add_new_custom_profile 
	RequireParams \{[
			savegame
			profile
		]
		all}
	globaltag_addarrayelement savegame = <savegame> array_name = custom_profiles element = <profile>
endscript

script delete_custom_profile 
	RequireParams \{[
			savegame
			id
		]
		all}
	if is_completely_custom_musician id = <id> savegame = <savegame>
		globaltag_removearrayelement savegame = <savegame> array_name = custom_profiles index = <custom_musician_index>
	endif
endscript

script restore_custom_musician_parts 
	RequireParams \{[
			savegame
			id
		]
		all}
	if SearchMusicianProfileArray array_name = Preset_Musician_Profiles_Modifiable id = <id>
		globaltag_set_preset_musician savegame = <savegame> index = <index> appearance = ($Preset_Musician_Profiles_Modifiable [<index>].appearance)
	endif
endscript

script get_savegame_from_player_status 
	get_savegame_from_controller controller = ($<player_status>.controller) <...>
	return savegame = <savegame> borrowed_from_band_leader = <borrowed_from_band_leader>
endscript

script get_savegame_from_controller 
	GetSavegameFromController controller = <controller>
	if NOT IsWinPort
		if isXenon
			if GotParam \{band_character_select}
				if NOT CheckForSignIn local controller_index = <controller>
					guest = 1
				elseif NetSessionFunc func = XenonIsGuest params = {controller_index = <controller>}
					guest = 1
				endif
				if GotParam \{guest}
					if ($is_network_game = 0)
						leader_index = ($band_mode_current_leader)
					else
						leader_index = ($primary_controller)
					endif
					if ((<leader_index> != -1) && (<leader_index> != <controller>))
						GetSavegameFromController controller = <controller>
						borrowed_from_band_leader = <savegame>
						GetSavegameFromController controller = <leader_index>
					endif
				endif
			endif
		endif
	endif
	return savegame = <savegame> borrowed_from_band_leader = <borrowed_from_band_leader>
endscript

script resolve_random_appearance 
	RequireParams \{[
			profile_struct
		]
		all}
	if StructureContains Structure = <profile_struct> random_appearance_lookup
		band_builder_get_random_appearance character_id = (<profile_struct>.name)
		profile_struct = {
			<profile_struct>
			appearance = <appearance>
		}
	endif
	return profile_struct = <profile_struct>
endscript

script is_selectable_profile 
	RequireParams \{[
			profile_struct
		]
		all}
	if StructureContains Structure = <profile_struct> selection_not_allowed
		return \{false}
	else
		return \{true}
	endif
endscript

script is_allowed_part 
	if ((<part> = Bass) || (<part> = guitar) || (<part> = drum) || (<part> = Vocals))
		i = 0
		GetArraySize (<profile_struct>.allowed_parts)
		if (<array_size> > 0)
			begin
			if ((<profile_struct>.allowed_parts) [<i>] = <part>)
				return \{true}
			endif
			i = (<i> + 1)
			repeat <array_size>
		endif
		return \{false}
	endif
	ScriptAssert 'is_allowed_part - %d unrecognized' d = <part>
endscript

script modify_net_appearance 
	if ((<player> < 1) || (<player> > 4))
		ScriptAssert \{'Out of range'}
	endif
	index = (<player> - 1)
	new_entry = {(($Net_Musician_Profiles) [<index>]) appearance = <appearance> fullname = <fullname>}
	SetArrayElement ArrayName = Net_Musician_Profiles GlobalArray index = <index> newvalue = <new_entry>
endscript

script fill_local_appearance_data 
	printf \{qs("\Lfill_local_appearance_data")}
	printstruct <...>
	FormatText checksumname = player_status 'player%p_status' p = <player_number>
	if ($<player_status>.is_local_client = 1)
		my_character_id = ($<player_status>.character_id)
		get_savegame_from_player_status player_status = <player_status>
		if isXenon
			get_fullname_of_character id = <my_character_id> savegame = <savegame>
		else
			if get_musician_profile_struct_by_id id = <my_character_id> savegame = <savegame> dont_assert
				if StructureContains Structure = <profile_struct> fullname
					fullname = (<profile_struct>.fullname)
				endif
			endif
			if SearchMusicianProfileArray array_name = Preset_Musician_Profiles_Locked id = <my_character_id>
				printf qs("\LNAME OF CHARACTER FOR PLAYER %d is %c") , d = <player_number> c = <fullname>
			elseif SearchMusicianProfileArray array_name = Preset_Musician_Profiles_Modifiable id = <my_character_id>
				printf qs("\LNAME OF CHARACTER FOR PLAYER %d is %c") , d = <player_number> c = <fullname>
			else
				fullname = qs("Custom Character")
			endif
		endif
		get_musician_profile_struct_by_id id = <my_character_id> savegame = <savegame>
		resolve_guest_character_id id = <my_character_id>
		if (($<player_status>.part = drum) || ($<player_status>.part = Vocals))
			printf \{qs("\LWe should be filtering here but somehow my params are wrong")}
		endif
		return character_id = <my_character_id> appearance = {(<profile_struct>.appearance) fullname = <fullname> old_character_id = <id>}
	endif
endscript

script start_song_got_net_appearance 
	printf 'start_song_got_net_appearance %d' d = <netplayer>
	if (<netplayer> > 1)
		if (<netplayer> < 5)
			FormatText checksumname = player_status 'player%p_status' p = <netplayer>
			appearance_num = <netplayer>
			FormatText checksumname = netappearance_id 'netappearance%d' d = <appearance_num>
			if GotParam \{USERANDOMPLAYER}
				get_savegame_from_controller controller = ($primary_controller)
				cas_get_random_preset_character savegame = <savegame> part = ($<player_status>.part)
				change structurename = <player_status> character_id = <character_id>
			else
				change structurename = <player_status> character_id = <netappearance_id>
				modify_net_appearance player = <appearance_num> appearance = <appearance> fullname = (<appearance>.fullname)
			endif
			ui_event_get_top
			can_continue = 0
			if (<base_name> = 'band_mode')
				can_continue = 1
			elseif (<base_name> = 'net_career_join_popup')
				can_continue = 1
			endif
			if is_current_state_band_mode
				FormatText checksumname = player_status 'player%p_status' p = <netplayer>
				get_savegame_from_player_status player_status = <player_status>
				if (<can_continue> = 1)
					if ScreenElementExists \{id = MyInterfaceElement}
						MyInterfaceElement :GetSingleTag \{menus}
						(<menus> [(<netplayer> - 1)]) :obj_spawnscript ui_band_mode_update_menu
					endif
					cas_queue_new_character_profile player = <netplayer> id = ($<player_status>.character_id) savegame = <savegame>
				endif
			endif
		endif
	endif
endscript

script check_for_dupe_profiles \{savegame = 0}
	if CD
		return
	endif
	get_musician_profile_size savegame = <savegame>
	i = 0
	begin
	get_musician_profile_struct_by_index index = <i> savegame = <savegame>
	iname = (<profile_struct>.name)
	if NOT IsChecksum <iname>
		ScriptAssert \{'Profile names should be checksums now'}
	endif
	j = 0
	begin
	if NOT (<i> = <j>)
		get_musician_profile_struct_by_index index = <j> savegame = <savegame>
		jname = (<profile_struct>.name)
		if (<iname> = <jname>)
			ScriptAssert 'Profile name %s appears twice!' s = <iname>
		endif
	endif
	j = (<j> + 1)
	repeat <array_size>
	i = (<i> + 1)
	repeat <array_size>
endscript

script is_profile_unlocked 
	RequireParams \{[
			profile_struct
			savegame
		]
		all}
	if NOT StructureContains Structure = <profile_struct> locked
		return \{true}
	else
		get_current_band_info
		GetGlobalTags <band_info> savegame = <savegame>
		if NOT GotParam \{unlocked_profiles}
			return \{false}
		else
			if ArrayContains array = <unlocked_profiles> contains = (<profile_struct>.name)
				return \{true}
			else
				return \{false}
			endif
		endif
	endif
endscript

script unlock_profile 
	RequireParams \{[
			id
			savegame
		]
		all}
	get_musician_profile_struct_by_id id = <id> savegame = <savegame>
	if NOT StructureContains Structure = <profile_struct> locked
		return
	else
		get_current_band_info
		GetGlobalTags <band_info> savegame = <savegame>
		if NOT GotParam \{unlocked_profiles}
			AddArrayElement array = [] element = <id>
			LockGlobalTags \{off}
			SetGlobalTags <band_info> params = {unlocked_profiles = <array>} savegame = <savegame>
			LockGlobalTags
		else
			if NOT ArrayContains array = <unlocked_profiles> contains = <id>
				AddArrayElement array = <unlocked_profiles> element = <id>
				LockGlobalTags \{off}
				SetGlobalTags <band_info> params = {unlocked_profiles = <array>} savegame = <savegame>
				LockGlobalTags
			endif
		endif
	endif
endscript

script unlock_all_profiles 
	get_savegame_from_controller controller = ($primary_controller)
	get_musician_profile_size savegame = <savegame>
	i = 0
	begin
	get_musician_profile_struct_by_index index = <i> savegame = <savegame>
	this_id = (<profile_struct>.name)
	if NOT ChecksumEquals a = <this_id> b = Jimi
		unlock_profile id = <this_id> savegame = <savegame>
	endif
	i = (<i> + 1)
	repeat <array_size>
endscript

script is_profile_purchased 
	RequireParams \{[
			id
			savegame
		]
		all}
	get_musician_profile_struct_by_id id = <id> savegame = <savegame>
	if NOT StructureContains Structure = <profile_struct> price
		return \{true}
	else
		get_current_band_info
		GetGlobalTags <band_info> savegame = <savegame>
		if NOT GotParam \{purchased_profiles}
			return \{false}
		else
			if ArrayContains array = <purchased_profiles> contains = <id>
				return \{true}
			else
				return \{false}
			endif
		endif
	endif
endscript

script purchase_profile 
	RequireParams \{[
			id
			savegame
		]
		all}
	get_musician_profile_struct_by_id id = <id> savegame = <savegame>
	if NOT StructureContains Structure = <profile_struct> price
		return
	else
		get_current_band_info
		GetGlobalTags <band_info> savegame = <savegame>
		if NOT GotParam \{purchased_profiles}
			AddArrayElement array = [] element = <id>
			SetGlobalTags <band_info> params = {purchased_profiles = <array>} savegame = <savegame>
		else
			if NOT ArrayContains array = <purchased_profiles> contains = <id>
				AddArrayElement array = <purchased_profiles> element = <id>
				SetGlobalTags <band_info> params = {purchased_profiles = <array>} savegame = <savegame>
			endif
		endif
	endif
endscript

script purchase_all_profiles 
	get_savegame_from_controller controller = ($primary_controller)
	get_musician_profile_size savegame = <savegame>
	i = 0
	begin
	get_musician_profile_struct_by_index index = <i> savegame = <savegame>
	this_id = (<profile_struct>.name)
	purchase_profile id = <this_id> savegame = <savegame>
	i = (<i> + 1)
	repeat <array_size>
endscript

script get_fullname_of_character 
	RequireParams \{[
			id
			savegame
		]
		all}
	fullname = qs("Custom Character")
	if band_builder_is_finalized_random character_id = <id>
		if StructureContains Structure = ($guest_character_fullnames) <id>
			fullname = (($guest_character_fullnames).<id>)
		endif
	elseif get_musician_profile_struct_by_id id = <id> savegame = <savegame> dont_assert
		if StructureContains Structure = <profile_struct> fullname
			fullname = (<profile_struct>.fullname)
		endif
	endif
	if SearchMusicianProfileArray array_name = Preset_Musician_Profiles_Locked id = <id>
		return fullname = <fullname>
	endif
	if SearchMusicianProfileArray array_name = Preset_Musician_Profiles_Modifiable id = <id>
		return fullname = <fullname>
	endif
	if NOT GotParam \{profanity_allowed}
		if GotParam \{fullname}
			if NOT IsAcceptableString string = <fullname>
				RemoveParameter \{fullname}
			endif
		endif
	endif
	if NOT GotParam \{fullname}
		fullname = qs("Custom Character")
	endif
	return fullname = <fullname>
endscript

script resolve_guest_character_id 
	RequireParams \{[
			id
		]
		all}
	if band_builder_is_finalized_random character_id = <id>
		if StructureContains Structure = ($guest_character_names) <id>
			return id = (($guest_character_names).<id>)
		endif
	endif
	return id = <id>
endscript

script debug_add_worst_case_cas_chars 
	get_savegame_from_controller controller = ($primary_controller)
	i = 0
	begin
	new_custom_character_name savegame = <savegame>
	FormatText TextName = fullname qs("\LWorst Case CAS %i") i = (<i> + 1)
	profile = {
		<profile>
		name = <new_character_id>
		fullname = <fullname>
		allowed_parts = [drum Vocals guitar Bass]
		appearance = {
			genre = `Black Metal`
			CAS_Body = {desc_id = GH4_CAR_Male
				bones = {HeadSize = 1.0 FaceFullness = 1.0 JawScale = 1.0 ChinSize = 1.0 ChinWidth = 1.0 CheekboneShape = 1.0 EarAngle = 1.0 EarTip = 1.0 NoseSize = 1.0 NoseTip = 1.0 NoseWidth = 1.0 NoseAngle = 0.0 NoseDepth = 1.0 NosePosition = 1.0 NoseBridge = 1.0 NoseBroken = 1.0 MouthScale = 1.0 MouthAngle = 1.0 MouthDepth = 1.0 MouthPosition = 1.0 LipShape = 1.0 UpperLipThickness = 1.0 LowerLipThickness = 1.0 EyeAngle = 1.0 EyeShape = 1.0 EyePosition = -1.0 EyeDepth = 1.0 EyeScale = 1.0 EyeDistance = 1.0 EyebrowSize = 1.0 EyebrowAngle = 1.0 EyebrowDistance = 1.0 BrowPosition = 1.0 BrowDepth = 1.0 EyebrowShape = 1.0}
				chosen_materials = {skin = purple_blue_1}
				cap = [{base_tex = `tex/models/Characters/Global/Global_Blank_Head_dnc.dds` material = CAR_Male_Head Cas_1
						layers = [{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_001.img` a = 85 x_trans = 31 y_trans = 16 x_skew = 75 y_skew = -24 x_scale = 16 y_scale = 53 rot = 5983 flags = 27 color = Black_1guitar}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_001.img` a = 60 x_trans = -45 y_trans = 11 x_skew = -51 y_skew = 24 x_scale = 121 y_scale = 30 rot = 930 flags = 27 color = yellow_1guitar}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_001.img` x_trans = -15 y_trans = -51 x_skew = 24 y_skew = -21 x_scale = 15 y_scale = 22 rot = 4513 flags = 27 color = yellow_orange_1}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon001.img` color = orange_1 a = 75 y_trans = -27 x_skew = 18 y_skew = 18 x_scale = 25 y_scale = 150 rot = 510 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Creature001.img` color = red_orange_1 x_trans = -40 y_trans = 19 x_skew = -27 y_skew = -21 x_scale = 149 y_scale = 149 rot = 360 flags = 3}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics_zombieface.img` x_trans = 20 x_scale = 30 flags = 3 y_scale = 149}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_Amoeba_01.img` x_scale = 30 y_scale = 30 flags = 3 x_trans = -23}
							{font = fontgrid_title_a1 text = 'A' color = violet_1 x_trans = -35 x_scale = 6 y_scale = 50 flags = 3 y_trans = 41}
							{font = fontgrid_text_a3 text = 'a' color = purple_blue_1 x_trans = -18 y_trans = 19 x_skew = -33 x_scale = 86 y_scale = 64 rot = 6253 flags = 27}
							{font = fontgrid_text_a6 text = 'B' color = navy_1 x_trans = -44 y_trans = 0 x_scale = 50 y_scale = 50 flags = 3 a = 45}
							{font = fontgrid_text_a8 text = 'b' color = blue_1 x_trans = -54 y_trans = 33 x_scale = 50 y_scale = 50 flags = 3 a = 30}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_002.img` color = teal_1 y_trans = 31 x_scale = 75 y_scale = 70 flags = 3 x_trans = -3}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_002.img` color = green_1guitar x_skew = 12 y_skew = -45 x_scale = 14 y_scale = 150 rot = 6073 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_002.img` color = yellow_green_1guitar a = 60 x_trans = 50 x_scale = 54 flags = 3 y_scale = 127}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon002.img` color = grey_2guitar x_trans = -16 y_trans = -44 x_skew = -75 y_skew = -75 x_scale = 103 y_scale = 71 rot = 5863 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Creature002.img` a = 0 x_trans = -21 y_trans = 13 x_skew = -75 y_skew = 72 x_scale = 1 y_scale = 1 rot = 5953 flags = 27 color = yellow_2guitar}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics_spiral.img` x_trans = -50 x_scale = 65 y_scale = 72 flags = 3 color = yellow_orange_2}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_famous_02.img` y_trans = 7 x_scale = 30 y_scale = 30 flags = 3 x_trans = 20}
							{font = fontgrid_title_a1 text = 'b' color = orange_2 x_scale = 76 y_scale = 37 flags = 3 y_trans = -27}
							{font = fontgrid_text_a3 text = 'C' color = red_orange_2 x_trans = -54 x_skew = -18 y_skew = 21 x_scale = 81 y_scale = 136 rot = 6013 flags = 27}
							{font = fontgrid_text_a6 text = 'c' color = red_2 x_trans = -13 y_trans = 17 x_scale = 150 y_scale = 150 flags = 3 rot = 5083}
							{font = fontgrid_text_a8 text = 'D' color = violet_2 x_trans = 19 x_scale = 50 y_scale = 20 flags = 3 y_trans = -42}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_003.img` color = purple_blue_2 a = 65 x_trans = -8 y_trans = 18 y_scale = 138 flags = 3 x_scale = 60}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_003.img` x_trans = -20 y_trans = -33 x_scale = 48 y_scale = 38 rot = 5773 flags = 3 color = blue_2}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_003.img` color = teal_2 a = 45 x_skew = -12 x_scale = 63 y_scale = 68 flags = 3 rot = 570}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon003.img` color = green_2guitar x_trans = 6 x_scale = 37 y_scale = 57 y_trans = -43 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Creature003.img` color = yellow_green_2guitar x_trans = -53 y_trans = 18 x_skew = -21 y_skew = 42 x_scale = 46 y_scale = 82 rot = 5923 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics_punkskull.img` color = grey_3guitar x_trans = -37 y_trans = 27 x_scale = 11 y_scale = 150 rot = 1980 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_famous_01.img` y_trans = -29 x_scale = 30 y_scale = 30 flags = 3 x_trans = -31}
							{font = fontgrid_title_a1 text = 'd' color = yellow_3guitar x_trans = -47 y_trans = -34 x_skew = -39 y_skew = 39 x_scale = 147 y_scale = 36 rot = 5953 flags = 27}
							{font = fontgrid_text_a3 text = 'E' color = yellow_orange_3 x_trans = -15 y_trans = 5 x_scale = 50 y_scale = 50 flags = 3 x_skew = -75}
							{font = fontgrid_text_a6 text = 'e' color = orange_3 y_trans = 18 y_skew = -21 x_scale = 31 y_scale = 25 rot = 6103 flags = 11}
							{font = fontgrid_text_a8 text = 'F' color = red_orange_3 x_trans = 17 y_trans = -8 x_scale = 50 y_scale = 50 flags = 3 a = 20}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_004.img` a = 80 x_trans = -6 y_trans = 16 x_skew = -75 y_skew = 66 x_scale = 14 y_scale = 52 rot = 5983 flags = 3 color = red_3}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_004.img` color = violet_3 x_trans = 22 x_skew = -30 y_skew = 60 x_scale = 23 y_scale = 17 rot = 6043 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_004.img` color = purple_blue_3 a = 55 x_skew = -30 y_skew = 27 x_scale = 141 y_scale = 150 rot = 5563 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon004.img` color = navy_3 x_trans = -73 y_trans = 37 x_scale = 25 y_scale = 9 flags = 3 x_skew = -51}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Creature004.img` a = 60 x_trans = 7 y_trans = 2 x_skew = 21 y_skew = -24 x_scale = 30 y_scale = 24 rot = 6043 flags = 27 color = blue_3}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics005.img` color = teal_3 x_trans = -17 y_trans = 3 x_skew = -24 y_skew = 27 x_scale = 30 y_scale = 21 rot = 5713 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics006.img` color = green_3guitar x_trans = 4 y_trans = -11 x_skew = -18 y_skew = 27 x_scale = 63 y_scale = 43 rot = 90 flags = 3}]}
					{base_tex = `tex\models\Characters\CAR\female\CAR_female_BODY_tat_O_dnc.dds` material = CAR_Male_Body Cas_1
						layers = [{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_005.img` color = grey_4guitar y_trans = -50 x_skew = -18 y_skew = 18 x_scale = 42 y_scale = 30 rot = 5923 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_005.img` color = yellow_4guitar a = 75 y_trans = 43 y_skew = -24 x_scale = 75 y_scale = 39 rot = 5923 flags = 3 x_skew = -72}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_005.img` color = yellow_orange_4 a = 85 x_trans = -21 y_trans = -24 x_scale = 74 y_scale = 70 rot = 6103 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon005.img` color = orange_4 x_trans = 23 y_trans = -28 x_scale = 73 y_scale = 61 rot = 2490 flags = 27 a = 80}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Creature005.img` x_trans = -68 y_trans = 33 x_scale = 45 flags = 3 y_scale = 60}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics007.img` color = red_orange_4 a = 75 x_trans = -49 y_trans = -45 x_skew = -21 y_skew = 33 x_scale = 55 y_scale = 70 rot = 300 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_KFC_01.img` x_trans = -59 x_scale = 30 y_scale = 30 flags = 3 y_trans = -25}
							{font = fontgrid_title_a1 text = 'f' color = red_4 x_trans = -30 y_trans = 28 x_skew = -27 y_skew = 57 x_scale = 63 y_scale = 89 rot = 6133 flags = 11}
							{font = fontgrid_text_a3 text = 'G' color = violet_4 x_trans = 32 y_trans = -44 x_skew = -9 y_skew = 15 x_scale = 38 y_scale = 79 rot = 6133 flags = 27}
							{font = fontgrid_text_a6 text = 'g' color = purple_blue_4 a = 70 x_skew = -51 y_skew = 75 x_scale = 77 y_scale = 77 flags = 27 rot = 5803}
							{font = fontgrid_text_a8 text = 'H' color = blue_4 y_trans = 71 x_skew = -24 y_skew = -33 x_scale = 61 y_scale = 60 rot = 6073 flags = 19}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img` color = green_4guitar x_trans = -52 x_scale = 57 y_scale = 124 flags = 3 a = 35}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_006.img` color = yellow_green_4guitar a = 85 x_trans = -37 y_trans = 25 x_skew = -21 y_skew = -36 x_scale = 64 y_scale = 88 rot = 6043 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_006.img` color = grey_5guitar x_trans = -59 y_trans = -6 x_skew = -9 y_skew = -15 x_scale = 107 y_scale = 35 rot = 6073 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon006.img` color = yellow_5guitar x_trans = -37 x_skew = 33 y_skew = 69 x_scale = 60 y_scale = 123 rot = 5863 flags = 3 y_trans = 14}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Creature006.img` x_trans = -20 y_trans = 61 x_skew = -36 x_scale = 87 y_scale = 79 rot = 4453 flags = 3 y_skew = 51}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics008.img` color = yellow_orange_5 y_trans = -26 x_skew = 36 y_skew = 21 x_scale = 150 y_scale = 150 rot = 240 flags = 3}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_Sabian_01.img` x_scale = 30 y_scale = 30 flags = 3 y_trans = 18}
							{font = fontgrid_title_a1 text = 'h' color = orange_4 x_trans = -60 x_skew = -75 x_scale = 100 y_scale = 100 flags = 3 y_skew = 75}
							{font = fontgrid_text_a3 text = 'I' color = orange_5 x_trans = -55 x_skew = 75 x_scale = 126 y_scale = 100 flags = 3 y_skew = 75}
							{font = fontgrid_text_a6 text = 'i' x_trans = -49 x_skew = -69 y_skew = -75 x_scale = 121 y_scale = 130 flags = 3 rot = 570}
							{font = fontgrid_text_a8 text = 'J' x_trans = -45 x_skew = 48 y_skew = -75 x_scale = 147 y_scale = 143 rot = 450 flags = 27 color = red_5}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img` x_trans = 0 y_trans = 26 x_scale = 67 y_scale = 8 flags = 3 color = violet_5}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_007.img` color = navy_5 x_skew = -12 y_skew = 24 x_scale = 53 y_scale = 64 rot = 210 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_007.img` color = blue_5 a = 40 y_trans = -37 y_skew = -36 x_scale = 53 y_scale = 51 rot = 3613 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon007.img` color = teal_5 a = 60 x_trans = 13 y_trans = 35 x_skew = -21 y_skew = -24 x_scale = 52 y_scale = 39 rot = 6163 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Creature007.img` x_trans = -28 y_trans = -30 x_scale = 49 y_scale = 37 color = green_5guitar flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics009.img` color = yellow_green_5guitar x_trans = 23 y_trans = -28 x_skew = -24 y_skew = 75 x_scale = 30 y_scale = 68 rot = 5983 flags = 19}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_EMG_01.img` x_scale = 30 y_scale = 30 flags = 3 y_trans = -48}
							{font = fontgrid_title_a1 text = 'j' x_trans = 59 y_trans = 100 x_scale = 100 y_scale = 100 flags = 3 color = yellow_green_5guitar}
							{font = fontgrid_text_a3 text = 'K' color = Black_1guitar x_scale = 77 y_scale = 77 flags = 19}
							{font = fontgrid_text_a6 text = 'k' color = yellow_1guitar x_trans = 14 y_trans = 23 x_scale = 100 y_scale = 100 flags = 3 a = 0}
							{font = fontgrid_text_a8 text = 'L' color = yellow_orange_1 x_trans = -23 y_trans = 24 x_scale = 100 flags = 3 y_scale = 150}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_008.img` color = orange_1 a = 60 x_skew = -12 y_skew = 57 x_scale = 21 y_scale = 143 rot = 360 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_008.img` color = red_1 a = 15 x_trans = 29 y_trans = 2 x_scale = 30 y_scale = 71 flags = 3 rot = 6043}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_008.img` x_scale = 1 y_scale = 4 flags = 3 color = violet_4}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon008.img` color = purple_blue_1 x_trans = -44 y_trans = 3 y_skew = 48 x_scale = 55 y_scale = 54 rot = 5383 x_skew = -39 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect001.img` color = green_1guitar x_trans = -87 y_trans = -39 x_skew = -30 y_skew = 36 x_scale = 75 y_scale = 41 rot = 270 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics010.img` x_trans = 20 x_scale = 30 y_scale = 78 flags = 3 y_trans = 65}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics011.img` color = green_1guitar y_trans = -38 x_skew = -75 y_skew = -75 x_scale = 150 y_scale = 30 flags = 27 a = 80}]}
					{base_tex = `tex\models\Characters\CAR\female\CAR_female_ARML_tat_O_dnc.dds` material = CAR_male_ArmL Cas_1
						layers = [{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_013.img` y_trans = 44 x_scale = 1 y_scale = 1 flags = 3 color = Black_1guitar}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_013.img` y_trans = 41 x_scale = 1 y_scale = 1 flags = 3 color = yellow_1guitar}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_013.img` color = yellow_orange_1 y_trans = 38 x_skew = -63 y_skew = 57 x_scale = 1 y_scale = 4 rot = 6043 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon013.img` color = orange_1 y_trans = 37 x_skew = -21 y_skew = -24 x_scale = 1 y_scale = 1 rot = 540 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Wing001.img` color = red_1 x_trans = 4 y_trans = 31 x_skew = -36 x_scale = 1 y_scale = 1 flags = 3 y_skew = -36}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics017.img` color = violet_1 a = 0 y_trans = 19 x_skew = 63 y_skew = -75 x_scale = 1 y_scale = 1 flags = 3 rot = 5983}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_GCaxesmith_01.img` y_trans = -33 x_scale = 30 y_scale = 30 flags = 3 x_trans = 0}
							{font = fontgrid_title_a1 text = 'r' y_trans = 42 x_skew = -27 y_skew = 33 x_scale = 1 y_scale = 1 flags = 3 rot = 990}
							{font = fontgrid_text_a3 text = 'S' y_trans = 20 x_scale = 1 y_scale = 2 flags = 3 x_trans = -37}
							{font = fontgrid_text_a6 text = 's' x_trans = -12 y_trans = 23 y_scale = 1 flags = 3 x_scale = 1}
							{font = fontgrid_text_a8 text = 'T' color = navy_1 y_trans = 40 x_scale = 1 y_scale = 1 flags = 3 x_trans = 39}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_014.img` color = blue_1 x_trans = -18 y_trans = 42 x_skew = -48 y_skew = 36 x_scale = 1 y_scale = 1 rot = 1920 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_014.img` x_trans = 54 y_trans = 27 x_scale = 1 y_scale = 2 flags = 3 color = green_1guitar}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_014.img` x_trans = -30 x_scale = 2 y_scale = 1 flags = 3 y_trans = 22}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon014.img` color = blue_1 y_trans = -42 x_skew = -75 y_skew = 75 x_scale = 1 y_scale = 2 rot = 330 flags = 11 x_trans = -21}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Wing002.img` color = navy_3 x_trans = -71 x_skew = -51 y_skew = 75 x_scale = 1 y_scale = 1 rot = 4213 flags = 27 y_trans = -29}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics018.img` color = yellow_orange_3 x_trans = -15 y_trans = 41 y_skew = -75 x_scale = 1 y_scale = 2 rot = 2370 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_hob_01.img` y_trans = 20 x_scale = 30 y_scale = 30 flags = 3 x_trans = -20}
							{font = fontgrid_title_a1 text = 't' x_trans = -54 x_scale = 1 y_scale = 1 flags = 3 y_trans = -55}
							{font = fontgrid_text_a3 text = 'U' x_trans = 60 y_trans = 35 x_skew = 75 y_skew = 75 x_scale = 1 y_scale = 1 flags = 3 rot = 660}
							{font = fontgrid_text_a6 text = 'u' x_trans = 54 y_trans = -21 x_skew = -30 y_skew = -66 x_scale = 1 y_scale = 1 rot = 180 flags = 27}
							{font = fontgrid_text_a8 text = 'V' color = green_4guitar x_trans = -38 y_trans = -60 x_skew = -39 y_skew = 75 x_scale = 1 y_scale = 1 rot = 3193 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_015.img` y_trans = 43 x_scale = 1 y_scale = 2 flags = 3 x_trans = 66}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_015.img` color = yellow_green_1guitar x_trans = -25 y_trans = -31 x_skew = 15 y_skew = 21 x_scale = 1 y_scale = 6 rot = 270 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_015.img` color = yellow_5guitar x_trans = -58 x_scale = 1 y_scale = 2 flags = 3 y_trans = -60}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon015.img` color = grey_5guitar a = 0 x_scale = 1 flags = 3 y_scale = 1}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics019.img` x_trans = 34 y_trans = 54 x_scale = 1 y_scale = 1 flags = 3 x_skew = -75}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_KFC_02.img` y_trans = -16 x_scale = 30 y_scale = 30 flags = 3 x_trans = 34}
							{font = fontgrid_title_a1 text = 'v' color = teal_3 x_trans = -36 x_skew = -75 y_skew = -75 x_scale = 1 y_scale = 1 rot = 4153 flags = 27 y_trans = -55}
							{font = fontgrid_text_a3 text = 'W' color = purple_blue_3 a = 20 x_skew = -36 y_skew = 39 x_scale = 1 y_scale = 1 rot = 5473 flags = 27 x_trans = 65}
							{font = fontgrid_text_a6 text = 'w' a = 70 x_trans = -28 y_trans = -21 x_skew = -18 y_skew = 30 x_scale = 1 y_scale = 1 rot = 6073 flags = 27 color = yellow_green_3guitar}
							{font = fontgrid_text_a8 text = 'X' color = grey_4guitar x_trans = -21 y_trans = 100 x_skew = -21 y_skew = -27 x_scale = 1 y_scale = 1 rot = 4063 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_016.img` color = yellow_3guitar x_trans = 44 y_trans = -52 x_skew = -3 x_scale = 1 y_scale = 1 flags = 19 rot = 2100}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_016.img` color = navy_2 a = 65 x_trans = 35 y_trans = 33 x_scale = 1 y_scale = 1 x_skew = -75 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_016.img` x_trans = 47 y_trans = -67 x_skew = -27 y_skew = 36 x_scale = 1 y_scale = 1 rot = 3913 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon016.img` x_trans = 11 y_trans = 20 x_skew = -30 y_skew = 72 x_scale = 1 y_scale = 1 rot = 6073 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Wing004.img` color = blue_1 x_trans = -48 y_trans = -52 x_skew = -6 y_skew = -39 x_scale = 1 y_scale = 1 rot = 6163 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics020.img` color = red_orange_2 x_trans = -11 y_trans = -46 x_scale = 1 y_scale = 1 flags = 3 x_skew = -75}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics021.img` color = Black_1guitar a = 20 x_trans = -46 y_trans = -28 x_skew = 66 y_skew = 75 x_scale = 1 y_scale = 1 rot = 6103 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Wing003.img` color = blue_1 x_trans = -65 y_trans = 21 x_skew = -75 x_scale = 1 y_scale = 5 flags = 3 y_skew = 75}]}
					{base_tex = `tex\models\Characters\CAR\female\CAR_female_ARMR_tat_O_dnc.dds` material = CAR_male_ArmR Cas_1
						layers = [{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_009.img` color = grey_2guitar x_trans = -41 x_skew = 24 y_skew = -24 x_scale = 51 y_scale = 118 rot = 6043 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_009.img` color = yellow_2guitar x_trans = -6 y_trans = -42 x_skew = 75 x_scale = 143 y_scale = 35 flags = 3 y_skew = -33}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_009.img` color = yellow_orange_2 a = 75 y_trans = 44 x_skew = 27 y_skew = -21 x_scale = 58 y_scale = 40 rot = 6103 flags = 19}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon009.img` color = orange_2 x_trans = 28 y_trans = -13 x_skew = 72 x_scale = 52 y_scale = 83 flags = 3 y_skew = -75}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect002.img` color = red_orange_2 x_trans = -27 y_trans = 21 x_skew = -18 x_scale = 83 y_scale = 21 y_skew = 30 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics012.img` color = red_2 x_scale = 30 y_scale = 66 flags = 3 x_trans = 32}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_AT_01.img` y_trans = 30 x_scale = 30 y_scale = 30 flags = 3 x_trans = 28}
							{font = fontgrid_title_a1 text = 'l' color = violet_2 x_trans = -15 y_trans = 20 x_scale = 13 y_scale = 100 flags = 3 a = 0}
							{font = fontgrid_text_a3 text = 'M' y_trans = -28 x_skew = -30 x_scale = 100 y_scale = 147 flags = 3 color = purple_blue_2}
							{font = fontgrid_text_a6 text = 'm' color = navy_2 x_trans = 19 y_trans = 18 x_skew = -36 x_scale = 132 y_scale = 150 flags = 3 y_skew = 75}
							{font = fontgrid_text_a8 text = 'N' color = teal_2 x_trans = -30 y_trans = -10 y_skew = -66 x_scale = 100 y_scale = 100 rot = 240 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_010.img` color = green_3guitar a = 40 x_skew = -63 y_skew = -24 x_scale = 150 y_scale = 150 rot = 6073 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_010.img` x_trans = 24 y_trans = -8 x_scale = 30 y_scale = 30 flags = 3 x_skew = 48}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_010.img` color = yellow_green_2guitar a = 55 x_trans = -17 y_trans = 15 y_scale = 44 flags = 3 x_scale = 42}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal002.img` a = 95 x_trans = 35 y_trans = 23 x_skew = -42 y_skew = 45 x_scale = 55 y_scale = 60 rot = 5563 flags = 11 color = Black_1guitar}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon010.img` color = grey_4guitar a = 80 y_trans = -28 x_skew = -33 y_skew = 75 x_scale = 75 y_scale = 111 rot = 5653 flags = 19}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics013.img` y_trans = 24 x_scale = 1 y_scale = 1 flags = 3 x_trans = -22}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_coke_01.img` x_scale = 30 y_scale = 30 flags = 3 y_trans = 41}
							{font = fontgrid_title_a1 text = 'n' color = green_2guitar y_trans = 23 x_skew = -42 x_scale = 124 y_scale = 100 flags = 3 x_trans = -20}
							{font = fontgrid_text_a3 text = 'O' x_scale = 100 y_scale = 100 flags = 3 y_trans = 22}
							{font = fontgrid_text_a6 text = 'o' color = yellow_orange_3 a = 30 x_skew = -30 x_scale = 114 y_scale = 100 rot = 5893 flags = 27}
							{font = fontgrid_text_a8 text = 'P' color = teal_5 x_trans = 30 y_trans = -21 x_skew = -48 y_skew = -27 x_scale = 114 y_scale = 146 rot = 6013 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_011.img` color = navy_1 a = 60 x_trans = -29 y_trans = 56 x_skew = -69 y_skew = -75 x_scale = 30 y_scale = 99 rot = 5293 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_011.img` color = purple_blue_1 x_trans = 0 y_trans = 25 x_scale = 43 y_scale = 30 flags = 3 a = 55}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_011.img` y_trans = 9 x_skew = -33 y_skew = -24 x_scale = 30 y_scale = 30 rot = 5713 flags = 27 x_trans = 53}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon011.img` color = red_3 x_trans = -7 x_scale = 68 y_scale = 46 flags = 3 y_trans = -30}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect003.img` color = navy_3 x_trans = 35 x_scale = 78 y_scale = 150 flags = 3 a = 35}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics014.img` x_trans = -29 x_skew = -45 y_skew = 63 x_scale = 30 y_scale = 79 rot = 5683 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_evans_01.img` y_trans = 34 x_scale = 30 y_scale = 30 flags = 3 x_trans = 37}
							{font = fontgrid_title_a1 text = 'p' color = yellow_3guitar x_trans = 29 y_trans = 15 x_skew = -75 y_skew = -69 x_scale = 118 y_scale = 116 rot = 5773 flags = 27}
							{font = fontgrid_text_a3 text = 'Q' x_trans = -17 y_trans = -36 x_scale = 100 y_scale = 40 flags = 3 color = yellow_green_3guitar}
							{font = fontgrid_text_a6 text = 'q' color = teal_3 x_trans = -20 y_trans = 13 x_scale = 117 y_scale = 113 flags = 3 a = 45}
							{font = fontgrid_text_a8 text = 'R' color = teal_3 x_trans = -29 y_trans = -14 x_skew = -63 x_scale = 122 y_scale = 147 flags = 3 y_skew = 75}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_012.img` x_trans = 16 y_trans = 21 x_scale = 149 y_scale = 1 flags = 3 color = navy_3}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_012.img` x_trans = 43 x_scale = 18 y_scale = 18 flags = 3 color = violet_3}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_012.img` x_trans = 14 y_trans = 26 x_scale = 30 y_scale = 30 flags = 3 color = Black_1guitar}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon012.img` color = red_orange_3 x_trans = -26 y_trans = -25 x_skew = -45 y_skew = 57 x_scale = 22 y_scale = 117 rot = 5953 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal001.img` x_trans = 32 y_trans = -17 x_scale = 67 y_scale = 85 flags = 3 color = blue_1}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics015.img` x_trans = 5 y_trans = 28 x_skew = -57 y_skew = 75 y_scale = 51 rot = 4933 x_scale = 76 flags = 19}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics016.img` color = yellow_orange_3 x_trans = 31 y_trans = 6 x_skew = -39 y_skew = 36 x_scale = 67 y_scale = 42 rot = 5863 flags = 27}]}]}
			cas_physique = {desc_id = MalePhysique
				bones = {Height = 1.0}
				additional_bone_transforms = [{bone = Bone_Neck
						scaling = {value = (0.25, 0.25, 0.25) no_propagate}}
					{bone = Bone_Chest
						scaling = {value = (0.1, 0.4, 0.4) no_propagate}}
					{bone = Bone_Stomach_Upper
						scaling = {value = (0.1, 0.25, 0.25) no_propagate}}
					{bone = Bone_Stomach_Lower
						scaling = {value = (0.1, 0.25, 0.15) no_propagate}}
					{bone = Bone_Collar_R
						scaling = {value = (0.2, 0.2, 0.2) no_propagate}
						translation = {value = (0.0, -0.07, 0.0)}}
					{bone = Bone_Collar_L
						scaling = {value = (0.2, 0.2, 0.2) no_propagate}
						translation = {value = (0.0, -0.07, 0.0)}}
					{bone = Bone_Twist_Bicep_Top_R
						scaling = {value = (0.0, 0.65000004, 0.5) no_propagate}}
					{bone = Bone_Twist_Bicep_Mid_R
						scaling = {value = (0.0, 0.65000004, 0.5) no_propagate}}
					{bone = Bone_Bicep_R
						scaling = {value = (0.0, 0.65000004, 0.5) no_propagate}}
					{bone = Bone_Twist_Bicep_Top_L
						scaling = {value = (0.0, 0.65000004, 0.5) no_propagate}}
					{bone = Bone_Twist_Bicep_Mid_L
						scaling = {value = (0.0, 0.65000004, 0.5) no_propagate}}
					{bone = Bone_Bicep_L
						scaling = {value = (0.0, 0.65000004, 0.5) no_propagate}}
					{bone = Bone_Forearm_L
						scaling = {value = (0.0, 0.5, 0.35000002) no_propagate}}
					{bone = Bone_Forearm_R
						scaling = {value = (0.0, 0.5, 0.35000002) no_propagate}}
					{bone = Bone_Palm_L
						scaling = {value = (0.0, 0.3, 0.3)}}
					{bone = Bone_Palm_R
						scaling = {value = (0.0, 0.3, 0.3)}}
					{bone = Bone_Ankle_R
						scaling = {value = (0.13, 0.0, 0.3)}}
					{bone = Bone_Ankle_L
						scaling = {value = (0.13, 0.0, 0.3)}}]}
			CAS_Eyes = {desc_id = CAR_Demon_Eyes}
			CAS_Male_Hair = {desc_id = M_Rock_Hair_Guitarist
				chosen_materials = {material1 = teal_4}}
			CAS_Male_Hat = {desc_id = none}
			CAS_Male_Facial_Hair = {desc_id = M_Clsc_Fhair_Burns01}
			CAS_Male_Torso = {desc_id = M_Torso_TShirt
				chosen_materials = {material1 = red_orange_3}
				cap = [{base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds` material = M_Torso_TShirt_Primary Cas_1
						layers = [{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_017.img` a = 65 x_trans = -59 y_trans = 18 x_skew = 36 y_skew = -54 x_scale = 29 y_scale = 39 flags = 3 rot = 600}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_017.img` x_trans = -39 y_trans = -25 x_skew = -75 y_skew = -75 x_scale = 21 y_scale = 30 rot = 270 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon017.img` x_trans = -52 y_trans = -11 x_scale = 104 y_scale = 64 flags = 3 color = red_orange_3}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Wing004.img` color = yellow_orange_1 x_trans = -58 y_trans = -13 y_skew = -45 x_scale = 21 y_scale = 127 rot = 510 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics022.img` color = yellow_green_1guitar a = 80 x_trans = -40 y_trans = 18 x_scale = 12 y_scale = 25 flags = 3 x_skew = 57}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_line6_01.img` x_trans = -49 x_scale = 21 y_scale = 30 flags = 3 y_trans = -29}
							{font = fontgrid_title_a1 text = 'x' x_trans = -63 y_trans = -3 x_scale = 80 y_scale = 80 flags = 3 color = orange_1}
							{font = fontgrid_text_a6 text = 'y' x_trans = -39 y_trans = -5 y_skew = -36 x_scale = 80 y_scale = 150 rot = 450 flags = 27 color = green_2guitar}
							{font = fontgrid_text_a8 text = 'Z' x_trans = -50 y_trans = 15 x_scale = 31 y_scale = 44 flags = 3 a = 0}
							{font = fontgrid_text_a3 text = 'Y' color = grey_2guitar x_trans = -51 y_trans = -19 x_scale = 127 y_scale = 80 flags = 3 rot = 5293}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_018.img` x_trans = -59 y_trans = 0 x_skew = -63 y_skew = 21 x_scale = 12 y_scale = 46 rot = 6013 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_018.img` x_trans = -43 y_trans = 13 x_scale = 16 y_scale = 46 rot = 5593 flags = 3 color = teal_2}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon018.img` color = Black_1guitar x_trans = -52 x_scale = 101 y_scale = 73 flags = 3 a = 60}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Wing005.img` x_trans = -56 y_trans = 14 x_scale = 21 y_scale = 30 flags = 3 color = blue_2}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics023.img` x_trans = 44 y_trans = -19 x_skew = 33 y_skew = 21 x_scale = 21 y_scale = 30 rot = 6073 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_Mackie_02.img` x_trans = -47 x_scale = 21 y_scale = 30 flags = 3 y_trans = -3}
							{font = fontgrid_title_a1 text = 'z' a = 25 x_trans = -59 y_trans = 9 x_skew = 75 y_skew = 3 x_scale = 41 y_scale = 91 flags = 3 color = blue_2}
							{font = fontgrid_text_a3 text = '0' color = purple_blue_2 a = 45 x_trans = -50 y_trans = -16 x_skew = 6 y_skew = -75 x_scale = 80 y_scale = 80 rot = 870 flags = 11}
							{font = fontgrid_text_a6 text = '1' color = violet_2 x_trans = -39 y_trans = 9 x_skew = -24 x_scale = 114 y_scale = 32 flags = 3 y_skew = 75}
							{font = fontgrid_text_a8 text = '2' x_trans = -59 y_trans = -9 y_skew = 42 x_scale = 80 y_scale = 80 rot = 5743 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_019.img` color = red_3 a = 80 y_trans = -36 y_skew = 75 x_scale = 14 y_scale = 37 flags = 3 rot = 6133}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_019.img` color = yellow_5guitar y_trans = 28 x_skew = -21 x_scale = 68 y_scale = 63 rot = 6073 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon019.img` y_trans = -20 x_skew = 60 y_skew = -21 x_scale = 149 y_scale = 1 flags = 3 rot = 300}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Wing006.img` x_trans = 23 y_trans = 14 x_scale = 36 y_scale = 41 rot = 5623 flags = 11 x_skew = -36}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics024.img` y_trans = -22 x_scale = 85 y_scale = 61 flags = 3 a = 55}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_Mackie_01.img` x_scale = 21 y_scale = 30 flags = 3 y_trans = 27}
							{font = fontgrid_title_a1 text = '3' color = blue_3 x_trans = -21 y_trans = -20 x_skew = -33 y_skew = 42 x_scale = 26 y_scale = 80 rot = 5773 flags = 27}
							{font = fontgrid_text_a3 text = '4' x_trans = 24 y_trans = -40 x_skew = 27 x_scale = 146 flags = 3 y_scale = 150}
							{font = fontgrid_text_a6 text = '5' color = yellow_orange_3 x_trans = 20 y_trans = -22 y_skew = -33 x_scale = 100 y_scale = 46 rot = 5053 flags = 27}
							{font = fontgrid_text_a8 text = '6' color = navy_3 a = 60 x_trans = -35 y_trans = 46 x_scale = 80 y_scale = 80 rot = 5863 flags = 3 x_skew = -75}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_020.img` y_trans = -39 x_scale = 105 y_scale = 39 flags = 3 color = yellow_4guitar}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon020.img` x_skew = -24 x_scale = 32 y_scale = 30 flags = 3 rot = 660}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Wing007.img` y_trans = 33 x_skew = -51 y_skew = 36 x_scale = 10 y_scale = 41 rot = 150 flags = 3 x_trans = -20}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics025.img` x_trans = 27 x_scale = 60 y_scale = 30 rot = 6013 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_ernieball_01.img` y_trans = -9 x_scale = 21 y_scale = 30 flags = 3 x_trans = -23}
							{font = fontgrid_title_a1 text = '7' color = blue_3 y_trans = -20 x_skew = -33 y_skew = -57 x_scale = 80 y_scale = 150 rot = 450 flags = 27}
							{font = fontgrid_text_a3 text = '8' color = red_orange_4 a = 75 y_trans = -14 x_scale = 146 y_scale = 80 rot = 4753 flags = 3 x_skew = -27}
							{font = fontgrid_text_a6 text = '9' color = Black_1guitar x_trans = 21 y_trans = 17 x_skew = -18 y_skew = 21 x_scale = 107 y_scale = 80 rot = 6073 flags = 27}
							{font = fontgrid_text_a8 text = '!' y_trans = -9 x_scale = 80 y_scale = 91 flags = 3 a = 10}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_021.img` color = purple_blue_5 x_skew = 48 y_skew = 42 x_scale = 70 y_scale = 30 rot = 240 flags = 27}]}]}
			CAS_Male_Legs = {desc_id = M_Glam_Legs_Stripes
				chosen_materials = {material1 = green_2 material2 = yellow_orange_2}}
			CAS_Male_Shoes = {desc_id = M_Goth_Shoes_Spats
				chosen_materials = {material1 = carblack_1 material2 = yellow_orange_5}}
			CAS_Male_Acc_Left = {desc_id = m_bmtl_acc_llars
				chosen_materials = {material1 = yellow_orange_4}}
			CAS_Male_Acc_Right = {desc_id = M_Bmtl_Acc_RLars
				chosen_materials = {material1 = yellow_green_5}}
			CAS_Male_Acc_Face = {desc_id = M_Clsc_Glasses_Round2
				chosen_materials = {material1 = red_1}}
			CAS_Male_Acc_Ears = {desc_id = M_Punk_Acc_Ring}
			CAS_Male_Intro_Anim = {desc_id = Intro_Scary}
			CAS_Male_Win_Anim = {desc_id = Win_Pointing}
			CAS_Male_Lose_Anim = {desc_id = Lose_Tantrum}
			CAS_Male_Age = {desc_id = CAR_Male_Old}
			CAS_Guitar_Body = {desc_id = guitar_body03
				cap = [{base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style3_d_01.dds` material = Guitar_Body_Style_03_Primary diffuse
						pre_layer = [{texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style3_LD_15.img` flags = 4}
							{texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style3_DTL_02.img` flags = 4}]
						layers = [{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_022.img` color = yellow_5guitar a = 85 x_trans = -41 y_trans = 39 x_skew = 21 y_skew = -42 x_scale = 42 y_scale = 84 rot = 5833 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon021.img` x_trans = -38 y_trans = -33 x_skew = -24 y_skew = -54 x_scale = 42 y_scale = 65 rot = 240 flags = 27 color = yellow_orange_5}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Wing008.img` x_trans = -27 y_trans = -14 x_scale = 41 y_scale = 67 flags = 3 color = orange_5}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics026.img` color = red_orange_5 y_trans = 19 x_scale = 50 y_scale = 39 rot = 3943 flags = 3 x_trans = -34}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_marshall_01.img` y_trans = -16 x_scale = 21 y_scale = 40 flags = 3 x_trans = -25}
							{font = fontgrid_title_a1 text = '?' color = red_orange_5 x_trans = 39 y_trans = 66 x_skew = -21 y_skew = 24 x_scale = 53 y_scale = 9 flags = 3 rot = 5923}
							{font = fontgrid_text_a3 text = '@' color = red_5 a = 0 x_trans = 17 x_scale = 77 y_scale = 67 flags = 3 y_trans = -33}
							{font = fontgrid_text_a6 text = '#' color = violet_5 x_trans = -18 y_trans = -10 x_skew = -75 y_skew = -75 x_scale = 59 y_scale = 55 rot = 4783 flags = 27}
							{font = fontgrid_text_a8 text = '$' color = purple_blue_5 a = 85 x_trans = 13 x_scale = 124 y_scale = 99 flags = 3 y_trans = -17}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_023.img` color = teal_5 x_trans = 8 y_trans = 40 x_scale = 66 y_scale = 111 flags = 3 a = 40}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon029.img` color = green_5guitar y_trans = -36 x_scale = 38 y_scale = 61 flags = 3 x_trans = 10}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Wing009.img` x_trans = -11 y_trans = 8 x_scale = 30 y_scale = 23 color = yellow_green_5guitar flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics027.img` color = grey_5guitar x_trans = -26 y_trans = -11 x_skew = -30 y_skew = -75 x_scale = 9 y_scale = 40 rot = 750 flags = 27}
							{font = fontgrid_title_a1 text = '%' a = 0 x_trans = 61 y_trans = -49 x_skew = -69 y_skew = -75 x_scale = 1 y_scale = 4 rot = 5533 flags = 27}
							{font = fontgrid_text_a3 text = '^' color = yellow_4guitar x_trans = 47 y_trans = 59 x_skew = -75 y_skew = -66 x_scale = 69 y_scale = 92 rot = 4423 flags = 11}
							{font = fontgrid_text_a6 text = '&' color = orange_4 x_trans = -3 x_skew = 45 y_skew = -33 x_scale = 60 y_scale = 66 rot = 5893 flags = 11 y_trans = -15}
							{font = fontgrid_text_a8 text = '*' color = red_orange_4 x_trans = 15 y_trans = 52 x_skew = -36 y_skew = 36 x_scale = 150 y_scale = 150 rot = 5803 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_024.img` color = red_4 x_trans = -20 y_trans = -23 x_scale = 10 y_scale = 150 flags = 3 x_skew = -27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon030.img` color = violet_4 x_trans = 24 y_trans = 8 x_skew = -30 y_skew = 33 x_scale = 21 y_scale = 40 rot = 750 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_plant_001.img` color = purple_blue_4 a = 40 x_trans = -20 y_trans = 25 x_skew = 48 y_skew = -48 x_scale = 147 y_scale = 150 rot = 210 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics029.img` x_trans = -20 y_trans = 12 x_skew = -57 y_skew = 39 x_scale = 35 y_scale = 150 rot = 6043 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_OCDP_01.img` y_trans = -11 x_scale = 21 y_scale = 40 flags = 3 x_trans = -22}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_porkpie_01.img` y_trans = 25 x_scale = 21 y_scale = 40 flags = 3 x_trans = 9}
							{font = fontgrid_title_a1 text = '(' x_trans = -37 y_trans = 39 x_scale = 21 y_scale = 1 flags = 3 color = navy_4}
							{font = fontgrid_text_a3 text = ')' color = blue_4 a = 45 x_trans = -20 y_trans = 25 x_skew = -33 y_skew = 69 x_scale = 29 y_scale = 70 rot = 1620 flags = 27}
							{font = fontgrid_text_a6 text = '`' color = green_4guitar a = 60 x_trans = 25 y_trans = -11 x_skew = 36 y_skew = -36 x_scale = 36 y_scale = 40 rot = 1110 flags = 19}
							{font = fontgrid_text_a8 text = ':' color = grey_4guitar a = 10 x_trans = 71 y_trans = -48 x_scale = 21 y_scale = 40 flags = 3 x_skew = -75}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_025.img` color = yellow_4guitar a = 65 x_trans = -20 y_trans = 25 x_skew = -75 y_skew = 18 x_scale = 140 y_scale = 78 rot = 5893 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon031.img` color = teal_4 x_trans = -8 y_trans = -25 x_skew = -27 y_skew = -39 x_scale = 31 y_scale = 52 rot = 270 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_plant_002.img` color = yellow_3guitar x_trans = -18 y_trans = 6 x_scale = 21 y_scale = 40 flags = 3 rot = 1350}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics030.img` x_trans = 10 y_trans = -3 x_skew = -15 y_skew = 30 x_scale = 121 y_scale = 33 rot = 5803 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_regaltip_01.img` y_trans = 32 x_scale = 21 y_scale = 40 flags = 3 x_trans = -36}
							{font = fontgrid_title_a1 text = '-' color = green_4guitar x_trans = -20 y_trans = -4 x_scale = 39 y_scale = 40 flags = 3 x_skew = -75}
							{font = fontgrid_text_a3 text = 'A' color = blue_4 x_trans = 26 y_trans = -18 x_skew = -42 y_skew = 45 x_scale = 21 y_scale = 40 rot = 5593 flags = 27}
							{font = fontgrid_text_a6 text = 'a' color = purple_blue_4 x_trans = -20 y_trans = -25 x_skew = -51 x_scale = 150 y_scale = 148 flags = 3 rot = 5653}
							{font = fontgrid_text_a8 text = 'B' color = green_2guitar a = 50 x_trans = 19 y_trans = 25 x_scale = 82 y_scale = 40 rot = 6283 flags = 11 y_skew = -75}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_026.img` color = purple_blue_4 x_trans = -27 y_trans = 4 x_scale = 34 flags = 3 y_scale = 5}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon033.img` color = red_4 x_trans = 1 x_scale = 81 y_scale = 40 flags = 3 y_trans = -31}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_plant_003.img` x_trans = -20 y_trans = 58 x_skew = -45 y_skew = 75 x_scale = 101 y_scale = 40 rot = 4963 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics031.img` x_trans = -20 y_trans = 25 x_scale = 10 y_scale = 14 rot = 5683 y_skew = 33 flags = 27}]}]}
			CAS_Guitar_Neck = {desc_id = Guitar_Neck03
				cap = [{base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_03.dds` material = Guitar_Neck3_Primary diffuse
						pre_layer = [{texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Tribal2_D_20.img` flags = 36 color = grey_5guitar}]}]}
			CAS_Guitar_Head = {desc_id = Guitar_Head02
				chosen_materials = {material1 = grey_2guitar}
				cap = [{base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock02_d_01.dds` material = Headstock2_Primary diffuse
						pre_layer = [{texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_LD_01.img` color = red_orange_1 flags = 36 a = 55}
							{texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_DTL_04.img` flags = 36}]
						layers = [{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_027.img` color = Black_1guitar x_trans = -25 y_trans = 2 x_scale = 150 flags = 3 y_scale = 150}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_icons044.img` color = yellow_1guitar x_trans = -25 y_trans = 2 x_scale = 148 flags = 3 y_scale = 150}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Veggie001.img` color = yellow_orange_1 x_trans = -25 y_trans = 2 x_scale = 149 y_scale = 150 x_skew = -75 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics032.img` color = orange_2 x_trans = -25 y_trans = 2 x_scale = 150 flags = 3 y_scale = 150}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_Vox_01.img` y_trans = 2 x_scale = 26 y_scale = 55 flags = 3 x_trans = 1}
							{font = fontgrid_title_a1 text = 'b' x_trans = -25 y_trans = 2 x_scale = 148 flags = 3 y_scale = 150}
							{font = fontgrid_text_a3 text = 'C' x_trans = -61 y_trans = -13 x_scale = 150 y_scale = 150 flags = 27}
							{font = fontgrid_text_a6 text = 'D' color = red_1 x_trans = 13 y_trans = -35 y_skew = 27 x_scale = 149 y_scale = 150 flags = 3 x_skew = -33}
							{font = fontgrid_text_a8 text = 'E' color = yellow_green_1guitar x_trans = -25 y_trans = 2 x_skew = -39 y_skew = 36 x_scale = 150 y_scale = 150 rot = 6073 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_028.img` color = green_1guitar a = 80 y_trans = 2 x_scale = 147 y_scale = 150 flags = 3 x_trans = 12}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_icons045.img` color = teal_1 x_trans = -25 y_trans = -43 x_scale = 148 y_scale = 150 rot = 5683 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Veggie002.img` color = blue_1 y_trans = 1 x_scale = 147 y_scale = 150 flags = 3 x_trans = -42}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics033.img` color = navy_1 y_trans = 2 x_skew = -75 y_skew = 75 x_scale = 150 y_scale = 150 rot = 5983 flags = 11 x_trans = 18}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_wrigleys_01.img` y_trans = -21 x_scale = 26 y_scale = 55 flags = 3 x_trans = -46}
							{font = fontgrid_title_a1 text = 'F' color = violet_1 y_trans = -8 x_scale = 150 y_scale = 150 flags = 3 x_trans = -46}
							{font = fontgrid_text_a3 text = 'G' color = red_2 x_trans = -25 y_trans = -21 x_scale = 150 y_scale = 150 flags = 3 x_skew = 63}
							{font = fontgrid_text_a6 text = 'H' color = red_orange_2 x_trans = -6 y_trans = 2 x_skew = -75 y_skew = -75 x_scale = 150 y_scale = 150 rot = 270 flags = 27}
							{font = fontgrid_text_a8 text = 'I' color = orange_2 x_trans = -5 y_trans = 2 x_scale = 148 y_scale = 150 x_skew = 63 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_029.img` color = yellow_2guitar x_trans = -76 y_trans = 2 x_skew = -30 y_skew = -69 x_scale = 150 y_scale = 150 rot = 5503 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_icons046.img` color = green_2guitar x_trans = -25 y_trans = 2 x_skew = 54 y_skew = 75 x_scale = 150 y_scale = 150 rot = 5563 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Veggie003.img` color = teal_2 x_trans = -25 y_trans = -75 x_scale = 147 y_scale = 150 rot = 4873 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics034.img` color = navy_2 x_trans = -25 x_scale = 148 y_scale = 148 flags = 3 y_trans = 48}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_zildjian_01.img` y_trans = -33 x_scale = 26 y_scale = 55 flags = 3 x_trans = -35}
							{font = fontgrid_title_a1 text = 'j' color = violet_2 x_trans = -25 y_trans = -8 x_skew = 39 y_skew = -21 x_scale = 150 y_scale = 150 rot = 6193 flags = 11}
							{font = fontgrid_text_a3 text = 'k' x_trans = -25 y_trans = 31 x_scale = 149 y_scale = 150 flags = 3 color = red_3}
							{font = fontgrid_text_a6 text = 'L' color = red_orange_2 x_trans = 5 y_trans = -27 x_skew = -42 y_skew = 63 x_scale = 148 y_scale = 150 rot = 5893 flags = 27}
							{font = fontgrid_text_a8 text = 'm' color = yellow_3guitar y_trans = 2 x_skew = -27 x_scale = 150 y_scale = 148 x_trans = -43 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_030.img` color = grey_3guitar x_trans = -25 y_trans = 36 x_skew = -33 y_skew = -21 x_scale = 148 y_scale = 150 rot = 6103 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_icons047.img` color = yellow_green_3guitar x_trans = -3 y_trans = -13 x_skew = -27 y_skew = -33 x_scale = 147 y_scale = 150 rot = 5953 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Veggie004.img` color = green_3guitar x_trans = -25 y_trans = -7 x_skew = -75 y_skew = -75 x_scale = 149 y_scale = 150 rot = 5683 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics035.img` color = teal_3 a = 60 x_trans = -25 y_trans = 2 x_skew = 39 y_skew = 54 x_scale = 150 y_scale = 150 rot = 6043 flags = 27}
							{font = fontgrid_title_a1 text = 'N' color = teal_3 y_trans = 16 x_skew = 36 x_scale = 150 y_scale = 150 flags = 3 x_trans = -2}
							{font = fontgrid_text_a3 text = 'O' color = blue_3 x_trans = -39 y_trans = -29 x_skew = 45 y_skew = -63 x_scale = 150 y_scale = 150 rot = 6103 flags = 27}
							{font = fontgrid_text_a6 text = 'p' color = violet_3 x_trans = -54 y_trans = 13 x_skew = 33 x_scale = 150 y_scale = 150 rot = 6013 flags = 27}
							{font = fontgrid_text_a8 text = 'q' color = yellow_orange_3 x_trans = -7 x_scale = 150 y_scale = 150 flags = 3 y_trans = -23}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_031.img` color = orange_3 x_trans = -1 x_skew = -75 y_skew = 75 x_scale = 150 y_scale = 150 rot = 5863 flags = 27 y_trans = -40}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_icons048.img` color = navy_3 x_trans = -25 y_trans = 2 x_skew = -30 y_skew = -51 x_scale = 150 y_scale = 150 rot = 390 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Veggie005.img` color = purple_blue_3 x_trans = 45 y_trans = -43 x_skew = 75 x_scale = 150 y_scale = 150 flags = 3 a = 30}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics036.img` color = red_orange_4 a = 45 x_trans = -25 y_trans = 89 y_skew = -75 x_scale = 148 y_scale = 150 rot = 180 flags = 3 x_skew = -33}
							{font = fontgrid_title_a1 text = 'r' color = teal_4 x_trans = -24 y_trans = -42 x_scale = 150 y_scale = 150 flags = 3 rot = 300}]}]}
			CAS_Guitar_Pickguards = {desc_id = GTR_Body3_PickG01}
			CAS_Guitar_Bridges = {desc_id = GTR_Hardware01a
				chosen_materials = {material1 = grey_2guitar}}
			CAS_Guitar_Knobs = {desc_id = GTR3_Knob_Type5_03}
			CAS_Guitar_Pickups = {desc_id = GTR_Pickup_Type1_Blk_3
				chosen_materials = {material1 = Black_1guitar}}
			CAS_Guitar_Strings = {desc_id = Super_Slinky}
			CAS_Guitar_Highway = {desc_id = JudyHighway}
			CAS_Bass_Body = {desc_id = CAB_Body_Bandera
				cap = [{base_tex = `tex\models\CAR_Instruments\guitars\gtr_body_style17_d.dds` material = Guitar_Body_Bandera_Primary diffuse
						pre_layer = [{texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style17_LD_ChrB.img` flags = 4}
							{texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style17_DTL_Pin.img` flags = 4}]
						layers = [{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_055.img` a = 40 x_trans = -44 y_trans = 45 x_scale = 32 y_scale = 95 x_skew = -75 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_016.img` color = yellow_green_1guitar a = 60 x_trans = 62 y_trans = 35 x_skew = -39 y_skew = -36 x_scale = 29 y_scale = 59 rot = 4183 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_019.img` color = green_1guitar a = 60 x_trans = -60 y_trans = -30 x_skew = -36 y_skew = 33 x_scale = 118 y_scale = 125 rot = 1230 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Cag_Proto/CAG_Sticker01.img` color = teal_1 a = 60 x_trans = -26 x_scale = 71 y_scale = 150 flags = 3 y_trans = -47}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Veggie006.img` color = blue_1 a = 45 x_trans = -45 y_trans = 20 x_skew = -33 y_skew = 42 x_scale = 77 y_scale = 75 rot = 6193 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon035.img` color = navy_1 a = 60 x_trans = -45 y_trans = 43 x_skew = 48 y_skew = 33 x_scale = 85 y_scale = 97 rot = 180 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_zildjian_01.img` y_trans = -19 x_scale = 40 y_scale = 80 flags = 3 x_trans = -14}
							{font = fontgrid_title_a1 text = '-' color = violet_1 a = 100 x_trans = -32 y_trans = -37 x_skew = -33 y_skew = 75 x_scale = 40 y_scale = 62 rot = 4783 flags = 27}
							{font = fontgrid_text_a3 text = 'A' color = red_1 a = 70 x_trans = 13 y_trans = 53 x_skew = -39 y_skew = -75 x_scale = 110 y_scale = 122 flags = 3 rot = 6253}
							{font = fontgrid_text_a6 text = ':' x_trans = -26 y_trans = -3 x_scale = 40 y_scale = 80 flags = 3 rot = 720}
							{font = fontgrid_text_a8 text = 'a' x_trans = -66 x_scale = 40 y_scale = 80 flags = 3 y_trans = -32}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_054.img` x_trans = -26 y_trans = -3 x_scale = 77 y_scale = 113 flags = 3 color = red_orange_1}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_015.img` color = yellow_orange_1 x_trans = -44 y_trans = -16 x_scale = 51 y_scale = 80 flags = 3 y_skew = 75}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_018.img` a = 80 x_trans = -7 y_trans = 44 x_scale = 63 y_scale = 145 flags = 3 color = yellow_1guitar}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_icons058.img` color = yellow_green_2guitar x_trans = -26 y_trans = -3 x_skew = -27 x_scale = 116 y_scale = 22 flags = 3 rot = 1380}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Veggie005.img` color = navy_2 a = 40 x_trans = -26 y_trans = -3 x_skew = -45 y_skew = -39 x_scale = 121 y_scale = 144 flags = 3 rot = 510}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon032.img` color = yellow_orange_3 a = 55 x_trans = -26 y_trans = -3 x_scale = 106 y_scale = 101 rot = 1800 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_wrigleys_01.img` y_trans = 10 x_scale = 40 y_scale = 80 flags = 3 x_trans = -43}
							{font = fontgrid_title_a1 text = '`' y_trans = -3 x_skew = -51 y_skew = 51 x_scale = 40 y_scale = 80 rot = 5953 flags = 3 x_trans = 9}
							{font = fontgrid_text_a3 text = 'B' color = yellow_green_3guitar a = 25 x_trans = -82 y_trans = -3 x_scale = 40 y_scale = 80 flags = 3 rot = 4303}
							{font = fontgrid_text_a6 text = ')' color = purple_blue_3 y_trans = -3 x_scale = 148 y_scale = 149 flags = 3 x_trans = -47}
							{font = fontgrid_text_a8 text = 'b' color = red_3 x_trans = -27 x_skew = -51 x_scale = 148 y_scale = 150 rot = 5833 flags = 3 y_trans = 29}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_053.img` color = grey_4guitar x_trans = -26 y_trans = -3 x_skew = -75 y_skew = -75 x_scale = 1 y_scale = 1 rot = 450 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_014.img` color = green_4guitar a = 70 x_trans = -26 y_trans = -3 x_skew = 75 y_skew = 60 x_scale = 149 y_scale = 150 rot = 6013 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_017.img` color = teal_4 x_trans = -37 y_trans = 37 x_scale = 74 y_scale = 80 flags = 3 a = 40}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_icons057.img` x_trans = -26 y_trans = -14 x_skew = -21 y_skew = 36 x_scale = 37 y_scale = 51 rot = 5653 flags = 3 color = yellow_4guitar}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Veggie004.img` color = Black_1guitar y_trans = 1 x_scale = 64 y_scale = 80 flags = 3 x_trans = 17}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_elemental007.img` color = purple_blue_2 x_trans = -32 x_scale = 69 y_scale = 76 flags = 3 y_trans = -29}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_Vox_01.img` x_trans = 2 x_scale = 40 y_scale = 80 flags = 3 y_trans = 17}
							{font = fontgrid_title_a1 text = 'B' x_trans = -26 y_trans = -3 x_scale = 40 y_scale = 80 flags = 3 a = 0}
							{font = fontgrid_text_a3 text = '(' color = purple_blue_4 x_trans = -59 y_trans = 23 x_skew = -33 y_skew = -42 x_scale = 40 y_scale = 80 rot = 5983 flags = 27}
							{font = fontgrid_text_a6 text = 'c' color = red_orange_4 x_trans = -6 y_trans = -24 x_skew = -36 y_skew = -33 x_scale = 40 y_scale = 80 rot = 5923 flags = 19}
							{font = fontgrid_text_a8 text = 'C' color = yellow_orange_4 y_trans = -30 x_skew = -66 x_scale = 148 y_scale = 150 flags = 3 x_trans = -40}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_052.img` color = violet_1 x_trans = -26 y_trans = -11 x_skew = -54 y_skew = -21 x_scale = 58 y_scale = 110 rot = 6103 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_013.img` color = Black_1guitar x_trans = 1 y_trans = -11 x_scale = 28 y_scale = 113 flags = 3 a = 75}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_016.img` a = 55 x_trans = -26 y_trans = -3 x_scale = 90 y_scale = 43 flags = 3 color = yellow_orange_2}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics073.img` x_trans = -8 y_trans = -27 x_skew = -30 y_skew = 51 x_scale = 24 y_scale = 29 rot = 480 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Veggie003.img` color = blue_3 x_trans = -13 x_skew = -6 x_scale = 20 y_scale = 42 flags = 3 y_trans = 25}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_elemental006.img` x_trans = -29 y_trans = -3 x_scale = 149 y_scale = 91 rot = 1590 flags = 3 color = yellow_orange_4}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_regaltip_01.img` y_trans = -28 x_scale = 40 y_scale = 80 flags = 3 x_trans = -15}]}]}
			CAS_Bass_Neck = {desc_id = CAB_Neck_BN1A
				cap = [{base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01_maple_d_mls.dds` material = CAB_NECK_BN1A_Neck diffuse
						pre_layer = [{texture = `tex/models/Characters/Layers/CAB/cab_nek_lyrmpl_blk_wht.img` flags = 4 color = grey_1}]}]}
			CAS_Bass_Head = {desc_id = CAB_Head_BHPhnq01
				cap = [{base_tex = `tex/models/Car_Instruments/Bass/cab_head_bh8a.dds` material = CAB_Head_Phunquie01_Headstock diffuse
						pre_layer = [{texture = `tex/models/Characters/Layers/CAG/All_Clear.img` flags = 36}
							{texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH8A_DTL_04.img` flags = 36}]
						layers = [{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_001.img` color = Black_1guitar x_trans = -1 y_trans = -14 y_skew = -21 x_scale = 1 y_scale = 71 rot = 5833 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_001.img` color = yellow_5guitar a = 75 x_trans = -10 y_trans = 2 x_skew = -30 y_skew = -9 x_scale = 149 y_scale = 1 flags = 3 rot = 5503}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_001.img` color = yellow_orange_1 x_trans = -26 y_trans = -14 x_skew = -75 y_skew = 27 x_scale = 114 y_scale = 45 rot = 6013 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon009.img` x_trans = -42 y_trans = -34 x_scale = 28 y_scale = 62 color = red_orange_5 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal001.img` color = red_1 x_trans = -45 x_skew = 75 y_skew = -69 x_scale = 20 y_scale = 45 rot = 5323 flags = 27 y_trans = 9}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics018.img` color = violet_5 a = 60 y_trans = -31 x_scale = 39 y_scale = 108 flags = 3 x_trans = -40}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_Mackie_01.img` x_trans = -26 x_scale = 20 y_scale = 45 flags = 3 y_trans = 8}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_GCaxesmith_01.img` y_trans = -3 x_scale = 20 y_scale = 45 flags = 3 x_trans = -4}
							{font = fontgrid_title_a1 text = 'k' color = purple_blue_1 x_trans = -26 y_trans = -14 x_skew = 21 x_scale = 115 y_scale = 86 rot = 6193 flags = 11}
							{font = fontgrid_text_a3 text = 'N' y_trans = -25 x_scale = 4 y_scale = 3 flags = 3 x_trans = 5}
							{font = fontgrid_text_a6 text = '&' color = navy_5 a = 60 x_trans = 25 y_trans = -52 x_skew = 45 y_skew = 15 x_scale = 47 y_scale = 45 rot = 6073 flags = 19}
							{font = fontgrid_text_a8 text = 'U' color = teal_1 y_trans = -14 x_skew = -69 x_scale = 42 y_scale = 45 rot = 4663 flags = 11 x_trans = -1}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_013.img` color = green_5guitar x_trans = 2 y_trans = 0 x_skew = 15 x_scale = 74 flags = 3 y_scale = 1}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_007.img` y_trans = -2 x_scale = 23 y_scale = 30 flags = 3 x_trans = -54}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_011.img` color = yellow_green_1guitar x_trans = -40 x_scale = 82 y_scale = 6 flags = 3 y_trans = -37}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon019.img` color = grey_4guitar x_trans = -26 y_trans = -15 x_skew = -75 y_skew = 75 x_scale = 20 y_scale = 45 rot = 4783 flags = 19}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_plant_001.img` color = yellow_1guitar x_trans = -26 y_trans = -14 x_scale = 134 y_scale = 148 flags = 3 a = 35}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_banners010.img` color = yellow_orange_5 a = 95 x_trans = -26 x_scale = 109 y_scale = 57 flags = 3 y_trans = 15}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_wrigleys_01.img` y_trans = -14 x_scale = 20 y_scale = 45 flags = 3 x_trans = -45}
							{font = fontgrid_title_a1 text = 'v' x_trans = -26 y_trans = -14 x_scale = 20 y_scale = 45 rot = 4843 flags = 27}
							{font = fontgrid_text_a3 text = 'o' x_trans = -53 x_scale = 20 y_scale = 45 flags = 3 y_trans = 35}
							{font = fontgrid_text_a6 text = '4' color = yellow_green_1guitar a = 55 x_trans = 4 y_trans = 6 x_scale = 7 y_scale = 45 flags = 3 x_skew = -75}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_046.img` color = orange_1 y_trans = -33 x_scale = 30 y_scale = 56 flags = 3 x_trans = -46}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_008.img` color = red_orange_5 y_trans = 5 x_skew = 51 x_scale = 106 y_scale = 65 flags = 3 x_trans = 19}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_012.img` color = red_1 x_trans = -47 x_scale = 40 y_scale = 67 flags = 3 y_trans = 3}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon022.img` color = violet_5 x_trans = -2 y_trans = 8 x_skew = -27 y_skew = 39 x_scale = 113 y_scale = 73 rot = 5953 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect003.img` color = purple_blue_1 y_trans = -22 x_skew = 75 x_scale = 20 y_scale = 67 rot = 5473 flags = 3 x_trans = -41}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_banners009.img` color = navy_5 a = 50 x_trans = -43 x_scale = 71 y_scale = 45 flags = 3 y_trans = 29}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_line6_01.img` y_trans = 6 x_scale = 20 y_scale = 45 flags = 3 x_trans = -3}
							{font = fontgrid_title_a1 text = 'F' x_trans = -26 x_scale = 20 y_scale = 45 flags = 3 y_trans = -99}
							{font = fontgrid_text_a8 text = '(' a = 15 y_trans = -14 x_scale = 8 y_scale = 18 flags = 3 x_trans = -100}
							{font = fontgrid_text_a3 text = '-' x_trans = 99 x_scale = 20 y_scale = 45 flags = 3 y_trans = 99}
							{font = fontgrid_text_a6 text = 'G' x_trans = -26 y_trans = -14 y_skew = 75 x_scale = 20 y_scale = 45 rot = 2130 x_skew = 75 flags = 27}
							{font = fontgrid_text_a8 text = '*' color = teal_5 a = 65 x_trans = 57 y_trans = -32 x_scale = 70 flags = 3 y_scale = 84}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_018.img` color = yellow_green_3guitar a = 40 x_trans = -26 y_trans = -14 x_scale = 41 y_scale = 89 flags = 3 y_skew = 75}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_012.img` color = grey_2guitar x_trans = -12 y_trans = 29 x_skew = -48 y_skew = -45 x_scale = 62 y_scale = 68 rot = 660 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_009.img` color = navy_3 x_trans = -12 y_trans = -3 x_scale = 45 y_scale = 54 flags = 3 a = 30}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon041.img` color = Black_1guitar x_trans = -26 x_skew = -33 x_scale = 20 y_scale = 115 rot = 5653 flags = 3 y_trans = 26}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Veggie003.img` x_trans = -11 x_skew = 75 y_skew = -48 x_scale = 20 y_scale = 45 rot = 2550 flags = 27 y_trans = -13}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_elemental003.img` color = blue_3 x_trans = -26 y_trans = -14 x_scale = 78 y_scale = 45 flags = 3 rot = 930}]}]}
			CAS_Bass_Pickguards = {desc_id = CAB_Phnq_PG002
				cap = [{base_tex = `tex/models/Car_Instruments/Bass/cab_phnq_pg001b.dds` material = CAB_Phnq_PG002_Primary diffuse
						pre_layer = [{texture = `tex/models/Characters/Layers/CAB/CAB_Phnq_PG001_TORT.img` flags = 36}]}]}
			CAS_Bass_Pickups = {desc_id = CAB_Bumbl_pickup_A3}
			CAS_Bass_Bridges = {desc_id = CAB_Bridge_BB2A}
			CAS_Bass_Knobs = {desc_id = cab_knob_phunq10}
			CAS_Bass_Strings = {desc_id = Regular_Slinky}
			CAS_Bass_Highway = {desc_id = CaseyHighway}
			CAS_Drums = {desc_id = basic
				cap = [{base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds` material = CAD_Drums_01_Primary diffuse
						pre_layer = [{texture = `tex/models/characters/layers/cadrm/drumshell_ds_51.img` flags = 32}]}
					{base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds` material = CAD_Drums_01_Bassdrum diffuse
						pre_layer = [{texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_42.img` flags = 4}]
						layers = [{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_021.img` color = yellow_orange_2 x_trans = -32 x_scale = 110 y_scale = 90 flags = 3 y_trans = -17}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_009.img` color = orange_2 a = 65 y_trans = -38 x_skew = 45 y_skew = -21 x_scale = 124 rot = 540 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_015.img` color = red_orange_2 a = 100 x_trans = -27 y_trans = -10 x_skew = -21 y_skew = 27 x_scale = 90 y_scale = 128 rot = 5983 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_016.img` color = red_2 a = 85 x_trans = 35 y_trans = -19 x_skew = -24 x_scale = 74 y_scale = 79 flags = 3 y_skew = -33}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_013.img` color = violet_2 y_trans = -38 x_skew = 45 y_skew = 54 x_scale = 20 y_scale = 25 rot = 4153 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_015.img` color = purple_blue_2 y_trans = 21 x_scale = 106 flags = 3 x_trans = 34}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_002.img` color = navy_2 a = 65 x_trans = -17 y_trans = 54 x_skew = -42 y_skew = -24 x_scale = 39 y_scale = 126 rot = 360 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_003.img` color = teal_2 a = 80 x_trans = 11 y_trans = -58 x_skew = 75 y_skew = -75 x_scale = 109 y_scale = 129 rot = 5233 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_001.img` color = green_2guitar a = 70 x_trans = 36 y_trans = 8 x_skew = -21 y_skew = -21 x_scale = 22 y_scale = 91 rot = 840 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_016.img` color = yellow_green_2guitar a = 75 x_trans = -16 y_trans = -16 x_scale = 146 y_scale = 1 rot = 4363 flags = 19}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_004.img` color = green_4guitar y_trans = -30 y_skew = 36 rot = 5533 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_008.img` color = teal_3 a = 70 x_trans = -32 y_trans = -53 x_skew = 42 y_skew = 69 x_scale = 115 y_scale = 119 rot = 3343 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon027.img` color = blue_3 a = 80 x_trans = -48 y_trans = 56 x_skew = 21 y_skew = -33 x_scale = 110 y_scale = 111 rot = 4513 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon026.img` color = navy_3 a = 70 x_trans = 38 y_trans = -26 x_scale = 126 y_scale = 123 flags = 3 rot = 1410}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_icons043.img` x_trans = 8 x_skew = -69 y_skew = -57 x_scale = 54 y_scale = 48 rot = 720 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_icons050.img` x_trans = -33 x_scale = 74 y_scale = 120 flags = 3 y_trans = -68}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Creature001.img` color = purple_blue_3 a = 65 x_trans = 0 y_trans = 46 x_skew = -51 y_skew = 75 x_scale = 42 y_scale = 45 flags = 27 rot = 3030}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_plant_003.img` x_scale = 60 y_scale = 43 flags = 3 y_trans = -47}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Veggie006.img` color = violet_3 a = 50 x_skew = 75 y_skew = -75 x_scale = 148 y_scale = 149 flags = 11 rot = 5893}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Veggie001.img` color = red_3 a = 65 x_trans = -28 y_trans = 8 y_skew = -69 x_scale = 1 y_scale = 1 rot = 5923 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics110.img` x_trans = -52 rot = 5323 flags = 3 y_skew = -66}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics105.img` color = yellow_3guitar a = 65 x_trans = 56 y_trans = -18 x_scale = 126 flags = 3 y_scale = 150}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics091.img` x_scale = 90 y_scale = 58 y_trans = 45 flags = 19}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics046.img` x_skew = 42 x_scale = 69 y_scale = 51 rot = 510 y_skew = 72 flags = 27}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics039.img` color = navy_3 y_trans = -36 x_skew = -30 y_skew = 21 x_scale = 143 y_scale = 17 rot = 270 flags = 11}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_KFC_01.img` y_trans = 31 flags = 3 x_trans = -37}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_EMG_01.img` x_trans = 43 flags = 3 y_trans = -24}
							{texture = `tex/models/Characters/Skater_Male/Decals/CAG_sponsors_coke_01.img` y_trans = -30 flags = 3 x_trans = -33}
							{font = fontgrid_title_a1 text = 'z' color = yellow_green_4guitar x_trans = 43 flags = 3 x_skew = -54}
							{font = fontgrid_title_a1 text = 'Z' color = green_3guitar y_trans = 38 x_skew = 63 y_skew = -18 rot = 6133 flags = 27}
							{font = fontgrid_title_a1 text = 'y' x_trans = -43 flags = 3 color = grey_3guitar}
							{font = fontgrid_text_a3 text = '9' color = yellow_4guitar y_trans = -42 x_skew = 75 y_skew = -33 rot = 6073 flags = 19}
							{font = fontgrid_text_a3 text = '8' color = yellow_orange_3 x_trans = 30 y_trans = 27 x_scale = 49 flags = 3 y_scale = 39}
							{font = fontgrid_text_a3 text = 'E' color = red_3 a = 30 x_trans = -30 y_trans = 29 rot = 5833 flags = 11}
							{font = fontgrid_text_a3 text = 'm' color = purple_blue_4 x_trans = -26 y_trans = -33 x_scale = 108 y_scale = 119 flags = 3 x_skew = -45}
							{font = fontgrid_text_a6 text = ':' a = 85 x_trans = 28 y_trans = -30 rot = 450 flags = 27 color = navy_4}
							{font = fontgrid_text_a6 text = 'C' color = green_2guitar x_trans = -24 y_trans = -3 x_scale = 90 y_scale = 10 flags = 3 x_skew = -48}
							{font = fontgrid_text_a6 text = '5' x_trans = 26 y_trans = 7 x_skew = -75 x_scale = 69 rot = 4693 flags = 3 color = teal_5}
							{font = fontgrid_text_a8 text = '*' color = red_5 x_trans = -14 y_trans = -28 x_skew = 24 y_skew = -27 x_scale = 3 y_scale = 4 rot = 6073 flags = 27}
							{font = fontgrid_text_a8 text = 'K' color = Black_1guitar x_trans = 6 y_trans = -3 x_skew = 72 y_skew = -75 x_scale = 143 y_scale = 150 rot = 4243 flags = 27}]}]}
			CAS_Drums_Sticks = {desc_id = Drumsticks1}
			CAS_Drums_Highway = {desc_id = JudyHighway}
			CAS_Mic = {desc_id = mic_standard}
			CAS_Mic_Stand = {desc_id = mic_stand_metal}
		}
	}
	add_new_custom_profile profile = <profile> savegame = <savegame>
	i = (<i> + 1)
	repeat 4
endscript
