guitarist_info = {
	anim_set = judy_animations
	stance = stance_frontend
	finger_anims = guitarist_finger_anims_large
	fret_anims = guitarist_fret_anims
	strum = Normal
	guitar_model = none
	playing_missed_note = false
	last_strum_length = Short
	current_anim = Idle
	anim_repeat_count = 1
	arms_disabled = 0
	disable_arms = 0
	cycle_anim = false
	next_stance = stance_frontend
	next_anim = none
	next_anim_repeat_count = 1
	next_anim_disable_arms = 0
	cycle_next_anim = false
	last_anim_name = none
	waiting_for_cameracut = false
	allow_movement = true
	target_node = none
	facial_anim = Idle
	scale = 1.0
}
bassist_info = {
	anim_set = axel_animations
	stance = stance_frontend
	finger_anims = guitarist_finger_anims_large
	fret_anims = guitarist_fret_anims
	strum = Normal
	bass_model = none
	playing_missed_note = false
	last_strum_length = Short
	current_anim = Idle
	anim_repeat_count = 1
	arms_disabled = 0
	disable_arms = 0
	cycle_anim = false
	next_stance = stance_frontend
	next_anim = none
	next_anim_repeat_count = 1
	next_anim_disable_arms = 0
	cycle_next_anim = false
	last_anim_name = none
	waiting_for_cameracut = false
	allow_movement = true
	target_node = none
	facial_anim = Idle
	scale = 1.0
}
vocalist_info = {
	anim_set = vocalist_animations
	stance = Stance_A
	current_anim = Idle
	anim_repeat_count = 1
	disable_arms = 0
	arms_disabled = 0
	cycle_anim = false
	next_stance = Stance_A
	next_anim = none
	next_anim_repeat_count = 1
	next_anim_disable_arms = 0
	cycle_next_anim = false
	last_anim_name = none
	allow_movement = true
	target_node = none
	facial_anim = Idle
	scale = 1.0
}
drummer_info = {
	Twist = 0.0
	desired_twist = 0.0
	anim_set = drummer_animations
	stance = Stance_A
	current_anim = Idle
	anim_repeat_count = 1
	disable_arms = 0
	arms_disabled = 0
	cycle_anim = false
	next_stance = Stance_A
	next_anim = none
	next_anim_repeat_count = 1
	next_anim_disable_arms = 0
	cycle_next_anim = false
	last_anim_name = none
	allow_movement = true
	target_node = none
	facial_anim = Idle
	last_left_arm_note = 0
	last_right_arm_note = 0
	scale = 1.0
}
current_bass_model = none

script create_band \{async = 0}
	if ($disable_band = 1)
		return
	endif
	GetPakManCurrent \{map = zones}
	if (<pak> = z_credits)
		if NOT create_guitarist async = <async>
			return \{false}
		endif
		unload_character \{name = bassist}
		unload_character \{name = vocalist}
		unload_character \{name = Drummer}
		set_bandvisible
		return \{true}
	endif
	if ($current_num_players = 1)
		if NOT create_guitarist async = <async>
			return \{false}
		endif
		if NOT create_drummer async = <async>
			return \{false}
		endif
		get_song_struct song = ($current_song)
		if StructureContains Structure = <song_struct> name = bassist
			bassist_profile = (<song_struct>.bassist)
			if NOT create_bassist profile_name = <bassist_profile> async = <async>
				return \{false}
			endif
		else
			if NOT create_bassist async = <async>
				return \{false}
			endif
		endif
		if StructureContains Structure = <song_struct> name = singer
			if (<song_struct>.singer = none)
				if CompositeObjectExists \{name = vocalist}
					unload_character \{name = vocalist}
				endif
			else
				if (<pak> = z_wikker || <pak> = z_budokan || <pak> = z_hell)
					if (<song_struct>.singer = Female)
						singer_profile = 'singer_female_alt'
					elseif (<song_struct>.singer = bret)
						singer_profile = 'singer_bret_alt'
					else
						singer_profile = 'singer_alt'
					endif
				else
					if (<song_struct>.singer = Female)
						singer_profile = 'singer_female'
					elseif (<song_struct>.singer = bret)
						singer_profile = 'singer_bret'
					else
						singer_profile = 'singer'
					endif
				endif
				if ($Cheat_BretMichaels = 1)
					if NOT (<song_struct>.singer = Female)
						singer_profile = 'singer_bret'
					endif
				endif
				if NOT create_vocalist profile_name = <singer_profile> async = <async>
					return \{false}
				endif
			endif
		else
			if ($Cheat_BretMichaels = 1)
				singer_profile = 'singer_bret'
			else
				singer_profile = 'singer'
			endif
			if NOT create_vocalist profile_name = <singer_profile> async = <async>
				return \{false}
			endif
		endif
	else
		unload_character \{name = vocalist}
		if NOT create_guitarist name = Guitarist async = <async>
			return \{false}
		endif
		if NOT create_guitarist name = bassist async = <async>
			return \{false}
		endif
		if NOT create_drummer async = <async>
			return \{false}
		endif
	endif
	set_bandvisible
	return \{true}
endscript

