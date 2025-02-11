guitarist_info = {
	anim_set = judy_animations
	stance = stance_frontend
	finger_anims = guitarist_finger_anims_large
	fret_anims = guitarist_fret_anims
	strum = Normal
	guitar_model = None
	playing_missed_note = FALSE
	last_strum_length = short
	current_anim = Idle
	anim_repeat_count = 1
	arms_disabled = 0
	disable_arms = 0
	cycle_anim = FALSE
	next_stance = stance_frontend
	next_anim = None
	next_anim_repeat_count = 1
	next_anim_disable_arms = 0
	cycle_next_anim = FALSE
	last_anim_name = None
	waiting_for_cameracut = FALSE
	allow_movement = true
	target_node = None
	facial_anim = Idle
	Scale = 1.0
}
bassist_info = {
	anim_set = axel_animations
	stance = stance_frontend
	finger_anims = guitarist_finger_anims_large
	fret_anims = guitarist_fret_anims
	strum = Normal
	bass_model = None
	playing_missed_note = FALSE
	last_strum_length = short
	current_anim = Idle
	anim_repeat_count = 1
	arms_disabled = 0
	disable_arms = 0
	cycle_anim = FALSE
	next_stance = stance_frontend
	next_anim = None
	next_anim_repeat_count = 1
	next_anim_disable_arms = 0
	cycle_next_anim = FALSE
	last_anim_name = None
	waiting_for_cameracut = FALSE
	allow_movement = true
	target_node = None
	facial_anim = Idle
	Scale = 1.0
}
vocalist_info = {
	anim_set = vocalist_animations
	stance = Stance_A
	current_anim = Idle
	anim_repeat_count = 1
	disable_arms = 0
	arms_disabled = 0
	cycle_anim = FALSE
	next_stance = Stance_A
	next_anim = None
	next_anim_repeat_count = 1
	next_anim_disable_arms = 0
	cycle_next_anim = FALSE
	last_anim_name = None
	allow_movement = true
	target_node = None
	facial_anim = Idle
	Scale = 1.0
}
drummer_info = {
	TWIST = 0.0
	desired_twist = 0.0
	anim_set = drummer_animations
	stance = Stance_A
	current_anim = Idle
	anim_repeat_count = 1
	disable_arms = 0
	arms_disabled = 0
	cycle_anim = FALSE
	next_stance = Stance_A
	next_anim = None
	next_anim_repeat_count = 1
	next_anim_disable_arms = 0
	cycle_next_anim = FALSE
	last_anim_name = None
	allow_movement = true
	target_node = None
	facial_anim = Idle
	last_left_arm_note = 0
	last_right_arm_note = 0
	Scale = 1.0
}
current_bass_model = None

script create_band \{async = 0}
	if ($disable_band = 1)
		return
	endif
	GetPakManCurrent \{map = zones}
	if (<pak> = z_credits)
		if NOT create_guitarist async = <async>
			return \{FALSE}
		endif
		unload_character \{Name = BASSIST}
		unload_character \{Name = vocalist}
		unload_character \{Name = drummer}
		set_bandvisible
		return \{true}
	endif
	if ($current_num_players = 1)
		if NOT create_guitarist async = <async>
			return \{FALSE}
		endif
		if NOT create_drummer async = <async>
			return \{FALSE}
		endif
		get_song_struct song = ($current_song)
		if StructureContains structure = <song_struct> Name = BASSIST
			bassist_profile = (<song_struct>.BASSIST)
			if NOT create_bassist profile_name = <bassist_profile> async = <async>
				return \{FALSE}
			endif
		else
			if NOT create_bassist async = <async>
				return \{FALSE}
			endif
		endif
		if StructureContains structure = <song_struct> Name = singer
			if (<song_struct>.singer = None)
				if CompositeObjectExists \{Name = vocalist}
					unload_character \{Name = vocalist}
				endif
			else
				if (<pak> = z_wikker || <pak> = z_budokan || <pak> = z_hell)
					if (<song_struct>.singer = female)
						singer_profile = 'singer_female_alt'
					elseif (<song_struct>.singer = bret)
						singer_profile = 'singer_bret_alt'
					else
						singer_profile = 'singer_alt'
					endif
				else
					if (<song_struct>.singer = female)
						singer_profile = 'singer_female'
					elseif (<song_struct>.singer = bret)
						singer_profile = 'singer_bret'
					else
						singer_profile = 'singer'
					endif
				endif
				if ($Cheat_BretMichaels = 1)
					if NOT (<song_struct>.singer = female)
						singer_profile = 'singer_bret'
					endif
				endif
				if NOT create_vocalist profile_name = <singer_profile> async = <async>
					return \{FALSE}
				endif
			endif
		else
			if ($Cheat_BretMichaels = 1)
				singer_profile = 'singer_bret'
			else
				singer_profile = 'singer'
			endif
			if NOT create_vocalist profile_name = <singer_profile> async = <async>
				return \{FALSE}
			endif
		endif
	else
		unload_character \{Name = vocalist}
		if NOT create_guitarist Name = GUITARIST async = <async>
			return \{FALSE}
		endif
		if NOT create_guitarist Name = BASSIST async = <async>
			return \{FALSE}
		endif
		if NOT create_drummer async = <async>
			return \{FALSE}
		endif
	endif
	set_bandvisible
	return \{true}
endscript

script create_guitarist_profile 
	player2_is_lead = FALSE
	if ($current_num_players = 2)
		if (($game_mode = p2_career) || ($game_mode = p2_coop))
			if NOT ($player1_status.part = guitar)
				player2_is_lead = true
			endif
		endif
	endif
	if ((<Name> = GUITARIST && <player2_is_lead> = FALSE) || (<Name> = BASSIST && <player2_is_lead> = true))
		player_status = player1_status
	else
		player_status = player2_status
	endif
	found = 0
	find_profile_by_id id = ($<player_status>.character_id)
	<found> = 1
	if (<found> = 1)
		if GotParam \{no_guitar}
			<instrument_id> = None
		else
			if ($boss_battle = 1 && <Name> = BASSIST)
				get_musician_profile_struct index = <index>
				<instrument_id> = (<profile_struct>.musician_instrument.desc_id)
			else
				<instrument_id> = ($<player_status>.instrument_id)
			endif
		endif
		if ($Cheat_AirGuitar = 1)
			if NOT ($is_network_game)
				<instrument_id> = None
			endif
		endif
		outfit = ($<player_status>.outfit)
		style = ($<player_status>.style)
		get_musician_profile_struct index = <index>
		character_name = (<profile_struct>.Name)
		formatText checksumName = body_id 'Guitarist_%n_Outfit%o_Style%s' n = <character_name> o = <outfit> s = <style>
		printf "create_guitar_profile: instrument_id=%s" s = <instrument_id>
		Profile = {<profile_struct>
			musician_instrument = {desc_id = <instrument_id>}
			musician_body = {desc_id = <body_id>}
			download_musician_instrument = {desc_id = <instrument_id>}
			download_musician_body = {desc_id = <body_id>}
			outfit = <outfit>}
	endif
	return <...>