script create_guitarist_profile 
	player2_is_lead = false
	if ($current_num_players = 2)
		if (($game_mode = p2_career) || ($game_mode = p2_coop))
			if NOT ($player1_status.part = guitar)
				player2_is_lead = true
			endif
		endif
	endif
	if ((<name> = Guitarist && <player2_is_lead> = false) || (<name> = bassist && <player2_is_lead> = true))
		player_status = player1_status
	else
		player_status = player2_status
	endif
	found = 0
	find_profile_by_id id = ($<player_status>.character_id)
	<found> = 1
	if (<found> = 1)
		if GotParam \{no_guitar}
			<instrument_id> = none
		else
			if ($boss_battle = 1 && <name> = bassist)
				get_musician_profile_struct index = <index>
				<instrument_id> = (<profile_struct>.musician_instrument.desc_id)
			else
				<instrument_id> = ($<player_status>.instrument_id)
			endif
		endif
		if ($Cheat_AirGuitar = 1)
			if NOT ($is_network_game)
				<instrument_id> = none
			endif
		endif
		outfit = ($<player_status>.outfit)
		style = ($<player_status>.style)
		get_musician_profile_struct index = <index>
		character_name = (<profile_struct>.name)
		FormatText checksumname = body_id 'Guitarist_%n_Outfit%o_Style%s' n = <character_name> o = <outfit> s = <style>
		profile = {<profile_struct>
			musician_instrument = {desc_id = <instrument_id>}
			musician_body = {desc_id = <body_id>}
			download_musician_instrument = {desc_id = <instrument_id>}
			download_musician_body = {desc_id = <body_id>}
			outfit = <outfit>}
	endif
	return <...>
endscript

script create_guitarist \{name = Guitarist
		profile_name = 'judy'
		instrument_id = Instrument_Les_Paul_Black
		async = 0
		animpak = 1}
	ExtendCRC <name> '_Info' out = info_struct
	printf channel = AnimInfo "creating guitarist - %a ........." a = <name>
	create_guitarist_profile <...>
	character_id = ($<player_status>.character_id)
	if (<found> = 1)
		if GotParam \{node_name}
			waypoint_id = <node_name>
		else
			get_start_node_id member = <name>
		endif
		if DoesWayPointExist name = <waypoint_id>
			change structurename = <info_struct> target_node = <waypoint_id>
		else
			printf "unable to find starting position for %a ........" a = <name>
		endif
		ClearEventHandlerGroup \{hand_events}
		if NOT create_band_member name = <name> profile = <profile> start_node = <waypoint_id> <...>
			return \{false}
		endif
		find_profile_by_id id = <character_id>
		FormatText TextName = highway_name 'Guitarist_%n_Outfit%o_Style%s' n = (<profile_struct>.name) o = <outfit> s = <style>
		AddToMaterialLibrary scene = <highway_name>
		FormatText checksumname = highway_material 'sys_%a_1_highway_sys_%a_1_highway' a = (<profile_struct>.name)
		change structurename = <player_status> highway_material = <highway_material>
		change structurename = <player_status> band_member = <name>
		get_musician_profile_struct index = <index>
		change structurename = <info_struct> anim_set = (<profile_struct>.anim_set)
		change structurename = <info_struct> finger_anims = (<profile_struct>.finger_anims)
		change structurename = <info_struct> fret_anims = (<profile_struct>.fret_anims)
		change structurename = <info_struct> strum = (<profile_struct>.strum_anims)
		change structurename = <info_struct> allow_movement = true
		change structurename = <info_struct> arms_disabled = 0
		change structurename = <info_struct> disable_arms = 0
		change structurename = <info_struct> next_stance = ($<info_struct>.stance)
		if StructureContains Structure = <profile_struct> name = scale
			scale_x = ((<profile_struct>.scale).(1.0, 0.0, 0.0))
			scale_y = ((<profile_struct>.scale).(0.0, 1.0, 0.0))
			scale_z = ((<profile_struct>.scale).(0.0, 0.0, 1.0))
			if ((<scale_x> != <scale_y>) || (<scale_y> != <scale_z>))
				ScriptAssert \{"Attempting to create a guitarist with a non-uniform scale!"}
			endif
			printf channel = newdebug "found scale in character profile! %a ......." a = (<profile_struct>.scale)
			change structurename = <info_struct> scale = <scale_x>
		else
			change structurename = <info_struct> scale = 1.0
		endif
		stance = ($<info_struct>.stance)
		printf channel = AnimInfo "creating guitarist in stance %a ........" a = <stance>
		if (<stance> = stance_frontend || <stance> = stance_frontend_guitar)
			change structurename = <info_struct> arms_disabled = 2
			change structurename = <info_struct> disable_arms = 2
			<name> :hero_toggle_arms num_arms = 0 prev_num_arms = 2 blend_time = 0.0
		else
			<name> :hero_toggle_arms num_arms = 1 prev_num_arms = 0 blend_time = 0.0
		endif
		finger_anims = ($<info_struct>.finger_anims)
		fret_anims = ($<info_struct>.fret_anims)
		strum_type = ($<info_struct>.strum)
		ExtendCRC <strum_type> '_Strums' out = strum_anims
		if NOT GotParam \{no_strum}
			<name> :hero_play_strum_anim Anim = ($<strum_anims>.no_strum_anim)
			<name> :hero_play_fret_anim Anim = (<fret_anims>.track_123)
			<name> :hero_play_finger_anim Anim = (<finger_anims>.track_none)
		endif
		if IsWinPort
			if NOT (<character_id> = RIPPER)
				<name> :ragdoll_setaccessorybones accessory_bones = $Guitarist_accessory_bones
			endif
		else
			<name> :ragdoll_setaccessorybones accessory_bones = $Guitarist_accessory_bones
		endif
		<name> :Obj_SwitchScript guitarist_idle
		<name> :Obj_SpawnScriptNow facial_anim_loop
		if GotParam \{no_anim}
			spawnscriptnow temp_hero_pause_script params = {name = <name>}
		endif
		<name> :Obj_ForceUpdate
	else
		printf \{"profile not found in create_guitarist! ........."}
	endif
	return \{true}
endscript

script temp_hero_pause_script 
	Wait \{1
		gameframes}
	if <name> :Anim_AnimNodeExists id = BodyTimer
		<name> :Anim_Command target = BodyTimer command = Timer_SetSpeed params = {Speed = 0.0}
	endif
endscript