endscript

script create_guitarist \{Name = GUITARIST
		profile_name = 'judy'
		instrument_id = Instrument_Guitar_GodRock
		async = 0
		animpak = 1}
	printf \{"create_guitarist: start"}
	ExtendCrc <Name> '_Info' out = info_struct
	printf channel = AnimInfo "creating guitarist - %a ........." a = <Name>
	create_guitarist_profile <...>
	character_id = ($<player_status>.character_id)
	if (<found> = 1)
		printf \{"create_guitarist: 1"}
		if GotParam \{node_name}
			waypoint_id = <node_name>
		else
			get_start_node_id member = <Name>
		endif
		if DoesWaypointExist Name = <waypoint_id>
			Change structurename = <info_struct> target_node = <waypoint_id>
		else
			printf "unable to find starting position for %a ........" a = <Name>
		endif
		ClearEventHandlerGroup \{hand_events}
		printf \{"create_guitarist: 2"}
		if NOT create_band_member Name = <Name> Profile = <Profile> start_node = <waypoint_id> <...>
			return \{FALSE}
		endif
		printf \{"create_guitarist: 3"}
		find_profile_by_id id = <character_id>
		formatText TextName = highway_name 'Guitarist_%n_Outfit%o_Style%s' n = (<profile_struct>.Name) o = <outfit> s = <style>
		AddToMaterialLibrary scene = <highway_name>
		formatText checksumName = highway_material 'sys_%a_1_highway_sys_%a_1_highway' a = (<profile_struct>.Name)
		Change structurename = <player_status> highway_material = <highway_material>
		Change structurename = <player_status> band_member = <Name>
		printf \{"create_guitarist: 4"}
		get_musician_profile_struct index = <index>
		Change structurename = <info_struct> anim_set = (<profile_struct>.anim_set)
		Change structurename = <info_struct> finger_anims = (<profile_struct>.finger_anims)
		Change structurename = <info_struct> fret_anims = (<profile_struct>.fret_anims)
		Change structurename = <info_struct> strum = (<profile_struct>.strum_anims)
		Change structurename = <info_struct> allow_movement = true
		Change structurename = <info_struct> arms_disabled = 0
		Change structurename = <info_struct> disable_arms = 0
		Change structurename = <info_struct> next_stance = ($<info_struct>.stance)
		printf \{"create_guitarist: 5"}
		if StructureContains structure = <profile_struct> Name = Scale
			scale_x = ((<profile_struct>.Scale).(1.0, 0.0, 0.0))
			scale_y = ((<profile_struct>.Scale).(0.0, 1.0, 0.0))
			scale_z = ((<profile_struct>.Scale).(0.0, 0.0, 1.0))
			if ((<scale_x> != <scale_y>) || (<scale_y> != <scale_z>))
				ScriptAssert \{"Attempting to create a guitarist with a non-uniform scale!"}
			endif
			printf channel = newdebug "found scale in character profile! %a ......." a = (<profile_struct>.Scale)
			Change structurename = <info_struct> Scale = <scale_x>
		else
			Change structurename = <info_struct> Scale = 1.0
		endif
		printf \{"create_guitarist: 6"}
		stance = ($<info_struct>.stance)
		printf channel = AnimInfo "creating guitarist in stance %a ........" a = <stance>
		if (<stance> = stance_frontend || <stance> = stance_frontend_guitar)
			Change structurename = <info_struct> arms_disabled = 2
			Change structurename = <info_struct> disable_arms = 2
			<Name> :hero_toggle_arms num_arms = 0 prev_num_arms = 2 blend_time = 0.0
		else
			<Name> :hero_toggle_arms num_arms = 1 prev_num_arms = 0 blend_time = 0.0
		endif
		finger_anims = ($<info_struct>.finger_anims)
		fret_anims = ($<info_struct>.fret_anims)
		strum_type = ($<info_struct>.strum)
		ExtendCrc <strum_type> '_Strums' out = strum_anims
		if NOT GotParam \{no_strum}
			<Name> :hero_play_strum_anim anim = ($<strum_anims>.no_strum_anim)
			<Name> :hero_play_fret_anim anim = (<fret_anims>.track_123)
			<Name> :hero_play_finger_anim anim = (<finger_anims>.track_none)
		endif
		if IsWinPort
			if NOT (<character_id> = Ripper)
				<Name> :Ragdoll_SetAccessoryBones accessory_bones = $guitarist_accessory_bones
			endif
		else
			<Name> :Ragdoll_SetAccessoryBones accessory_bones = $guitarist_accessory_bones
		endif
		<Name> :Obj_SwitchScript guitarist_idle
		<Name> :Obj_SpawnScriptNow facial_anim_loop
		if GotParam \{no_anim}
			SpawnScriptNow temp_hero_pause_script params = {Name = <Name>}
		endif
		<Name> :Obj_ForceUpdate
	else
		printf \{"profile not found in create_guitarist! ........."}
	endif
	printf \{"create_guitarist: done"}
	return \{true}
endscript

script temp_hero_pause_script 
	Wait \{1
		gameframes}
	if <Name> :Anim_AnimNodeExists id = BodyTimer
		<Name> :Anim_Command target = BodyTimer Command = Timer_SetSpeed params = {speed = 0.0}
	endif
endscript