script create_bassist \{name = bassist
		profile_name = 'bassist'
		async = 0}
	ExtendCRC <name> '_Info' out = info_struct
	printf channel = AnimInfo "creating bassist - %a ........." a = <name>
	find_profile name = <profile_name>
	if (<found> = 1)
		get_start_node_id member = <name>
		if DoesWayPointExist name = <waypoint_id>
			GetWaypointPos name = <waypoint_id>
			change structurename = <info_struct> target_node = <waypoint_id>
		else
			printf "unable to find starting position for %a ........" a = <name>
		endif
		get_musician_profile_struct index = <index>
		if ($current_bass_model = none)
			profile = <profile_struct>
		else
			profile = {
				<profile_struct>
				musician_instrument = {desc_id = ($current_bass_model)}
			}
		endif
		if NOT create_band_member name = <name> profile = <profile> start_node = <waypoint_id> <...>
			return \{false}
		endif
		get_musician_profile_struct index = <index>
		change structurename = <info_struct> anim_set = (<profile_struct>.anim_set)
		change structurename = <info_struct> finger_anims = (<profile_struct>.finger_anims)
		change structurename = <info_struct> fret_anims = (<profile_struct>.fret_anims)
		change structurename = <info_struct> strum = (<profile_struct>.strum_anims)
		change structurename = <info_struct> allow_movement = true
		change structurename = <info_struct> arms_disabled = 0
		change structurename = <info_struct> disable_arms = 0
		if StructureContains Structure = <profile_struct> name = scale
			scale_x = ((<profile_struct>.scale) * (1.0, 0.0, 0.0))
			scale_y = ((<profile_struct>.scale) * (0.0, 1.0, 0.0))
			scale_z = ((<profile_struct>.scale) * (0.0, 0.0, 1.0))
			if ((<scale_x> != <scale_y>) || (<scale_y> != <scale_z>))
				ScriptAssert \{"Attempting to create a guitarist with a non-uniform scale!"}
			endif
			printf channel = newdebug "found scale in character profile! %a ......." a = (<profile_struct>.scale)
			change structurename = <info_struct> scale = <scale_x>
		else
			change structurename = <info_struct> scale = 1.0
		endif
		if GotParam \{stance}
			change structurename = <info_struct> stance = <stance>
		else
			change structurename = <info_struct> stance = (<profile_struct>.stance)
		endif
		finger_anims = ($<info_struct>.finger_anims)
		fret_anims = ($<info_struct>.fret_anims)
		strum_type = ($bassist_info.strum)
		ExtendCRC <strum_type> '_Strums' out = strum_anims
		if NOT GotParam \{no_strum}
			<name> :hero_play_strum_anim Anim = ($<strum_anims>.no_strum_anim)
			<name> :hero_play_fret_anim Anim = (<fret_anims>.track_106)
			<name> :hero_play_finger_anim Anim = (<finger_anims>.track_none)
		endif
		<name> :ragdoll_setaccessorybones accessory_bones = $Guitarist_accessory_bones
		<name> :Obj_SwitchScript guitarist_idle
		<name> :Obj_SpawnScriptNow facial_anim_loop
	else
		printf \{"profile not found in create_bassist! ........."}
	endif
	return \{true}
endscript

script create_vocalist \{name = vocalist
		profile_name = 'singer'
		async = 0}
	ExtendCRC <name> '_Info' out = info_struct
	printf "creating vocalist - %a ........." a = <name>
	find_profile name = <profile_name>
	if (<found> = 1)
		get_start_node_id member = <name>
		if DoesWayPointExist name = <waypoint_id>
			GetWaypointPos name = <waypoint_id>
			change structurename = <info_struct> target_node = <waypoint_id>
		else
			printf "unable to find starting position for %a ........" a = <name>
		endif
		get_musician_profile_struct index = <index>
		if NOT create_band_member name = <name> profile = <profile_struct> start_node = <waypoint_id> <...>
			return \{false}
		endif
		change structurename = <info_struct> anim_set = (<profile_struct>.anim_set)
		change structurename = <info_struct> allow_movement = true
		if GotParam \{stance}
			change structurename = <info_struct> stance = <stance>
		else
			change structurename = <info_struct> stance = (<profile_struct>.stance)
		endif
		<name> :ragdoll_setaccessorybones accessory_bones = $Guitarist_accessory_bones
		<name> :Obj_SwitchScript BandMember_Idle
		<name> :Obj_SpawnScriptNow facial_anim_loop
	else
		printf \{"profile not found in create_vocalist! ........."}
	endif
	return \{true}
endscript

script create_drummer \{name = Drummer
		profile_name = 'drummer'
		async = 0}
	ExtendCRC <name> '_Info' out = info_struct
	printf "creating drummer - %a ........." a = <name>
	find_profile name = <profile_name>
	if (<found> = 1)
		get_start_node_id member = <name>
		if DoesWayPointExist name = <waypoint_id>
			GetWaypointPos name = <waypoint_id>
			change structurename = <info_struct> target_node = <waypoint_id>
		else
			printf "unable to find starting position for %a ........" a = <name>
		endif
		get_musician_profile_struct index = <index>
		if NOT create_band_member name = <name> profile = <profile_struct> start_node = <waypoint_id> <...>
			return \{false}
		endif
		change structurename = <info_struct> anim_set = (<profile_struct>.anim_set)
		change structurename = <info_struct> allow_movement = true
		if GotParam \{stance}
			change structurename = <info_struct> stance = <stance>
		else
			change structurename = <info_struct> stance = (<profile_struct>.stance)
		endif
		<name> :ragdoll_setaccessorybones accessory_bones = $Guitarist_accessory_bones
		<name> :Obj_KillSpawnedScript name = drummer_autotwist
		<name> :Obj_SpawnScriptNow drummer_autotwist
		<name> :Obj_SwitchScript BandMember_Idle
		<name> :Obj_SpawnScriptNow facial_anim_loop
		change \{structurename = drummer_info
			last_left_arm_note = 0}
		change \{structurename = drummer_info
			last_right_arm_note = 0}
	else
		printf \{"profile not found in create_drummer! ........."}
	endif
	return \{true}
endscript

script drummer_autotwist 
	hero_play_anim \{Tree = $drummer_twist_branch
		target = BodyTwist
		Anim = Test_Drum_BodyTwist_D
		BlendDuration = 0.0}
	change_rate = 0.18
	begin
	Twist = ($drummer_info.Twist)
	compute_desired_drummer_twist
	diff = (<desired_twist> - <Twist>)
	if (<Twist> < <desired_twist>)
		if (<diff> < $drummer_twist_rate)
			Twist = <desired_twist>
		else
			Twist = (<Twist> + $drummer_twist_rate)
		endif
	elseif (<Twist> > <desired_twist>)
		if ((<diff> * -1) < $drummer_twist_rate)
			Twist = <desired_twist>
		else
			Twist = (<Twist> - $drummer_twist_rate)
		endif
	endif
	drummer_twist strength = <Twist>
	change structurename = drummer_info Twist = <Twist>
	Wait \{1
		gameframe}
	repeat
endscript

script unload_character 
	destroy_band_member name = <name>
endscript

script unload_band 
	destroy_band_member \{name = Guitarist}
	destroy_band_member \{name = bassist}
	destroy_band_member \{name = Drummer}
	destroy_band_member \{name = vocalist}
	force_unload_all_character_paks
endscript

script hero_play_random_anim \{BlendDuration = 0.2}
	GetArraySize <anims>
	GetRandomValue name = newindex Integer a = 0 b = (<array_size> - 1)
	anim_name = (<anims> [<newindex>])
	if GotParam \{Cycle}
		hero_play_anim Anim = <anim_name> BlendDuration = <BlendDuration> Cycle
	else
		hero_play_anim Anim = <anim_name> BlendDuration = <BlendDuration>
	endif
endscript

script should_display_debug_info 
	Obj_GetID
	display_info = false
	switch (<ObjID>)
		case Guitarist
		if ($display_guitarist_anim_info = true)
			display_info = true
		endif
		case bassist
		if ($display_bassist_anim_info = true)
			display_info = true
		endif
		case vocalist
		if ($display_vocalist_anim_info = true)
			display_info = true
		endif
		case Drummer
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
	ExtendCRC <ObjID> '_Info' out = info_struct
	count = 0
	begin
	Anim = ($<info_struct>.current_anim)
	Cycle = ($<info_struct>.cycle_anim)
	repeat_count = ($<info_struct>.anim_repeat_count)
	if (<ObjID> = Guitarist || <ObjID> = bassist)
		if (($<info_struct>.disable_arms) = 2)
			if ($<info_struct>.arms_disabled != 2)
				hero_toggle_arms num_arms = 0 prev_num_arms = (2 - ($<info_struct>.arms_disabled))
				change structurename = <info_struct> arms_disabled = 2
			endif
		elseif (($<info_struct>.disable_arms) = 1)
			if ($<info_struct>.arms_disabled != 1)
				hero_toggle_arms num_arms = 1 prev_num_arms = (2 - ($<info_struct>.arms_disabled))
				change structurename = <info_struct> arms_disabled = 1
			endif
		else
			if ($<info_struct>.arms_disabled != 0)
				hero_toggle_arms num_arms = 2 prev_num_arms = (2 - ($<info_struct>.arms_disabled))
				change structurename = <info_struct> arms_disabled = 0
			endif
		endif
	endif
	if (<ObjID> = Guitarist)
		if NOT (<Anim> = Idle)
			change structurename = <info_struct> facial_anim = <Anim>
		endif
	endif
	if hero_play_tempo_anim_cfunc Anim = <Anim> BlendDuration = <blend_time>
		hero_play_anim Anim = <anim_to_run> BlendDuration = <blend_duration> UseMotionExtraction = <use_motion_extraction>
		hero_wait_until_anim_finished
	else
		Wait \{1
			gameframe}
	endif
	display_debug_info = false
	if (should_display_debug_info)
		display_debug_info = true
	endif
	anim_set = ($<info_struct>.anim_set)
	stance = ($<info_struct>.stance)
	next_stance = ($<info_struct>.next_stance)
	stance_changed = false
	if NOT (<next_stance> = <stance>)
		if (<display_debug_info> = true)
			printf channel = AnimInfo "%c stance now changing from %a to %b............" c = <ObjID> a = <stance> b = <next_stance>
		endif
		if play_stance_transition_cfunc anim_set = <anim_set> old_stance = <stance> new_stance = <next_stance>
			hero_play_anim Anim = <anim_to_run>
			hero_wait_until_anim_finished
		endif
		change structurename = <info_struct> stance = <next_stance>
		stance = <next_stance>
		stance_changed = true
	endif
	next_anim = ($<info_struct>.next_anim)
	if (<next_anim> = none && <stance_changed> = false)
		if (<Cycle> = false)
			repeat_count = (<repeat_count> - 1)
			if (<repeat_count> < 1)
				if (<display_debug_info> = true)
					printf channel = AnimInfo "%a has finished playing anim %b " a = <ObjID> b = <Anim>
				endif
				repeat_count = 0
			endif
		endif
		change structurename = <info_struct> anim_repeat_count = <repeat_count>
		if (<Cycle> = false && <repeat_count> <= 0)
			change structurename = <info_struct> current_anim = Idle
			change structurename = <info_struct> cycle_anim = true
			if (<next_stance> = intro || <next_stance> = intro_smstg || <next_stance> = stance_frontend || <next_stance> = stance_frontend_guitar)
			else
				change structurename = <info_struct> disable_arms = 0
			endif
			blend_time = 0.2
			if (<display_debug_info> = true)
				printf channel = AnimInfo "%a has no anims in queue...returning to idle" a = <ObjID>
			endif
		else
			blend_time = 0.2
			if (<display_debug_info> = true)
				if (<Cycle> = false)
					printf channel = AnimInfo "%a repeating the %c anim (%b more times)" c = <Anim> a = <ObjID> b = <repeat_count>
				else
					printf channel = AnimInfo "%a %b anim is cycling" a = <ObjID> b = <Anim>
				endif
			endif
		endif
	else
		repeat_count = ($<info_struct>.next_anim_repeat_count)
		if ((<display_debug_info> = true) && (<next_anim> != none))
			if (<repeat_count> > 1)
				printf channel = AnimInfo "%a will play %b anim %c times ......." a = <ObjID> b = <next_anim> c = <repeat_count>
			else
			endif
		endif
		if (<next_anim> = none)
			if (<display_debug_info> = true)
				printf channel = AnimInfo "%a has no anims in queue...returning to idle" a = <ObjID>
			endif
			next_anim = Idle
			cycle_next_anim = true
		else
			cycle_next_anim = ($<info_struct>.cycle_next_anim)
		endif
		if (<next_stance> = intro || <next_stance> = intro_smstg || <next_stance> = stance_frontend || <next_stance> = stance_frontend_guitar)
			disable_arms_next_anim = 2
		else
			disable_arms_next_anim = ($<info_struct>.next_anim_disable_arms)
		endif
		change structurename = <info_struct> stance = <next_stance>
		change structurename = <info_struct> current_anim = <next_anim>
		change structurename = <info_struct> cycle_anim = <cycle_next_anim>
		change structurename = <info_struct> disable_arms = <disable_arms_next_anim>
		change structurename = <info_struct> next_anim = none
		change structurename = <info_struct> cycle_next_anim = true
		change structurename = <info_struct> anim_repeat_count = <repeat_count>
		change structurename = <info_struct> next_anim_disable_arms = 0
		blend_time = 0.2
	endif
	repeat