script create_bassist \{Name = BASSIST
		profile_name = 'bassist'
		async = 0}
	ExtendCrc <Name> '_Info' out = info_struct
	printf channel = AnimInfo "creating bassist - %a ........." a = <Name>
	find_profile Name = <profile_name>
	if (<found> = 1)
		get_start_node_id member = <Name>
		if DoesWaypointExist Name = <waypoint_id>
			GetWaypointPos Name = <waypoint_id>
			Change structurename = <info_struct> target_node = <waypoint_id>
		else
			printf "unable to find starting position for %a ........" a = <Name>
		endif
		get_musician_profile_struct index = <index>
		if ($current_bass_model = None)
			Profile = <profile_struct>
		else
			Profile = {
				<profile_struct>
				musician_instrument = {desc_id = ($current_bass_model)}
			}
		endif
		if NOT create_band_member Name = <Name> Profile = <Profile> start_node = <waypoint_id> <...>
			return \{FALSE}
		endif
		get_musician_profile_struct index = <index>
		Change structurename = <info_struct> anim_set = (<profile_struct>.anim_set)
		Change structurename = <info_struct> finger_anims = (<profile_struct>.finger_anims)
		Change structurename = <info_struct> fret_anims = (<profile_struct>.fret_anims)
		Change structurename = <info_struct> strum = (<profile_struct>.strum_anims)
		Change structurename = <info_struct> allow_movement = true
		Change structurename = <info_struct> arms_disabled = 0
		Change structurename = <info_struct> disable_arms = 0
		if StructureContains structure = <profile_struct> Name = Scale
			scale_x = ((<profile_struct>.Scale) * (1.0, 0.0, 0.0))
			scale_y = ((<profile_struct>.Scale) * (0.0, 1.0, 0.0))
			scale_z = ((<profile_struct>.Scale) * (0.0, 0.0, 1.0))
			if ((<scale_x> != <scale_y>) || (<scale_y> != <scale_z>))
				ScriptAssert \{"Attempting to create a guitarist with a non-uniform scale!"}
			endif
			printf channel = newdebug "found scale in character profile! %a ......." a = (<profile_struct>.Scale)
			Change structurename = <info_struct> Scale = <scale_x>
		else
			Change structurename = <info_struct> Scale = 1.0
		endif
		if GotParam \{stance}
			Change structurename = <info_struct> stance = <stance>
		else
			Change structurename = <info_struct> stance = (<profile_struct>.stance)
		endif
		finger_anims = ($<info_struct>.finger_anims)
		fret_anims = ($<info_struct>.fret_anims)
		strum_type = ($bassist_info.strum)
		ExtendCrc <strum_type> '_Strums' out = strum_anims
		if NOT GotParam \{no_strum}
			<Name> :hero_play_strum_anim anim = ($<strum_anims>.no_strum_anim)
			<Name> :hero_play_fret_anim anim = (<fret_anims>.track_106)
			<Name> :hero_play_finger_anim anim = (<finger_anims>.track_none)
		endif
		<Name> :Ragdoll_SetAccessoryBones accessory_bones = $guitarist_accessory_bones
		<Name> :Obj_SwitchScript guitarist_idle
		<Name> :Obj_SpawnScriptNow facial_anim_loop
	else
		printf \{"profile not found in create_bassist! ........."}
	endif
	return \{true}
endscript

script create_vocalist \{Name = vocalist
		profile_name = 'singer'
		async = 0}
	ExtendCrc <Name> '_Info' out = info_struct
	printf "creating vocalist - %a ........." a = <Name>
	find_profile Name = <profile_name>
	if (<found> = 1)
		get_start_node_id member = <Name>
		if DoesWaypointExist Name = <waypoint_id>
			GetWaypointPos Name = <waypoint_id>
			Change structurename = <info_struct> target_node = <waypoint_id>
		else
			printf "unable to find starting position for %a ........" a = <Name>
		endif
		get_musician_profile_struct index = <index>
		if NOT create_band_member Name = <Name> Profile = <profile_struct> start_node = <waypoint_id> <...>
			return \{FALSE}
		endif
		Change structurename = <info_struct> anim_set = (<profile_struct>.anim_set)
		Change structurename = <info_struct> allow_movement = true
		if GotParam \{stance}
			Change structurename = <info_struct> stance = <stance>
		else
			Change structurename = <info_struct> stance = (<profile_struct>.stance)
		endif
		<Name> :Ragdoll_SetAccessoryBones accessory_bones = $guitarist_accessory_bones
		<Name> :Obj_SwitchScript bandmember_idle
		<Name> :Obj_SpawnScriptNow facial_anim_loop
	else
		printf \{"profile not found in create_vocalist! ........."}
	endif
	return \{true}
endscript

script create_drummer \{Name = drummer
		profile_name = 'drummer'
		async = 0}
	ExtendCrc <Name> '_Info' out = info_struct
	printf "creating drummer - %a ........." a = <Name>
	find_profile Name = <profile_name>
	if (<found> = 1)
		get_start_node_id member = <Name>
		if DoesWaypointExist Name = <waypoint_id>
			GetWaypointPos Name = <waypoint_id>
			Change structurename = <info_struct> target_node = <waypoint_id>
		else
			printf "unable to find starting position for %a ........" a = <Name>
		endif
		get_musician_profile_struct index = <index>
		if NOT create_band_member Name = <Name> Profile = <profile_struct> start_node = <waypoint_id> <...>
			return \{FALSE}
		endif
		Change structurename = <info_struct> anim_set = (<profile_struct>.anim_set)
		Change structurename = <info_struct> allow_movement = true
		if GotParam \{stance}
			Change structurename = <info_struct> stance = <stance>
		else
			Change structurename = <info_struct> stance = (<profile_struct>.stance)
		endif
		<Name> :Ragdoll_SetAccessoryBones accessory_bones = $guitarist_accessory_bones
		<Name> :Obj_KillSpawnedScript Name = drummer_autotwist
		<Name> :Obj_SpawnScriptNow drummer_autotwist
		<Name> :Obj_SwitchScript bandmember_idle
		<Name> :Obj_SpawnScriptNow facial_anim_loop
		Change \{structurename = drummer_info
			last_left_arm_note = 0}
		Change \{structurename = drummer_info
			last_right_arm_note = 0}
	else
		printf \{"profile not found in create_drummer! ........."}
	endif
	return \{true}
endscript

script drummer_autotwist 
	hero_play_anim \{Tree = $drummer_twist_branch
		target = BodyTwist
		anim = Test_Drum_BodyTwist_D
		BlendDuration = 0.0}
	change_rate = 0.18
	begin
	TWIST = ($drummer_info.TWIST)
	compute_desired_drummer_twist
	diff = (<desired_twist> - <TWIST>)
	if (<TWIST> < <desired_twist>)
		if (<diff> < $drummer_twist_rate)
			TWIST = <desired_twist>
		else
			TWIST = (<TWIST> + $drummer_twist_rate)
		endif
	elseif (<TWIST> > <desired_twist>)
		if ((<diff> * -1) < $drummer_twist_rate)
			TWIST = <desired_twist>
		else
			TWIST = (<TWIST> - $drummer_twist_rate)
		endif
	endif
	drummer_twist Strength = <TWIST>
	Change structurename = drummer_info TWIST = <TWIST>
	Wait \{1
		gameframe}
	repeat
endscript

script unload_character 
	destroy_band_member Name = <Name>
endscript

script unload_band 
	destroy_band_member \{Name = GUITARIST}
	destroy_band_member \{Name = BASSIST}
	destroy_band_member \{Name = drummer}
	destroy_band_member \{Name = vocalist}
	force_unload_all_character_paks
endscript

script hero_play_random_anim \{BlendDuration = 0.2}
	GetArraySize <anims>
	GetRandomValue Name = newindex integer a = 0 b = (<array_Size> - 1)
	anim_name = (<anims> [<newindex>])
	if GotParam \{cycle}
		hero_play_anim anim = <anim_name> BlendDuration = <BlendDuration> cycle
	else
		hero_play_anim anim = <anim_name> BlendDuration = <BlendDuration>
	endif
endscript

script should_display_debug_info 
	Obj_GetID
	display_info = FALSE
	switch (<objID>)
		case GUITARIST
		if ($display_guitarist_anim_info = true)
			display_info = true
		endif
		case BASSIST
		if ($display_bassist_anim_info = true)
			display_info = true
		endif
		case vocalist
		if ($display_vocalist_anim_info = true)
			display_info = true
		endif
		case drummer
		if ($display_drummer_anim_info = true)
			display_info = true
		endif
	endswitch
	return <display_info>
endscript

script hero_play_random_anims 
	count = 0
	begin
	hero_play_random_anim anims = <anim_array>
	hero_wait_until_anim_finished
	count = (<count> + 1)
	if GotParam \{repeat_count}
		if (<count> = <repeat_count>)
			break
		endif
	endif
	repeat
endscript

script hero_play_adjusting_random_anims \{blend_time = 0.2}
	Obj_GetID
	ExtendCrc <objID> '_Info' out = info_struct
	count = 0
	begin
	anim = ($<info_struct>.current_anim)
	cycle = ($<info_struct>.cycle_anim)
	repeat_count = ($<info_struct>.anim_repeat_count)
	if (<objID> = GUITARIST || <objID> = BASSIST)
		if (($<info_struct>.disable_arms) = 2)
			if ($<info_struct>.arms_disabled != 2)
				hero_toggle_arms num_arms = 0 prev_num_arms = (2 - ($<info_struct>.arms_disabled))
				Change structurename = <info_struct> arms_disabled = 2
			endif
		elseif (($<info_struct>.disable_arms) = 1)
			if ($<info_struct>.arms_disabled != 1)
				hero_toggle_arms num_arms = 1 prev_num_arms = (2 - ($<info_struct>.arms_disabled))
				Change structurename = <info_struct> arms_disabled = 1
			endif
		else
			if ($<info_struct>.arms_disabled != 0)
				hero_toggle_arms num_arms = 2 prev_num_arms = (2 - ($<info_struct>.arms_disabled))
				Change structurename = <info_struct> arms_disabled = 0
			endif
		endif
	endif
	if (<objID> = GUITARIST)
		if NOT (<anim> = Idle)
			Change structurename = <info_struct> facial_anim = <anim>
		endif
	endif
	if hero_play_tempo_anim_cfunc anim = <anim> BlendDuration = <blend_time>
		hero_play_anim anim = <anim_to_run> BlendDuration = <blend_duration> UseMotionExtraction = <use_motion_extraction>
		hero_wait_until_anim_finished
	else
		Wait \{1
			gameframe}
	endif
	display_debug_info = FALSE
	if (should_display_debug_info)
		display_debug_info = true
	endif
	anim_set = ($<info_struct>.anim_set)
	stance = ($<info_struct>.stance)
	next_stance = ($<info_struct>.next_stance)
	stance_changed = FALSE
	if NOT (<next_stance> = <stance>)
		if (<display_debug_info> = true)
			printf channel = AnimInfo "%c stance now changing from %a to %b............" c = <objID> a = <stance> b = <next_stance>
		endif
		if play_stance_transition_cfunc anim_set = <anim_set> old_stance = <stance> new_stance = <next_stance>
			hero_play_anim anim = <anim_to_run>
			hero_wait_until_anim_finished
		endif
		Change structurename = <info_struct> stance = <next_stance>
		stance = <next_stance>
		stance_changed = true
	endif
	next_anim = ($<info_struct>.next_anim)
	if (<next_anim> = None && <stance_changed> = FALSE)
		if (<cycle> = FALSE)
			repeat_count = (<repeat_count> - 1)
			if (<repeat_count> < 1)
				if (<display_debug_info> = true)
					printf channel = AnimInfo "%a has finished playing anim %b " a = <objID> b = <anim>
				endif
				repeat_count = 0
			endif
		endif
		Change structurename = <info_struct> anim_repeat_count = <repeat_count>
		if (<cycle> = FALSE && <repeat_count> <= 0)
			Change structurename = <info_struct> current_anim = Idle
			Change structurename = <info_struct> cycle_anim = true
			if (<next_stance> = Intro || <next_stance> = intro_smStg || <next_stance> = stance_frontend || <next_stance> = stance_frontend_guitar)
			else
				Change structurename = <info_struct> disable_arms = 0
			endif
			blend_time = 0.2
			if (<display_debug_info> = true)
				printf channel = AnimInfo "%a has no anims in queue...returning to idle" a = <objID>
			endif
		else
			blend_time = 0.2
			if (<display_debug_info> = true)
				if (<cycle> = FALSE)
					printf channel = AnimInfo "%a repeating the %c anim (%b more times)" c = <anim> a = <objID> b = <repeat_count>
				else
					printf channel = AnimInfo "%a %b anim is cycling" a = <objID> b = <anim>
				endif
			endif
		endif
	else
		repeat_count = ($<info_struct>.next_anim_repeat_count)
		if ((<display_debug_info> = true) && (<next_anim> != None))
			if (<repeat_count> > 1)
				printf channel = AnimInfo "%a will play %b anim %c times ......." a = <objID> b = <next_anim> c = <repeat_count>
			else
			endif
		endif
		if (<next_anim> = None)
			if (<display_debug_info> = true)
				printf channel = AnimInfo "%a has no anims in queue...returning to idle" a = <objID>
			endif
			next_anim = Idle
			cycle_next_anim = true
		else
			cycle_next_anim = ($<info_struct>.cycle_next_anim)
		endif
		if (<next_stance> = Intro || <next_stance> = intro_smStg || <next_stance> = stance_frontend || <next_stance> = stance_frontend_guitar)
			disable_arms_next_anim = 2
		else
			disable_arms_next_anim = ($<info_struct>.next_anim_disable_arms)
		endif
		Change structurename = <info_struct> stance = <next_stance>
		Change structurename = <info_struct> current_anim = <next_anim>
		Change structurename = <info_struct> cycle_anim = <cycle_next_anim>
		Change structurename = <info_struct> disable_arms = <disable_arms_next_anim>
		Change structurename = <info_struct> next_anim = None
		Change structurename = <info_struct> cycle_next_anim = true
		Change structurename = <info_struct> anim_repeat_count = <repeat_count>
		Change structurename = <info_struct> next_anim_disable_arms = 0
		blend_time = 0.2
	endif
	repeat
endscript