endscript

script crowd_play_adjusting_random_anims \{Anim = Idle
		blend_time = 0.2
		startwithnoblend = 0}
	Obj_GetID
	old_speed = undefined
	begin
	hero_get_skill_level_cfunc
	get_anim_speed_for_tempo_cfunc
	if GotParam \{anim_set}
		anims = ($<anim_set>.<Anim>.<skill>.<anim_speed>)
	else
		anims = ($crowd_animations.<Anim>.<skill>.<anim_speed>)
	endif
	GetArraySize <anims>
	GetRandomValue name = newindex Integer a = 0 b = (<array_size> - 1)
	anim_name = (<anims> [<newindex>])
	if (<startwithnoblend> = 1)
		blend_time = 0.0
		startwithnoblend = 0
	elseif (<anim_speed> != <old_speed>)
		blend_time = $Crowd_BlendTime_TempoChange
	elseif (<skill> = Bad)
		blend_time = $Crowd_BlendTime_Bad
	elseif (<Anim> = special)
		blend_time = $Crowd_BlendTime_Special
	elseif (<anim_speed> = Slow)
		blend_time = $Crowd_BlendTime_Slow
	elseif (<anim_speed> = Med)
		blend_time = $Crowd_BlendTime_Med
	elseif (<anim_speed> = Fast)
		blend_time = $Crowd_BlendTime_Fast
	else
		blend_time = -1.0
	endif
	if ($display_crowd_anim_info = true)
		printf channel = Crowd "%a playing %b anim (%c) with blendtime %d ..." a = <ObjID> b = <Anim> c = <anim_name> d = <blend_time>
	endif
	GameObj_PlayAnim Anim = <anim_name> BlendDuration = <blend_time> AnimEvents = on
	GameObj_WaitAnimFinished
	old_speed = <anim_speed>
	repeat
endscript

script hero_strum_guitar \{note_length = 150}
	if (<note_length> < $short_strum_max_gem_length)
		anim_length = Short
	elseif (<note_length> < $med_strum_max_gem_length)
		anim_length = Med
	else
		anim_length = Long
	endif
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
	change structurename = <info_struct> last_strum_length = <anim_length>
	strum_type = ($<info_struct>.strum)
	ExtendCRC <strum_type> '_Strums' out = strum_anims
	if (($<info_struct>.playing_missed_note = false) || ($always_strum = true))
		GetArraySize (<strum_anims>.<anim_length>)
		GetRandomValue name = newindex Integer a = 0 b = (<array_size> - 1)
		strum_anim = (<strum_anims>.<anim_length> [<newindex>])
		hero_play_strum_anim Anim = <strum_anim> BlendDuration = 0.1
	endif
	hero_wait_until_anim_finished \{Timer = StrumTimer}
	hero_play_strum_anim Anim = (($<strum_anims>).no_strum_anim)
endscript

script hero_play_chord \{chord = track_none}
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
	finger_anims = ($<info_struct>.finger_anims)
	if StructureContains Structure = $<finger_anims> name = <chord>
		finger_anim = (<finger_anims>.<chord>)
		if (<chord> = none)
			blend_time = $finger_release_blend_time
		else
			blend_time = $finger_press_blend_time
		endif
	else
		finger_anim = (<finger_anims>.none)
		blend_time = $finger_release_blend_time
	endif
	if (<finger_anim> != none)
		hero_play_finger_anim Anim = <finger_anim> BlendDuration = <blend_time>
	endif
endscript

script find_profile 
	get_musician_profile_size
	if GotParam \{name}
		GetLowerCaseString <name>
		search_name = <lowercasestring>
		found = 0
		index = 0
		begin
		get_musician_profile_struct index = <index>
		GetLowerCaseString (<profile_struct>.name)
		profile_name = <lowercasestring>
		if (<profile_name> = <search_name>)
			found = 1
			break
		endif
		index = (<index> + 1)
		repeat <array_size>
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
		repeat <array_size>
		return found = <found> index = <index>
	endif
endscript