script crowd_play_adjusting_random_anims \{anim = Idle
		blend_time = 0.2
		startwithnoblend = 0}
	Obj_GetID
	old_speed = undefined
	begin
	hero_get_skill_level_cfunc
	get_anim_speed_for_tempo_cfunc
	if GotParam \{anim_set}
		anims = ($<anim_set>.<anim>.<skill>.<anim_speed>)
	else
		anims = ($crowd_animations.<anim>.<skill>.<anim_speed>)
	endif
	GetArraySize <anims>
	GetRandomValue Name = newindex integer a = 0 b = (<array_Size> - 1)
	anim_name = (<anims> [<newindex>])
	if (<startwithnoblend> = 1)
		blend_time = 0.0
		startwithnoblend = 0
	elseif (<anim_speed> != <old_speed>)
		blend_time = $Crowd_BlendTime_TempoChange
	elseif (<skill> = bad)
		blend_time = $Crowd_BlendTime_Bad
	elseif (<anim> = special)
		blend_time = $Crowd_BlendTime_Special
	elseif (<anim_speed> = slow)
		blend_time = $Crowd_BlendTime_Slow
	elseif (<anim_speed> = med)
		blend_time = $Crowd_BlendTime_Med
	elseif (<anim_speed> = FAST)
		blend_time = $Crowd_BlendTime_Fast
	else
		blend_time = -1.0
	endif
	if ($display_crowd_anim_info = true)
		printf channel = Crowd "%a playing %b anim (%c) with blendtime %d ..." a = <objID> b = <anim> c = <anim_name> d = <blend_time>
	endif
	GameObj_PlayAnim anim = <anim_name> BlendDuration = <blend_time> AnimEvents = On
	GameObj_WaitAnimFinished
	old_speed = <anim_speed>
	repeat
endscript

script hero_strum_guitar \{note_length = 150}
	if (<note_length> < $short_strum_max_gem_length)
		anim_length = short
	elseif (<note_length> < $med_strum_max_gem_length)
		anim_length = med
	else
		anim_length = long
	endif
	Obj_GetID
	ExtendCrc <objID> '_Info' out = info_struct
	Change structurename = <info_struct> last_strum_length = <anim_length>
	strum_type = ($<info_struct>.strum)
	ExtendCrc <strum_type> '_Strums' out = strum_anims
	if (($<info_struct>.playing_missed_note = FALSE) || ($always_strum = true))
		GetArraySize (<strum_anims>.<anim_length>)
		GetRandomValue Name = newindex integer a = 0 b = (<array_Size> - 1)
		strum_anim = (<strum_anims>.<anim_length> [<newindex>])
		hero_play_strum_anim anim = <strum_anim> BlendDuration = 0.1
	endif
	hero_wait_until_anim_finished \{Timer = StrumTimer}
	hero_play_strum_anim anim = (($<strum_anims>).no_strum_anim)
endscript

script hero_play_chord \{chord = track_none}
	Obj_GetID
	ExtendCrc <objID> '_Info' out = info_struct
	finger_anims = ($<info_struct>.finger_anims)
	if StructureContains structure = $<finger_anims> Name = <chord>
		finger_anim = (<finger_anims>.<chord>)
		if (<chord> = None)
			blend_time = $finger_release_blend_time
		else
			blend_time = $finger_press_blend_time
		endif
	else
		finger_anim = (<finger_anims>.None)
		blend_time = $finger_release_blend_time
	endif
	if (<finger_anim> != None)
		hero_play_finger_anim anim = <finger_anim> BlendDuration = <blend_time>
	endif
endscript

script find_profile 
	get_musician_profile_size
	if GotParam \{Name}
		GetLowerCaseString <Name>
		search_name = <lowercasestring>
		found = 0
		index = 0
		begin
		get_musician_profile_struct index = <index>
		GetLowerCaseString (<profile_struct>.Name)
		profile_name = <lowercasestring>
		if (<profile_name> = <search_name>)
			found = 1
			break
		endif
		index = (<index> + 1)
		repeat <array_Size>
		return found = <found> index = <index>
	elseif GotParam \{body_id}
		found = 0
		index = 0
		begin
		get_musician_profile_struct index = <index>
		Body = (<profile_struct>.musician_body)
		body_descid = (<Body>.desc_id)
		if (<body_id> = <body_descid>)
			found = 1
			break
		endif
		index = (<index> + 1)
		repeat <array_Size>
		return found = <found> index = <index>
	endif
endscript

script find_profile_by_id 
	get_musician_profile_size
	found = 0
	index = 0
	begin
	get_musician_profile_struct index = <index>
	next_name = (<profile_struct>.Name)
	formatText checksumName = profile_id '%n' n = <next_name> AddToStringLookup = true
	if (<profile_id> = <id>)
		return true index = <index>
		break
	endif
	index = (<index> + 1)
	repeat <array_Size>
	find_profile_by_id \{id = Axel}
	return FALSE index = <index>
endscript

script get_waypoint_id \{index = 0}
	GetPakManCurrent \{map = zones}
	GetPakManCurrentName \{map = zones}
	if (<index> < 10)
		formatText TextName = suffix '_TRG_Waypoint_0%a' a = <index>
	else
		formatText TextName = suffix '_TRG_Waypoint_%a' a = <index>
	endif
	waypoint_name = (<pakname> + <suffix>)
	AppendSuffixToChecksum Base = <pak> SuffixString = <suffix>
	return waypoint_id = <appended_id> waypoint_name = <waypoint_name>
endscript

script get_start_node_id \{character = "guitarist"}
	player2_is_guitarist = FALSE
	if (($game_mode = p2_career) || ($game_mode = p2_coop))
		if NOT ($player1_status.part = guitar)
			player2_is_guitarist = true
		endif
	endif
	art_deco_encore = FALSE
	GetPakManCurrent \{map = zones}
	if (<pak> = z_artdeco)
		if GetNodeFlag \{LS_ENCORE_POST}
			art_deco_encore = true
		endif
	endif
	switch (<member>)
		case GUITARIST
		if ($current_num_players = 1)
			character = "guitarist"
		else
			if (<player2_is_guitarist> = true)
				if (<art_deco_encore> = true)
					character = "guitarist"
				else
					character = "guitarist_player2"
				endif
			else
				character = "guitarist_player1"
			endif
		endif
		case BASSIST
		if ($current_num_players = 1)
			character = "bassist"
		else
			if (<player2_is_guitarist> = true)
				character = "guitarist_player1"
			else
				if (<art_deco_encore> = true)
					character = "guitarist"
				else
					character = "guitarist_player2"
				endif
			endif
		endif
		case vocalist
		character = "vocalist"
		case drummer
		character = "drummer"
		default
		printf \{"Unknown character referenced in get_starting_position!"}
		character = "unknown"
	endswitch
	if GetPakManCurrentName \{map = zones}
		GetPakManCurrent \{map = zones}
		formatText TextName = suffix '_TRG_Waypoint_%a_start' a = <character>
		waypoint_name = (<pakname> + <suffix>)
		AppendSuffixToChecksum Base = <pak> SuffixString = <suffix>
		return waypoint_id = <appended_id> waypoint_name = <waypoint_name>
	else
		return \{waypoint_id = None
			waypoint_name = "NONE"}
	endif
endscript

script get_skill_level 
	health = ($player1_status.current_health)
	skill = Normal
	if (<health> < 0.66)
		skill = bad
	elseif (<health> > 1.3299999)
		skill = good
	endif
	return skill = <skill>
endscript

script get_target_node 
	Obj_GetID
	ExtendCrc <objID> '_Info' out = info_struct
	return target_node = ($<info_struct>.target_node)
endscript
BandMember_Idle_EventTable = [
	{
		response = call_script
		event = play_anim
		Scr = handle_play_anim
	}
	{
		response = call_script
		event = change_stance
		Scr = handle_change_stance
	}
]

script bandmember_idle 
	ResetEventHandlersFromTable \{BandMember_Idle_EventTable
		group = hand_events}
	Obj_KillSpawnedScript \{Name = hero_play_adjusting_random_anims}
	Obj_SpawnScriptNow \{hero_play_adjusting_random_anims
		params = {
			anim = Idle
		}}
	Block
endscript

script play_special_facial_anim 
	if NOT GotParam \{anim}
		return
	endif
	Obj_KillSpawnedScript \{Name = facial_anim_loop}
	Obj_GetID
	if (<objID> = GUITARIST)
		printf \{channel = newdebug
			"playing special facial on guitarist......."}
	endif
	hero_play_facial_anim anim = <anim>
	hero_wait_until_anim_finished \{Timer = FacialTimer}
	if (<objID> = GUITARIST)
		printf \{channel = newdebug
			"done waiting for facial on guitarist......."}
	endif
	Obj_SpawnScriptNow \{facial_anim_loop}
endscript

script facial_anim_loop 
	Obj_GetID
	ExtendCrc <objID> '_Info' out = info_struct
	anim_set = ($<info_struct>.anim_set)
	if NOT StructureContains structure = $<anim_set> Name = facial_anims
		return
	endif
	if NOT StructureContains structure = ($<anim_set>.facial_anims) Name = Idle
		return
	endif
	begin
	anim = ($<info_struct>.facial_anim)
	if NOT StructureContains structure = ($<anim_set>.facial_anims) Name = <anim>
		if ($display_facial_anim_info = true)
			printf channel = facial "facial anims not defined for %a ... reverting to idle" a = <anim>
		endif
		anim = Idle
	endif
	anims = ($<anim_set>.facial_anims.<anim>)
	GetArraySize <anims>
	GetRandomValue Name = index integer a = 0 b = (<array_Size> - 1)
	anim_name = (<anims> [<index>])
	if ($display_facial_anim_info = true)
		printf channel = facial "playing facial anim - %a (%b) ..." a = <anim> b = <anim_name>
	endif
	Change structurename = <info_struct> facial_anim = Idle
	hero_play_facial_anim anim = <anim_name>
	hero_wait_until_anim_finished \{Timer = FacialTimer}
	Wait \{1
		gameframe}
	repeat
endscript
Guitarist_Idle_EventTable = [
	{
		response = call_script
		event = strum_guitar
		Scr = handle_strum_event
	}
	{
		response = call_script
		event = pose_fret
		Scr = handle_fret_event
	}
	{
		response = call_script
		event = pose_fingers
		Scr = handle_finger_event
	}
	{
		response = call_script
		event = Anim_MissedNote
		Scr = handle_missed_note
	}
	{
		response = call_script
		event = Anim_HitNote
		Scr = handle_hit_note
	}
	{
		response = call_script
		event = play_anim
		Scr = handle_play_anim
	}
	{
		response = call_script
		event = play_battle_anim
		Scr = handle_play_anim
	}
	{
		response = call_script
		event = change_stance
		Scr = handle_change_stance
	}
	{
		response = call_script
		event = walk
		Scr = handle_walking
	}
]

script guitarist_idle 
	ResetEventHandlersFromTable \{Guitarist_Idle_EventTable
		group = hand_events}
	Obj_GetID
	if (($player1_status.band_member) = <objID>)
		SetEventHandler \{response = call_script
			event = star_power_onp1
			Scr = handle_star_power
			group = hand_events}
	else (($player2_status.band_member) = <objID>)
		SetEventHandler \{response = call_script
			event = star_power_onp2
			Scr = handle_star_power
			group = hand_events}
	endif
	Obj_KillSpawnedScript \{Name = hero_play_adjusting_random_anims}
	Obj_SpawnScriptNow \{hero_play_adjusting_random_anims
		params = {
			anim = Idle
			blend_time = 0.2
			cycle
		}}
	Block
endscript

script guitarist_idle_animpreview 
	ClearEventHandlerGroup \{hand_events}
endscript
Guitarist_Walking_EventTable = [
	{
		response = call_script
		event = strum_guitar
		Scr = handle_strum_event
	}
	{
		response = call_script
		event = pose_fret
		Scr = handle_fret_event
	}
	{
		response = call_script
		event = pose_fingers
		Scr = handle_finger_event
	}
	{
		response = call_script
		event = Anim_MissedNote
		Scr = handle_missed_note
	}
	{
		response = call_script
		event = Anim_HitNote
		Scr = handle_hit_note
	}
	{
		response = call_script
		event = change_stance
		Scr = queue_change_stance
	}
]

script guitarist_walking 
	ResetEventHandlersFromTable \{Guitarist_Walking_EventTable
		group = hand_events}
	Obj_KillSpawnedScript \{Name = hero_play_adjusting_random_anims}
	SpawnScriptNow \{start_walk_camera}
	walk_to_waypoint <...>
	SpawnScriptNow \{Kill_Walk_Camera}
	Obj_SwitchScript \{guitarist_idle}
endscript