script find_profile_by_id 
	get_musician_profile_size
	found = 0
	index = 0
	begin
	get_musician_profile_struct index = <index>
	next_name = (<profile_struct>.name)
	FormatText checksumname = profile_id '%n' n = <next_name> AddToStringLookup = true
	if (<profile_id> = <id>)
		return true index = <index>
		break
	endif
	index = (<index> + 1)
	repeat <array_size>
	find_profile_by_id \{id = axel}
	return false index = <index>
endscript

script get_waypoint_id \{index = 0}
	GetPakManCurrent \{map = zones}
	GetPakManCurrentName \{map = zones}
	if (<index> < 10)
		FormatText TextName = suffix '_TRG_Waypoint_0%a' a = <index>
	else
		FormatText TextName = suffix '_TRG_Waypoint_%a' a = <index>
	endif
	waypoint_name = (<pakname> + <suffix>)
	AppendSuffixToChecksum Base = <pak> SuffixString = <suffix>
	return waypoint_id = <appended_id> waypoint_name = <waypoint_name>
endscript

script get_start_node_id \{character = "guitarist"}
	player2_is_guitarist = false
	if (($game_mode = p2_career) || ($game_mode = p2_coop))
		if NOT ($player1_status.part = guitar)
			player2_is_guitarist = true
		endif
	endif
	art_deco_encore = false
	GetPakManCurrent \{map = zones}
	if (<pak> = z_artdeco)
		if GetNodeFlag \{LS_ENCORE_POST}
			art_deco_encore = true
		endif
	endif
	switch (<member>)
		case Guitarist
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
		case bassist
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
		case Drummer
		character = "drummer"
		default
		printf \{"Unknown character referenced in get_starting_position!"}
		character = "unknown"
	endswitch
	if GetPakManCurrentName \{map = zones}
		GetPakManCurrent \{map = zones}
		FormatText TextName = suffix '_TRG_Waypoint_%a_start' a = <character>
		waypoint_name = (<pakname> + <suffix>)
		AppendSuffixToChecksum Base = <pak> SuffixString = <suffix>
		return waypoint_id = <appended_id> waypoint_name = <waypoint_name>
	else
		return \{waypoint_id = none
			waypoint_name = "NONE"}
	endif
endscript

script get_skill_level 
	health = ($player1_status.current_health)
	skill = Normal
	if (<health> < 0.66)
		skill = Bad
	elseif (<health> > 1.3299999)
		skill = good
	endif
	return skill = <skill>
endscript

script get_target_node 
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
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

script BandMember_Idle 
	ResetEventHandlersFromTable \{BandMember_Idle_EventTable
		group = hand_events}
	Obj_KillSpawnedScript \{name = hero_play_adjusting_random_anims}
	Obj_SpawnScriptNow \{hero_play_adjusting_random_anims
		params = {
			Anim = Idle
		}}
	Block
endscript

script play_special_facial_anim 
	if NOT GotParam \{Anim}
		return
	endif
	Obj_KillSpawnedScript \{name = facial_anim_loop}
	Obj_GetID
	if (<ObjID> = Guitarist)
		printf \{channel = newdebug
			"playing special facial on guitarist......."}
	endif
	hero_play_facial_anim Anim = <Anim>
	hero_wait_until_anim_finished \{Timer = FacialTimer}
	if (<ObjID> = Guitarist)
		printf \{channel = newdebug
			"done waiting for facial on guitarist......."}
	endif
	Obj_SpawnScriptNow \{facial_anim_loop}
endscript