script play_special_anim \{stance = Stance_A
		disable_arms = 2
		BlendDuration = 0.2}
	Obj_GetID
	ExtendCrc <objID> '_Info' out = info_struct
	ClearEventHandlerGroup \{hand_events}
	if GotParam \{respond_to_hand_events}
		ResetEventHandlersFromTable \{Guitarist_Walking_EventTable
			group = hand_events}
	else
		SetEventHandler \{response = call_script
			event = change_stance
			Scr = queue_change_stance
			group = hand_events}
	endif
	Obj_KillSpawnedScript \{Name = hero_play_adjusting_random_anims}
	if GotParam \{Wait}
		hero_wait_until_anim_finished
	endif
	if (<disable_arms> = 0)
		if (<info_struct>.arms_disabled = 2)
			hero_toggle_arms \{prev_num_arms = 0
				num_arms = 2}
			Change structurename = <info_struct> arms_disabled = 0
			Change structurename = <info_struct> disable_arms = 0
			Change structurename = <info_struct> next_anim_disable_arms = 0
			Change structurename = <info_struct> current_anim = Idle
			Change structurename = <info_struct> cycle_anim = Idle
			Change structurename = <info_struct> next_anim = Idle
			Change structurename = <info_struct> cycle_next_anim = true
		endif
	endif
	if (<disable_arms> = 2)
		if (<objID> = GUITARIST || <objID> = BASSIST || <objID> = drummer)
			hero_disable_arms \{blend_time = 0.0}
		endif
	endif
	Change structurename = <info_struct> stance = <stance>
	if hero_play_tempo_anim_cfunc anim = <anim> BlendDuration = <BlendDuration>
		hero_play_anim anim = <anim_to_run> BlendDuration = <blend_duration> UseMotionExtraction = <use_motion_extraction>
	endif
	if (<stance> = win || <stance> = win_smstg || <stance> = lose || <stance> = lose_smstg || <anim> = starpower)
		Ragdoll_MarkForReset
	endif
	if (<objID> = GUITARIST || <objID> = BASSIST)
		if (<disable_arms> = 2)
			hero_wait_until_anim_near_end \{time_from_end = 0.25}
			hero_enable_arms \{blend_time = 0.25}
		endif
	endif
	hero_wait_until_anim_finished
	Change structurename = <info_struct> stance = Stance_A
	if (<objID> = GUITARIST || <objID> = BASSIST)
		Obj_SwitchScript \{guitarist_idle}
	else
		Obj_SwitchScript \{bandmember_idle}
	endif
endscript

script play_simple_anim \{disable_arms = 2
		BlendDuration = 0.0}
	Obj_GetID
	ExtendCrc <objID> '_Info' out = info_struct
	ClearEventHandlerGroup \{hand_events}
	Obj_KillSpawnedScript \{Name = hero_play_adjusting_random_anims}
	if (<disable_arms> = 2)
		if (<objID> = GUITARIST || <objID> = BASSIST)
			hero_disable_arms blend_time = <BlendDuration>
		endif
	endif
	hero_play_anim anim = <anim> BlendDuration = <BlendDuration>
	if (BlendDuration = 0.0)
		Ragdoll_MarkForReset
	endif
	if (<objID> = GUITARIST || <objID> = BASSIST)
		hero_wait_until_anim_near_end \{time_from_end = 0.25}
		hero_enable_arms \{blend_time = 0.25}
	endif
	hero_wait_until_anim_finished
	handle_change_stance \{stance = Stance_A
		no_wait}
	if (<objID> = GUITARIST || <objID> = BASSIST)
		Obj_SwitchScript \{guitarist_idle}
	else
		Obj_SwitchScript \{bandmember_idle}
	endif
endscript

script handle_star_power 
	Obj_GetID
	ExtendCrc <objID> '_Info' out = info_struct
	Change structurename = <info_struct> waiting_for_cameracut = true
	begin
	if ($<info_struct>.waiting_for_cameracut = FALSE)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	Obj_SwitchScript \{play_special_anim
		params = {
			stance = Stance_A
			anim = starpower
			BlendDuration = 0.0
			disable_arms = 0
			respond_to_hand_events = 1
		}}
endscript

script handle_song_won 
	Obj_KillSpawnedScript \{Name = handle_star_power}
	printf \{channel = AnimInfo
		"handle song won............"}
	Obj_SwitchScript \{play_special_anim
		params = {
			stance = win
			anim = Idle
			kill_transitions_when_done
		}}
endscript

script handle_song_failed 
	Obj_KillSpawnedScript \{Name = handle_star_power}
	printf \{channel = AnimInfo
		"handle song failed........."}
	Obj_SwitchScript \{play_special_anim
		params = {
			stance = lose
			anim = Idle
			kill_transitions_when_done
		}}
endscript

script play_intro_anims 
	printf \{channel = AnimInfo
		"play_intro_anims............."}
	intro_stance = Intro
	if (UseSmallVenueAnims)
		printf \{channel = AnimInfo
			"Using small venue anims! ............"}
		intro_stance = intro_smStg
	endif
	play_guitarist_intro = true
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_artdeco
		if GetNodeFlag \{LS_ENCORE_POST}
			play_guitarist_intro = FALSE
		endif
	endswitch
	if (<play_guitarist_intro> = true)
		Band_ChangeStance Name = GUITARIST stance = <intro_stance> no_wait
		Band_ChangeStance Name = BASSIST stance = <intro_stance> no_wait
	else
		if ($game_mode = p2_career || $game_mode = p2_coop)
			Band_ChangeStance Name = ($player1_status.band_member) stance = <intro_stance> no_wait
			Band_ChangeStance Name = ($player2_status.band_member) stance = Stance_A no_wait
		else
			Band_ChangeStance \{Name = GUITARIST
				stance = Stance_A
				no_wait}
			Band_ChangeStance Name = BASSIST stance = <intro_stance> no_wait
		endif
	endif
	Band_ChangeStance Name = vocalist stance = <intro_stance> no_wait
	Band_ChangeStance \{Name = drummer
		stance = Intro
		no_wait}
	Band_ChangeStance \{Name = GUITARIST
		stance = Stance_A}
	Band_ChangeStance \{Name = BASSIST
		stance = Stance_A}
	Band_ChangeStance \{Name = vocalist
		stance = Stance_A}
	Band_ChangeStance \{Name = drummer
		stance = Stance_A}
endscript

script UseSmallVenueAnims 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_party
		return_val = true
		case z_dive
		return_val = true
		case z_video
		return_val = true
		case z_prison
		return_val = true
		case z_hell
		return_val = true
		case z_artdeco
		if GetNodeFlag \{LS_ENCORE_POST}
			return \{true}
		endif
		default
		return_val = FALSE
	endswitch
	return <return_val>
endscript