script facial_anim_loop 
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
	anim_set = ($<info_struct>.anim_set)
	if NOT StructureContains Structure = $<anim_set> name = facial_anims
		return
	endif
	if NOT StructureContains Structure = ($<anim_set>.facial_anims) name = Idle
		return
	endif
	begin
	Anim = ($<info_struct>.facial_anim)
	if NOT StructureContains Structure = ($<anim_set>.facial_anims) name = <Anim>
		if ($display_facial_anim_info = true)
			printf channel = facial "facial anims not defined for %a ... reverting to idle" a = <Anim>
		endif
		Anim = Idle
	endif
	anims = ($<anim_set>.facial_anims.<Anim>)
	GetArraySize <anims>
	GetRandomValue name = index Integer a = 0 b = (<array_size> - 1)
	anim_name = (<anims> [<index>])
	if ($display_facial_anim_info = true)
		printf channel = facial "playing facial anim - %a (%b) ..." a = <Anim> b = <anim_name>
	endif
	change structurename = <info_struct> facial_anim = Idle
	hero_play_facial_anim Anim = <anim_name>
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
	if (($player1_status.band_member) = <ObjID>)
		SetEventHandler \{response = call_script
			event = star_power_onp1
			Scr = handle_star_power
			group = hand_events}
	else (($player2_status.band_member) = <ObjID>)
		SetEventHandler \{response = call_script
			event = star_power_onp2
			Scr = handle_star_power
			group = hand_events}
	endif
	Obj_KillSpawnedScript \{name = hero_play_adjusting_random_anims}
	Obj_SpawnScriptNow \{hero_play_adjusting_random_anims
		params = {
			Anim = Idle
			blend_time = 0.2
			Cycle
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
	Obj_KillSpawnedScript \{name = hero_play_adjusting_random_anims}
	spawnscriptnow \{start_walk_camera}
	walk_to_waypoint <...>
	spawnscriptnow \{Kill_Walk_Camera}
	Obj_SwitchScript \{guitarist_idle}
endscript

script play_special_anim \{stance = Stance_A
		disable_arms = 2
		BlendDuration = 0.2}
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
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
	Obj_KillSpawnedScript \{name = hero_play_adjusting_random_anims}
	if GotParam \{Wait}
		hero_wait_until_anim_finished
	endif
	if (<disable_arms> = 0)
		if (<info_struct>.arms_disabled = 2)
			hero_toggle_arms \{prev_num_arms = 0
				num_arms = 2}
			change structurename = <info_struct> arms_disabled = 0
			change structurename = <info_struct> disable_arms = 0
			change structurename = <info_struct> next_anim_disable_arms = 0
			change structurename = <info_struct> current_anim = Idle
			change structurename = <info_struct> cycle_anim = Idle
			change structurename = <info_struct> next_anim = Idle
			change structurename = <info_struct> cycle_next_anim = true
		endif
	endif
	if (<disable_arms> = 2)
		if (<ObjID> = Guitarist || <ObjID> = bassist || <ObjID> = Drummer)
			hero_disable_arms \{blend_time = 0.0}
		endif
	endif
	change structurename = <info_struct> stance = <stance>
	if hero_play_tempo_anim_cfunc Anim = <Anim> BlendDuration = <BlendDuration>
		hero_play_anim Anim = <anim_to_run> BlendDuration = <blend_duration> UseMotionExtraction = <use_motion_extraction>
	endif
	if (<stance> = win || <stance> = win_smstg || <stance> = lose || <stance> = lose_smstg || <Anim> = starpower)
		ragdoll_markforreset
	endif
	if (<ObjID> = Guitarist || <ObjID> = bassist)
		if (<disable_arms> = 2)
			hero_wait_until_anim_near_end \{time_from_end = 0.25}
			hero_enable_arms \{blend_time = 0.25}
		endif
	endif
	hero_wait_until_anim_finished
	change structurename = <info_struct> stance = Stance_A
	if (<ObjID> = Guitarist || <ObjID> = bassist)
		Obj_SwitchScript \{guitarist_idle}
	else
		Obj_SwitchScript \{BandMember_Idle}
	endif
endscript

script play_simple_anim \{disable_arms = 2
		BlendDuration = 0.0}
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
	ClearEventHandlerGroup \{hand_events}
	Obj_KillSpawnedScript \{name = hero_play_adjusting_random_anims}
	if (<disable_arms> = 2)
		if (<ObjID> = Guitarist || <ObjID> = bassist)
			hero_disable_arms blend_time = <BlendDuration>
		endif
	endif
	hero_play_anim Anim = <Anim> BlendDuration = <BlendDuration>
	if (BlendDuration = 0.0)
		ragdoll_markforreset
	endif
	if (<ObjID> = Guitarist || <ObjID> = bassist)
		hero_wait_until_anim_near_end \{time_from_end = 0.25}
		hero_enable_arms \{blend_time = 0.25}
	endif
	hero_wait_until_anim_finished
	handle_change_stance \{stance = Stance_A
		no_wait}
	if (<ObjID> = Guitarist || <ObjID> = bassist)
		Obj_SwitchScript \{guitarist_idle}
	else
		Obj_SwitchScript \{BandMember_Idle}
	endif
endscript

script handle_star_power 
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
	change structurename = <info_struct> waiting_for_cameracut = true
	begin
	if ($<info_struct>.waiting_for_cameracut = false)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	Obj_SwitchScript \{play_special_anim
		params = {
			stance = Stance_A
			Anim = starpower
			BlendDuration = 0.0
			disable_arms = 0
			respond_to_hand_events = 1
		}}
endscript

script handle_song_won 
	Obj_KillSpawnedScript \{name = handle_star_power}
	printf \{channel = AnimInfo
		"handle song won............"}
	Obj_SwitchScript \{play_special_anim
		params = {
			stance = win
			Anim = Idle
			kill_transitions_when_done
		}}
endscript

script handle_song_failed 
	Obj_KillSpawnedScript \{name = handle_star_power}
	printf \{channel = AnimInfo
		"handle song failed........."}
	Obj_SwitchScript \{play_special_anim
		params = {
			stance = lose
			Anim = Idle
			kill_transitions_when_done
		}}
endscript

script play_intro_anims 
	printf \{channel = AnimInfo
		"play_intro_anims............."}
	intro_stance = intro
	if (UseSmallVenueAnims)
		printf \{channel = AnimInfo
			"Using small venue anims! ............"}
		intro_stance = intro_smstg
	endif
	play_guitarist_intro = true
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_artdeco
		if GetNodeFlag \{LS_ENCORE_POST}
			play_guitarist_intro = false
		endif
	endswitch
	if (<play_guitarist_intro> = true)
		Band_ChangeStance name = Guitarist stance = <intro_stance> no_wait
		Band_ChangeStance name = bassist stance = <intro_stance> no_wait
	else
		if ($game_mode = p2_career || $game_mode = p2_coop)
			Band_ChangeStance name = ($player1_status.band_member) stance = <intro_stance> no_wait
			Band_ChangeStance name = ($player2_status.band_member) stance = Stance_A no_wait
		else
			Band_ChangeStance \{name = Guitarist
				stance = Stance_A
				no_wait}
			Band_ChangeStance name = bassist stance = <intro_stance> no_wait
		endif
	endif
	Band_ChangeStance name = vocalist stance = <intro_stance> no_wait
	Band_ChangeStance \{name = Drummer
		stance = intro
		no_wait}
	Band_ChangeStance \{name = Guitarist
		stance = Stance_A}
	Band_ChangeStance \{name = bassist
		stance = Stance_A}
	Band_ChangeStance \{name = vocalist
		stance = Stance_A}
	Band_ChangeStance \{name = Drummer
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
		return_val = false
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
		if CompositeObjectExists \{name = Guitarist}
			Guitarist :Obj_SwitchScript play_special_anim params = {stance = <win_stance> Anim = Idle kill_transitions_when_done BlendDuration = 0.0}
		endif
		if CompositeObjectExists \{name = bassist}
			bassist :Obj_SwitchScript play_special_anim params = {stance = <win_stance> Anim = Idle kill_transitions_when_done BlendDuration = 0.0}
		endif
	else
		if ($boss_battle = 1)
			Guitarist :Obj_SwitchScript play_special_anim params = {stance = <win_stance> Anim = Idle kill_transitions_when_done BlendDuration = 0.0}
			bassist :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> Anim = Idle kill_transitions_when_done BlendDuration = 0.0}
		else
			p1_won = true
			if ($game_mode = p2_battle)
				if (($player2_status.current_health) > ($player1_status.current_health))
					p1_won = false
				endif
			else
				if (($player2_status.score) > ($player1_status.score))
					p1_won = false
				endif
			endif
			if (<p1_won> = true)
				($player1_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <win_stance> Anim = Idle BlendDuration = 0.0}
				($player2_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> Anim = Idle BlendDuration = 0.0}
			else
				($player2_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <win_stance> Anim = Idle BlendDuration = 0.0}
				($player1_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> Anim = Idle BlendDuration = 0.0}
			endif
		endif
	endif
	if CompositeObjectExists \{name = Drummer}
		change \{structurename = drummer_info
			desired_twist = 0.0}
		change \{structurename = drummer_info
			last_left_arm_note = 0}
		change \{structurename = drummer_info
			last_right_arm_note = 0}
		Drummer :Obj_SwitchScript \{play_special_anim
			params = {
				stance = win
				Anim = Idle
				BlendDuration = 0.0
			}}
	endif
	if CompositeObjectExists \{name = vocalist}
		vocalist :Obj_SwitchScript \{play_special_anim
			params = {
				stance = win
				Anim = Idle
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
		Guitarist :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> Anim = Idle BlendDuration = 0.0}
		bassist :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> Anim = Idle BlendDuration = 0.0}
	else
		if ($boss_battle = 1)
			Guitarist :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> Anim = Idle BlendDuration = 0.0}
			bassist :Obj_SwitchScript play_special_anim params = {stance = <win_stance> Anim = Idle BlendDuration = 0.0}
		else
			printf \{channel = newdebug
				"not bossbattle......"}
			p1_won = true
			if ($game_mode = p2_battle)
				if (($player2_status.current_health) > ($player1_status.current_health))
					p1_won = false
				endif
			else
				if (($player2_status.score) > ($player1_status.score))
					p1_won = false
				endif
			endif
			if (<p1_won> = true)
				($player1_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <win_stance> Anim = Idle BlendDuration = 0.0}
				($player2_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> Anim = Idle BlendDuration = 0.0}
			else
				($player2_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <win_stance> Anim = Idle BlendDuration = 0.0}
				($player1_status.band_member) :Obj_SwitchScript play_special_anim params = {stance = <lose_stance> Anim = Idle BlendDuration = 0.0}
			endif
		endif
	endif
	if CompositeObjectExists \{name = Drummer}
		change \{structurename = drummer_info
			last_left_arm_note = 0}
		change \{structurename = drummer_info
			last_right_arm_note = 0}
		change \{structurename = drummer_info
			desired_twist = 0.0}
		Drummer :Obj_SwitchScript \{play_special_anim
			params = {
				stance = lose
				Anim = Idle
				BlendDuration = 0.0
			}}
	endif
	if CompositeObjectExists \{name = vocalist}
		vocalist :Obj_SwitchScript \{play_special_anim
			params = {
				stance = lose
				Anim = Idle
				BlendDuration = 0.0
			}}
	endif
	restore_idle_faces
endscript

script restore_idle_faces 
	if CompositeObjectExists \{name = Guitarist}
		Guitarist :Obj_KillSpawnedScript \{name = facial_anim_loop}
		Guitarist :Obj_SpawnScriptNow \{facial_anim_loop}
	endif
	if CompositeObjectExists \{name = bassist}
		bassist :Obj_KillSpawnedScript \{name = facial_anim_loop}
		bassist :Obj_SpawnScriptNow \{facial_anim_loop}
	endif
	if CompositeObjectExists \{name = vocalist}
		vocalist :Obj_KillSpawnedScript \{name = facial_anim_loop}
		vocalist :Obj_SpawnScriptNow \{facial_anim_loop}
	endif
	if CompositeObjectExists \{name = Drummer}
		Drummer :Obj_KillSpawnedScript \{name = facial_anim_loop}
		Drummer :Obj_SpawnScriptNow \{facial_anim_loop}
	endif
endscript

script hide_band 
	if CompositeObjectExists \{Guitarist}
		Guitarist :hide
	endif
	if CompositeObjectExists \{bassist}
		bassist :hide
	endif
	if CompositeObjectExists \{vocalist}
		vocalist :hide
	endif
	if CompositeObjectExists \{Drummer}
		Drummer :hide
	endif
endscript

script unhide_band 
	if CompositeObjectExists \{Guitarist}
		Guitarist :unhide
	endif
	if CompositeObjectExists \{bassist}
		bassist :unhide
	endif
	if CompositeObjectExists \{vocalist}
		vocalist :unhide
	endif
	if CompositeObjectExists \{Drummer}
		Drummer :unhide
	endif
endscript
using_walk_camera = false

script start_walk_camera 
	if ($using_walk_camera = true || $using_starpower_camera = true || $game_mode = training)
		return
	endif
	change \{using_walk_camera = true}
	change \{CameraCuts_AllowNoteScripts = false}
	CameraCuts_SetArrayPrefix \{prefix = 'cameras_walk'
		changetime = $max_walk_camera_cut_delay}
	Wait \{7
		seconds}
	CameraCuts_SetArrayPrefix \{prefix = 'cameras'}
	change \{CameraCuts_AllowNoteScripts = true}
	change \{using_walk_camera = false}
endscript

script Kill_Walk_Camera \{changecamera = 1}
	if ($using_walk_camera = false || $game_mode = training)
		return
	endif
	KillSpawnedScript \{name = start_walk_camera}
	if (<changecamera> = 1)
		CameraCuts_SetArrayPrefix \{prefix = 'cameras'}
	endif
	change \{CameraCuts_AllowNoteScripts = true}
	change \{using_walk_camera = false}
endscript