script play_win_anims 
	if ($disable_band = 1)
		return
	endif
	if ($game_mode = tutorial)
		return
	endif
	printf \{channel = AnimInfo
		"play_win_anims............."}
	win_stance = win
	lose_stance = lose
	if (UseSmallVenueAnims)
		printf \{channel = AnimInfo
			"Using small venue anims! ............"}
		win_stance = win_smstg
		lose_stance = lose_smstg
	endif
	if ((($current_num_players = 1) && ($boss_battle = 0)) || ($game_mode = p2_coop) || ($game_mode = p2_career))
		if CompositeObjectExists \{Name = GUITARIST}
			GUITARIST :Obj_SwitchScript play_special_anim params = {stance = <win_stance> anim = Idle kill_transitions_when_done BlendDuration = 0.0}
		endif
		if CompositeObjectExists \{Name = BASSIST}
			BASSIST :Obj_SwitchScript play_special_anim params = {stance = <win_stance> anim = Idle kill_transitions_when_done BlendDuration = 0.0}
		endif
	else
		if ($boss_battle = 1)
			GUITARIST :Obj_SwitchScript play_special_anim params = {stance = <win_stance> anim = Idle kill_transitions_when_done BlendDuration = 0.0}
			BASSIST :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> anim = Idle kill_transitions_when_done BlendDuration = 0.0}
		else
			p1_won = true
			if ($game_mode = p2_battle)
				if (($player2_status.current_health) > ($player1_status.current_health))
					p1_won = FALSE
				endif
			else
				if (($player2_status.score) > ($player1_status.score))
					p1_won = FALSE
				endif
			endif
			if (<p1_won> = true)
				($player1_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <win_stance> anim = Idle BlendDuration = 0.0}
				($player2_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> anim = Idle BlendDuration = 0.0}
			else
				($player2_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <win_stance> anim = Idle BlendDuration = 0.0}
				($player1_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> anim = Idle BlendDuration = 0.0}
			endif
		endif
	endif
	if CompositeObjectExists \{Name = drummer}
		Change \{structurename = drummer_info
			desired_twist = 0.0}
		Change \{structurename = drummer_info
			last_left_arm_note = 0}
		Change \{structurename = drummer_info
			last_right_arm_note = 0}
		drummer :Obj_SwitchScript \{play_special_anim
			params = {
				stance = win
				anim = Idle
				BlendDuration = 0.0
			}}
	endif
	if CompositeObjectExists \{Name = vocalist}
		vocalist :Obj_SwitchScript \{play_special_anim
			params = {
				stance = win
				anim = Idle
				BlendDuration = 0.0
			}}
	endif
	restore_idle_faces
endscript

script play_lose_anims 
	printf \{channel = newdebug
		"play_lose_anims............"}
	if ($disable_band = 1)
		return
	endif
	win_stance = win
	lose_stance = lose
	if (UseSmallVenueAnims)
		printf \{channel = AnimInfo
			"Using small venue anims! ............"}
		win_stance = win_smstg
		lose_stance = lose_smstg
	endif
	if ((($current_num_players = 1) && ($boss_battle = 0)) || ($game_mode = p2_coop) || ($game_mode = p2_career))
		GUITARIST :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> anim = Idle BlendDuration = 0.0}
		BASSIST :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> anim = Idle BlendDuration = 0.0}
	else
		if ($boss_battle = 1)
			GUITARIST :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> anim = Idle BlendDuration = 0.0}
			BASSIST :Obj_SwitchScript play_special_anim params = {stance = <win_stance> anim = Idle BlendDuration = 0.0}
		else
			printf \{channel = newdebug
				"not bossbattle......"}
			p1_won = true
			if ($game_mode = p2_battle)
				if (($player2_status.current_health) > ($player1_status.current_health))
					p1_won = FALSE
				endif
			else
				if (($player2_status.score) > ($player1_status.score))
					p1_won = FALSE
				endif
			endif
			if (<p1_won> = true)
				($player1_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <win_stance> anim = Idle BlendDuration = 0.0}
				($player2_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> anim = Idle BlendDuration = 0.0}
			else
				($player2_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <win_stance> anim = Idle BlendDuration = 0.0}
				($player1_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> anim = Idle BlendDuration = 0.0}
			endif
		endif
	endif
	if CompositeObjectExists \{Name = drummer}
		Change \{structurename = drummer_info
			last_left_arm_note = 0}
		Change \{structurename = drummer_info
			last_right_arm_note = 0}
		Change \{structurename = drummer_info
			desired_twist = 0.0}
		drummer :Obj_SwitchScript \{play_special_anim
			params = {
				stance = lose
				anim = Idle
				BlendDuration = 0.0
			}}
	endif
	if CompositeObjectExists \{Name = vocalist}
		vocalist :Obj_SwitchScript \{play_special_anim
			params = {
				stance = lose
				anim = Idle
				BlendDuration = 0.0
			}}
	endif
	restore_idle_faces
endscript

script restore_idle_faces 
	if CompositeObjectExists \{Name = GUITARIST}
		GUITARIST :Obj_KillSpawnedScript \{Name = facial_anim_loop}
		GUITARIST :Obj_SpawnScriptNow \{facial_anim_loop}
	endif
	if CompositeObjectExists \{Name = BASSIST}
		BASSIST :Obj_KillSpawnedScript \{Name = facial_anim_loop}
		BASSIST :Obj_SpawnScriptNow \{facial_anim_loop}
	endif
	if CompositeObjectExists \{Name = vocalist}
		vocalist :Obj_KillSpawnedScript \{Name = facial_anim_loop}
		vocalist :Obj_SpawnScriptNow \{facial_anim_loop}
	endif
	if CompositeObjectExists \{Name = drummer}
		drummer :Obj_KillSpawnedScript \{Name = facial_anim_loop}
		drummer :Obj_SpawnScriptNow \{facial_anim_loop}
	endif
endscript

script Hide_Band 
	if CompositeObjectExists \{GUITARIST}
		GUITARIST :Hide
	endif
	if CompositeObjectExists \{BASSIST}
		BASSIST :Hide
	endif
	if CompositeObjectExists \{vocalist}
		vocalist :Hide
	endif
	if CompositeObjectExists \{drummer}
		drummer :Hide
	endif
endscript

script Unhide_Band 
	if CompositeObjectExists \{GUITARIST}
		GUITARIST :unhide
	endif
	if CompositeObjectExists \{BASSIST}
		BASSIST :unhide
	endif
	if CompositeObjectExists \{vocalist}
		vocalist :unhide
	endif
	if CompositeObjectExists \{drummer}
		drummer :unhide
	endif
endscript
using_walk_camera = FALSE

script start_walk_camera 
	if ($using_walk_camera = true || $using_starpower_camera = true || $game_mode = training)
		return
	endif
	Change \{using_walk_camera = true}
	Change \{CameraCuts_AllowNoteScripts = FALSE}
	CameraCuts_SetArrayPrefix \{prefix = 'cameras_walk'
		changetime = $max_walk_camera_cut_delay}
	Wait \{7
		Seconds}
	CameraCuts_SetArrayPrefix \{prefix = 'cameras'}
	Change \{CameraCuts_AllowNoteScripts = true}
	Change \{using_walk_camera = FALSE}
endscript

script Kill_Walk_Camera \{changecamera = 1}
	if ($using_walk_camera = FALSE || $game_mode = training)
		return
	endif
	KillSpawnedScript \{Name = start_walk_camera}
	if (<changecamera> = 1)
		CameraCuts_SetArrayPrefix \{prefix = 'cameras'}
	endif
	Change \{CameraCuts_AllowNoteScripts = true}
	Change \{using_walk_camera = FALSE}
endscript
