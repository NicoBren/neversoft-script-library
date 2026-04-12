
script Transition_PlaySimpleAnim 
	Band_PlaysimpleAnim <...>
	BandManager_SetPlayingIntroAnims name = <name>
endscript

script Band_PlayFacialAnim \{name = Guitarist}
	if CompositeObjectExists name = <name>
		<name> :Obj_KillSpawnedScript name = play_special_facial_anim
		<name> :Obj_SpawnScriptNow play_special_facial_anim params = {Anim = <Anim>}
	endif
	if (<name> = vocalist)
		if CompositeObjectExists \{name = vocalist2}
			vocalist2 :Obj_KillSpawnedScript \{name = play_special_facial_anim}
			vocalist2 :Obj_SpawnScriptNow play_special_facial_anim params = {Anim = <Anim>}
		endif
	endif
endscript

script Band_PlayRockinFacialAnim \{name = Guitarist}
	if CompositeObjectExists name = <name>
		<name> :Obj_KillSpawnedScript name = play_special_facial_anim
		if Band_IsFemale name = <name>
			printf \{qs("\LFemale Rocker Face")}
			<name> :Obj_SpawnScriptNow play_special_facial_anim params = {Anim = gh_rocker_female_hardrockface_4}
		else
			printf \{qs("\LMale Rocker Face")}
			<name> :Obj_SpawnScriptNow play_special_facial_anim params = {Anim = gh_rocker_male_hardrockface_4}
		endif
	endif
endscript

script Band_ChangeFacialAnims \{name = Guitarist
		ff_anims = facial_anims_female_rocker
		Mf_anims = facial_anims_male_rocker
		blend_duration = 0.3}
	if CompositeObjectExists name = <name>
		ExtendCRC <name> '_Info' out = info_struct
		if Band_IsFemale name = <name>
			change structurename = <info_struct> facial_anims = <ff_anims>
		else
			change structurename = <info_struct> facial_anims = <Mf_anims>
		endif
		<name> :Obj_KillSpawnedScript name = play_special_facial_anim
		<name> :Obj_KillSpawnedScript name = facial_anim_loop
		<name> :Obj_SpawnScriptNow facial_anim_loop params = {blend_duration = <blend_duration>}
	else
		printf qs("\L%a doesn't exists...") a = <name>
	endif
endscript

script AE_ChangeFacialAnims \{ff_anims = facial_anims_female_rocker
		Mf_anims = facial_anims_male_rocker
		blend_duration = 0.3}
	Obj_GetID
	Band_ChangeFacialAnims name = <ObjID> ff_anims = <ff_anims> Mf_anims = <Mf_anims> blend_duration = <blend_duration>
endscript

script Band_ChangeStance \{name = Guitarist
		stance = Stance_A}
	if ($use_drummer_events = 0)
		if (<name> = Drummer)
			return
		endif
	endif
	if NOT CompositeObjectExists name = <name>
		return
	endif
	if bassist_should_use_guitarist_commands
		if (<name> = Guitarist)
			if CompositeObjectExists \{name = bassist}
				LaunchEvent type = change_stance target = bassist data = {<...>}
			endif
		elseif (<name> = bassist)
			return
		endif
	endif
	LaunchEvent type = change_stance target = <name> data = {<...>}
endscript

script Band_StopStrumming \{name = Guitarist}
	Band_SetStrumStyle name = <name> male_type = none female_type = none
endscript

script Band_EnableAutoStrums 
	Band_EnableAutoStrums_CFunc name = <name>
endscript

script Band_DisableAutoStrums 
	Band_DisableAutoStrums_CFunc name = <name>
endscript

script Band_EnableAutoFret 
	Band_EnableAutoFret_CFunc name = <name>
endscript

script Band_DisableAutoFret 
	Band_DisableAutoFret_CFunc name = <name>
endscript

script Band_EnableAutoChords 
	Band_EnableAutoChords_CFunc name = <name>
endscript

script Band_DisableAutoChords 
	Band_DisableAutoChords_CFunc name = <name>
endscript

script Band_SetIKChain 
	if (<chain> = guitar)
		printf channel = anim_info qs("\LGUITAR CHAIN ACTIVE on %s") s = <name>
		Band_SetIKChainTarget name = <name> index = 0 target = Bone_IK_Hand_Guitar_R
		Band_SetIKChainTarget name = <name> index = 1 target = Bone_IK_Hand_Guitar_L
		Band_EnableAutoFret name = <name>
		Band_EnableAutoChords name = <name>
		Band_EnableAutoStrums name = <name>
	elseif (<chain> = slave)
		printf channel = anim_info qs("\LSLAVE CHAIN ACTIVE on %s") s = <name>
		Band_SetIKChainTarget name = <name> index = 0 target = Bone_IK_Hand_Slave_R
		Band_SetIKChainTarget name = <name> index = 1 target = Bone_IK_Hand_Slave_L
		Band_DisableAutoFret name = <name>
		Band_DisableAutoChords name = <name>
		Band_DisableAutoStrums name = <name>
	else
		printf channel = anim_info qs("\LDEFAULT SLAVE CHAIN ACTIVE on %s") s = <name>
		Band_SetIKChainTarget name = <name> index = 0 target = Bone_IK_Hand_Slave_R
		Band_SetIKChainTarget name = <name> index = 1 target = Bone_IK_Hand_Slave_L
		Band_DisableAutoFret name = <name>
		Band_DisableAutoChords name = <name>
		Band_DisableAutoStrums name = <name>
	endif
	Bandmanager_setIKchainStrength name = <name> chain = Bone_IK_Hand_Guitar_L strength = 1
	Bandmanager_setIKchainStrength name = <name> chain = Bone_IK_Hand_Guitar_R strength = 1
	Bandmanager_setIKchainStrength name = <name> chain = Bone_IK_Hand_Slave_L strength = 1
	Bandmanager_setIKchainStrength name = <name> chain = Bone_IK_Hand_Slave_R strength = 1
endscript

script AE_SetIK_GuitarL_Off 
	Obj_GetID
	Band_DisableAutoChords name = <ObjID>
endscript

script AE_SetIK_GuitarR_Off 
	Obj_GetID
	Band_DisableAutoStrums name = <ObjID>
endscript

script AE_SetIK_SlaveL_Off 
endscript

script AE_SetIK_SlaveR_Off 
endscript

script AE_SetIK_GuitarL_On 
	Obj_GetID
	Band_SetIKChainTarget name = <ObjID> index = 1 target = Bone_IK_Hand_Guitar_L BlendDuration = 0.3
	Band_EnableAutoChords name = <ObjID>
endscript

script AE_SetIK_GuitarR_On 
	Obj_GetID
	Band_SetIKChainTarget name = <ObjID> index = 0 target = Bone_IK_Hand_Guitar_R BlendDuration = 0.3
	Band_EnableAutoStrums name = <ObjID>
endscript

script AE_SetIK_SlaveL_On 
	Obj_GetID
	Band_SetIKChainTarget name = <ObjID> index = 1 target = Bone_IK_Hand_Slave_L BlendDuration = 0.3
	Band_DisableAutoChords name = <ObjID>
endscript

script AE_SetIK_SlaveR_On 
	Obj_GetID
	Band_SetIKChainTarget name = <ObjID> index = 0 target = Bone_IK_Hand_Slave_R BlendDuration = 0.3
	Band_DisableAutoStrums name = <ObjID>
endscript

script AE_SetIK_GuitarL_On_STRANGLEHOLD 
	Obj_GetID
	Band_SetIKChainTarget name = <ObjID> index = 1 target = Bone_IK_Hand_Guitar_L BlendDuration = 0.3
endscript

script AE_SetIK_GuitarR_On_STRANGLEHOLD 
	Obj_GetID
	Band_SetIKChainTarget name = <ObjID> index = 0 target = Bone_IK_Hand_Guitar_R BlendDuration = 0.3
endscript

script AE_SetIK_SlaveL_On_STRANGLEHOLD 
	Obj_GetID
	Band_SetIKChainTarget name = <ObjID> index = 1 target = Bone_IK_Hand_Slave_L BlendDuration = 0.3
endscript

script AE_SetIK_SlaveR_On_STRANGLEHOLD 
	Obj_GetID
	Band_SetIKChainTarget name = <ObjID> index = 0 target = Bone_IK_Hand_Slave_R BlendDuration = 0.3
endscript

script AE_SetIK_Slaves_On_Jimi 
	if (($game_mode = p2_faceoff) || ($game_mode = p2_pro_faceoff) || ($game_mode = p2_battle))
		Obj_GetID
		Band_SetIKChainTarget name = <ObjID> index = 0 target = Bone_IK_Hand_Slave_R BlendDuration = 0
		Band_SetIKChainTarget name = <ObjID> index = 1 target = Bone_IK_Hand_Slave_L BlendDuration = 0
	endif
endscript

script AE_SetIK_to_FK_L 
	Obj_GetID
	Bandmanager_setIKchainStrength name = <ObjID> chain = Bone_IK_Hand_Guitar_L strength = 0
	Bandmanager_setIKchainStrength name = <ObjID> chain = Bone_IK_Hand_Slave_L strength = 0
endscript

script AE_SetIK_to_FK_R 
	Obj_GetID
	Bandmanager_setIKchainStrength name = <ObjID> chain = Bone_IK_Hand_Guitar_R strength = 0
	Bandmanager_setIKchainStrength name = <ObjID> chain = Bone_IK_Hand_Slave_R strength = 0
endscript

script AE_SetIK_to_IK_L 
	Obj_GetID
	Bandmanager_setIKchainStrength name = <ObjID> chain = Bone_IK_Hand_Guitar_L strength = 1
	Bandmanager_setIKchainStrength name = <ObjID> chain = Bone_IK_Hand_Slave_L strength = 1
endscript

script AE_SetIK_to_IK_R 
	Obj_GetID
	Bandmanager_setIKchainStrength name = <ObjID> chain = Bone_IK_Hand_Guitar_R strength = 1
	Bandmanager_setIKchainStrength name = <ObjID> chain = Bone_IK_Hand_Slave_R strength = 1
endscript

script AE_DisableAutoFret 
	Obj_GetID
	Band_DisableAutoFret name = <ObjID>
endscript

script AE_EnableAutofret 
	Obj_GetID
	Band_EnableAutoFret name = <ObjID>
endscript

script IK_FK_Switch_Override 
	if ($current_song = BandOnTheRun)
		return
	endif
	AE_SetIK_SlaveR_On
endscript

script Band_SetIKChainTarget \{BlendDuration = 0.0}
	Band_SetIKChainTarget_CFunc name = <name> target = <target> index = <index> BlendDuration = <BlendDuration>
endscript

script Band_MoveToNode \{allow_in_2player = false}
	Band_MoveToNode_CFunc allow_in_2player = <allow_in_2player> name = <name> node = <node>
endscript

script Band_MoveToStartNode \{allow_in_2player = false}
	Band_MoveToStartNode_CFunc name = <name> allow_in_2player = <allow_in_2player>
endscript

script Band_PlayAttackAnim 
	if NOT CompositeObjectExists name = <name>
		return
	endif
	attack_type = ($battlemode_powerups [<type>].name)
	if (($player1_status.band_member) = <name>)
		battle_anims = player1_battlemode_anims
	elseif (($player2_status.band_member) = <name>)
		battle_anims = player2_battlemode_anims
	else
		return
	endif
	if NOT StructureContains Structure = $<battle_anims> name = <attack_type>
		return
	endif
	Anim = ($<battle_anims>.<attack_type>.attack_anim)
	if NOT (<Anim> = none)
		LaunchEvent type = play_battle_anim target = <name> data = {<...> no_wait}
	endif
endscript

script Band_PlayResponseAnim 
	if NOT CompositeObjectExists name = <name>
		return
	endif
	attack_type = ($battlemode_powerups [<type>].name)
	if (($player1_status.band_member) = <name>)
		battle_anims = player1_battlemode_anims
	elseif (($player2_status.band_member) = <name>)
		battle_anims = player2_battlemode_anims
	else
		return
	endif
	if NOT StructureContains Structure = $<battle_anims> name = <attack_type>
		return
	endif
	Anim = ($<battle_anims>.<attack_type>.response_anim)
	if NOT (<Anim> = none)
		LaunchEvent type = play_battle_anim target = <name> data = {<...>}
	endif
endscript

script bassist_should_use_guitarist_commands 
	if (($game_mode = p2_faceoff) || ($game_mode = p2_pro_faceoff) || ($game_mode = p2_battle))
		if ($boss_battle = 0)
			return \{true}
		endif
	endif
	return \{false}
endscript

script Band_RestartIdles 
	BandManager_PlayIdle \{name = Guitarist
		all_modes = true
		restart}
	BandManager_PlayIdle \{name = bassist
		all_modes = true
		restart}
	BandManager_PlayIdle \{name = vocalist
		all_modes = true
		restart}
	BandManager_PlayIdle \{name = Drummer
		all_modes = true
		restart}
endscript

script Band_PlayTransitionIdles \{from_restart = false}
	printf \{channel = Pop
		qs("\LBand_PlayTransitionIdles")}
	band_builder_get_band_global
	Band_RestartIdles
	jimi_is_present = false
	if (<Band> = Band_Hendrix)
		if NOT ($game_mode = p2_faceoff || $game_mode = p2_pro_faceoff || $game_mode = p2_battle)
			jimi_is_present = true
		endif
	endif
	if ((<jimi_is_present> = true) && (<from_restart> = true))
		band_playclip \{clip = Song_Loading_With_Jimi
			no_wait
			AllGameModes}
	elseif has_singing_guitarist <...>
		band_playclip \{clip = Song_Loading_Singing_Guitarist
			no_wait
			AllGameModes}
	elseif has_singing_bassist <...>
		band_playclip \{clip = Song_Loading_Singing_Guitarist
			no_wait
			AllGameModes}
	else
		band_playclip \{clip = Song_Loading
			no_wait
			AllGameModes}
	endif
	BandManager_TurnOffAllArmAnims
	Wait \{1
		gameframes}
	BandManager_SetPlayingIntroAnims
endscript

script BandManager_TurnOffArmAnims 
	Band_DisableAutoStrums name = <name>
	Band_DisableAutoFret name = <name>
	Band_DisableAutoChords name = <name>
endscript

script BandManager_TurnOffAllArmAnims 
	BandManager_TurnOffArmAnims \{name = Guitarist}
	BandManager_TurnOffArmAnims \{name = guitarist2}
	BandManager_TurnOffArmAnims \{name = bassist}
	BandManager_TurnOffArmAnims \{name = vocalist}
	Band_SetDrumKitState \{name = Drummer
		state = off}
	Band_SetDrumKitState \{name = drummer2
		state = off}
endscript

script BandManager_TurnOnArmAnims 
	Band_EnableAutoStrums name = <name>
	Band_EnableAutoFret name = <name>
	Band_EnableAutoChords name = <name>
endscript

script BandManager_TurnOnAllArmAnims 
	BandManager_TurnOnArmAnims \{name = Guitarist}
	BandManager_TurnOnArmAnims \{name = guitarist2}
	BandManager_TurnOnArmAnims \{name = bassist}
	BandManager_TurnOnArmAnims \{name = vocalist}
	Band_SetDrumKitState \{name = Drummer
		state = on}
	Band_SetDrumKitState \{name = drummer2
		state = on}
endscript

script Band_SetArmAnimStrength 
	Band_SetArmAnimStrength_CFunc name = <name> target = <target> strength = <strength>
endscript

script Band_SetDrumKitState 
	if CompositeObjectExists name = <name>
		if (<state> = on)
			<name> :Anim_Command target = DrumKit command = ApplyDrumKitDifference_Enable
		else
			<name> :Anim_Command target = DrumKit command = ApplyDrumKitDifference_Disable
		endif
	endif
endscript

script band_playidle 
	if NOT GotParam \{no_wait}
		Wait \{1
			gameframe}
	endif
	BandManager_PlayIdle <...>
endscript

script band_playclip \{startFrame = 0.0
		override_intro = true}
	if NOT GotParam \{AllGameModes}
		if ($game_mode = p2_faceoff || $game_mode = p2_pro_faceoff || $game_mode = p2_battle)
			return
		endif
	endif
	clip_get_time_and_frame
	GetSongTimeMs \{time_offset = $time_gem_offset_with_lag}
	CastToInteger \{time}
	printf channel = anim_info qs("\L_____________________________STARTING CLIP %b") b = <clip>
	if GotParam \{no_wait}
		printf channel = Pop qs("\L%a: band_playclip clip-%b no_wait") a = <time> b = <clip> DoNotResolve
	else
		printf channel = Pop qs("\L%a: band_playclip clip-%b") a = <time> b = <clip> DoNotResolve
	endif
	initial_delay = 1
	teleport_delay = 1
	if GotParam \{no_wait}
		initial_delay = 0
		teleport_delay = 0
	endif
	if (<initial_delay> > 0)
		Wait <initial_delay> gameframes
	endif
	Band_PlayClip_CFunc
	if CompositeObjectExists \{name = Guitarist}
		Guitarist :Obj_SetBoundingSphere \{10}
	endif
	if CompositeObjectExists \{name = bassist}
		bassist :Obj_SetBoundingSphere \{10}
	endif
	if CompositeObjectExists \{name = vocalist}
		vocalist :Obj_SetBoundingSphere \{10}
	endif
	if (<teleport_delay> != 0)
		Wait <teleport_delay> gameframes
	endif
	Band_PlayClip_Finish_CFunc
	printf channel = anim_info qs("\L_____________________________CLIP %b setup") b = <clip>
endscript

script Band_ForceToIdle \{all_modes = false}
	if GotParam \{name}
		if CompositeObjectExists name = <name>
			BandManager_ChangeIK name = <name> enabled = true
			BandManager_PlayIdle name = <name> BlendDuration = 0.0 random_start_time = true all_modes = <all_modes>
		endif
	endif
endscript

script Band_ForceAllToIdle \{all_modes = false}
	if NOT GotParam \{no_wait}
		Wait \{1
			gameframe}
	endif
	Band_ForceToIdle name = Guitarist all_modes = <all_modes> <...>
	Band_ForceToIdle name = bassist all_modes = <all_modes> <...>
	Band_ForceToIdle name = vocalist all_modes = <all_modes> <...>
	Band_ForceToIdle name = Drummer all_modes = <all_modes> <...>
endscript

script Band_MoveAllToStartNodes 
	Band_MoveToStartNode \{name = Guitarist}
	Band_MoveToStartNode \{name = bassist}
	Band_MoveToStartNode \{name = vocalist}
	Band_MoveToStartNode \{name = Drummer}
endscript
tempo_for_anims = -1
tempo_for_drum_anims = -1

script Band_SetAnimTempo 
	change tempo_for_anims = <tempo>
	if ($tempo_for_drum_anims = -1)
		change tempo_for_drum_anims = <tempo>
	endif
endscript

script Band_SetDrumAnimTempo 
	change tempo_for_drum_anims = <tempo>
endscript

script Band_ClearAnimTempo 
	change \{tempo_for_anims = -1}
	change \{tempo_for_drum_anims = -1}
endscript

script Band_IsFemale 
	if NOT GotParam \{name}
		printf \{qs("\LBand_IsFemale called without name param")}
		return
	endif
	if NOT CompositeObjectExists name = <name>
		printf qs("\LBand_IsFemale: Unable to find object %a") a = <name>
		return
	endif
	<name> :GetSingleTag is_female
	if (<is_female> = 1)
		return \{true}
	else
		return \{false}
	endif
endscript

script return_characters_to_idle_after_delay 
	Wait <delay> seconds
	if ($display_clip_info = true)
		clip_get_time_and_frame
		printf channel = clip qs("\L%b: (returning characters to idle)") b = <time_string>
	endif
	clip_get_time_and_frame
	Band_MoveAllToStartNodes
	Band_ForceAllToIdle \{all_modes = true
		no_wait}
endscript

script return_characters_to_idle_at_song_time 
	return_to_idle_time = <time>
	begin
	GetSongTimeMs \{time_offset = $time_gem_offset_with_lag}
	if (<time> >= <return_to_idle_time>)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	if ($display_clip_info = true)
		clip_get_time_and_frame
		printf channel = clip qs("\L%b: (returning characters to idle)") b = <time_string>
	endif
	Wait \{1
		gameframes}
	GetSongTimeMs \{time_offset = $time_gem_offset_with_lag}
	CastToInteger \{time}
	printf channel = Pop qs("\L%a: returning all characters to idle") a = <time>
	Band_ForceAllToIdle \{all_modes = true
		no_wait}
	Wait \{1
		gameframes}
	GetSongTimeMs \{time_offset = $time_gem_offset_with_lag}
	CastToInteger \{time}
	printf channel = Pop qs("\L%a: returning all characters to idle  --> MoveAllToStartNode") a = <time>
	Band_MoveAllToStartNodes
endscript

script clip_get_time_and_frame 
	GetSongTimeMs \{time_offset = $time_gem_offset_with_lag}
	seconds = (<time> / 1000.0)
	if (<seconds> < 0)
		seconds = 0
	endif
	minutes = (<seconds> / 60.0)
	CastToInteger \{minutes}
	seconds = (<seconds> - (<minutes> * 60))
	seconds_float = <seconds>
	CastToInteger \{seconds}
	fps = 30
	fraction_of_second = (<seconds_float> - <seconds>)
	frame = (<fraction_of_second> * <fps>)
	CastToInteger \{frame}
	if (<seconds> < 10)
		if (<frame> < 10)
			FormatText TextName = time_string qs("\L%a:0%b:0%c ") a = <minutes> b = <seconds> c = <frame> d = <time>
		else
			FormatText TextName = time_string qs("\L%a:0%b:%c ") a = <minutes> b = <seconds> c = <frame> d = <time>
		endif
	else
		if (<frame> < 10)
			FormatText TextName = time_string qs("\L%a:%b:0%c ") a = <minutes> b = <seconds> c = <frame> d = <time>
		else
			FormatText TextName = time_string qs("\L%a:%b:%c ") a = <minutes> b = <seconds> c = <frame> d = <time>
		endif
	endif
	FormatText TextName = time_string qs("\L[%d]%a:%b:%c ") a = <minutes> b = <seconds> c = <frame> d = <time>
	return time_string = <time_string>
endscript

script debug_print_frame_time 
	seconds = (<time> / 1000.0)
	if (<seconds> < 0)
		seconds = 0
	endif
	minutes = (<seconds> / 60.0)
	CastToInteger \{minutes}
	seconds = (<seconds> - (<minutes> * 60))
	seconds_float = <seconds>
	CastToInteger \{seconds}
	fps = 30
	fraction_of_second = (<seconds_float> - <seconds>)
	frame = (<fraction_of_second> * <fps>)
	CastToInteger \{frame}
	if (<seconds> < 10)
		if (<frame> < 10)
			FormatText TextName = time_string qs("\L%a:0%b:0%c ") a = <minutes> b = <seconds> c = <frame> d = <time>
		else
			FormatText TextName = time_string qs("\L%a:0%b:%c ") a = <minutes> b = <seconds> c = <frame> d = <time>
		endif
	else
		if (<frame> < 10)
			FormatText TextName = time_string qs("\L%a:%b:0%c ") a = <minutes> b = <seconds> c = <frame> d = <time>
		else
			FormatText TextName = time_string qs("\L%a:%b:%c ") a = <minutes> b = <seconds> c = <frame> d = <time>
		endif
	endif
	printf channel = AnimInfo <time_string>
endscript

script test_all_cameras 
	test_cameras \{name = Guitarist}
	test_cameras \{name = bassist}
	test_cameras \{name = vocalist}
endscript

script test_cameras 
	printf \{channel = testcameras
		qs("\L---------------------------------")}
	if NOT GotParam \{name}
		printf \{channel = testcameras
			qs("\Ltest_cameras script requires 'name' parameter")}
		return
	endif
	print_obj_info name = <name>
	ExtendCRC <name> '_mocap_lock_target_01' out = camera1
	print_obj_info name = <camera1> name_string = <name_string>
	ExtendCRC <name> '_mocap_lock_target_02' out = camera2
	print_obj_info name = <camera2> name_string = <name_string>
	printf \{channel = testcameras
		qs("\L---------------------------------")}
endscript

script print_obj_info 
	if NOT CompositeObjectExists name = <name>
		printf channel = testcameras qs("\Lcould not find %a") a = <name>
		return
	endif
	printf channel = testcameras qs("\L%a") a = <name>
	if <name> :Anim_AnimNodeExists id = BodyTimer
		<name> :Anim_Command target = BodyTimer command = Timer_GetFrameFactor
		<name> :Anim_Command target = BodyTimer command = Timer_GetAnimDuration
		printf channel = testcameras qs("\L length %bs           ...... time %cs (%a)  ") a = (<framefactor>) b = <duration> c = (<framefactor> * <duration>)
	else
		printf \{channel = testcameras
			qs("\L missing bodytimer!")}
	endif
	<name> :Obj_GetPosition
	printf channel = testcameras qs("\L  position %a") a = <pos>
	<name> :Obj_GetOrientation
	dir = ((1.0, 0.0, 0.0) * <x> + (0.0, 1.0, 0.0) * <y> + (0.0, 0.0, 1.0) * <z>)
	printf channel = testcameras qs("\L  orientation %a") a = <dir>
endscript

script Band_ShowMic \{name = Guitarist}
	if ($game_mode = p2_faceoff || $game_mode = p2_pro_faceoff || $game_mode = p2_battle || $boss_battle = 1)
		return
	endif
	if NOT CompositeObjectExists name = <name>
		return
	endif
	if ($Cheat_AirInstruments != 1)
		<name> :show_mic
	endif
endscript

script Band_HideMic \{name = Guitarist}
	if NOT CompositeObjectExists name = <name>
		return
	endif
	<name> :hide_mic
endscript

script Band_ShowMic_Stand \{name = Guitarist}
	if ($game_mode = p2_faceoff || $game_mode = p2_pro_faceoff || $game_mode = p2_battle || $boss_battle = 1)
		return
	endif
	if NOT CompositeObjectExists name = <name>
		return
	endif
	if ($Cheat_AirInstruments != 1)
		<name> :show_mic_stand
	endif
endscript

script Band_HideMic_stand \{name = Guitarist}
	if NOT CompositeObjectExists name = <name>
		return
	endif
	<name> :hide_mic_stand
endscript

script Band_ShowMic_microphone \{name = Guitarist}
	if ($game_mode = p2_faceoff || $game_mode = p2_pro_faceoff || $game_mode = p2_battle || $boss_battle = 1)
		return
	endif
	if NOT CompositeObjectExists name = <name>
		return
	endif
	if ($Cheat_AirInstruments != 1)
		<name> :show_mic_microphone
	endif
endscript

script Band_HideMic_microphone \{name = Guitarist}
	if NOT CompositeObjectExists name = <name>
		return
	endif
	<name> :hide_mic_microphone
endscript

script Band_ShowDrumkit \{name = Drummer}
	if NOT CompositeObjectExists name = <name>
		return
	endif
	if ($Cheat_AirInstruments != 1)
		<name> :show_Drumkit
	endif
endscript

script Band_HideDrumkit \{name = Drummer}
	if NOT CompositeObjectExists name = <name>
		return
	endif
	<name> :hide_Drumkit
endscript

script Band_Hide 
	if CompositeObjectExists name = <name>
		<name> :hide
	endif
	BandManager_HideStrings name = <name>
endscript

script Band_UnHide 
	if CompositeObjectExists name = <name>
		if ($Cheat_InvisibleCharacters != 1)
			<name> :unhide
			<name> :ragdoll_markforreset
		endif
	endif
	if ($Cheat_AirInstruments != 1)
		BandManager_ShowStrings name = <name>
	endif
endscript
enable_guitarist_camera_swapping = false

script Band_EnableGuitaristCameraSwapping 
	change \{enable_guitarist_camera_swapping = true}
endscript

script Band_DisableGuitaristCameraSwapping 
	change \{enable_guitarist_camera_swapping = false}
endscript

script Transition_ChangeIK 
	BandManager_ChangeIK <...>
endscript

script BandManager_StopFacialAnims 
	<name> :Obj_KillSpawnedScript name = play_special_facial_anim
	<name> :Obj_KillSpawnedScript name = facial_anim_loop
	<name> :hero_clear_facial_anim
endscript

script BandManager_StartFacialAnims 
	if NOT CompositeObjectExists name = <name>
		return
	endif
	<name> :Obj_KillSpawnedScript name = play_special_facial_anim
	<name> :Obj_KillSpawnedScript name = facial_anim_loop
	<name> :Obj_SpawnScriptNow facial_anim_loop
endscript

script BandManager_StartAllFacialAnims 
	BandManager_StartFacialAnims \{name = Guitarist}
	BandManager_StartFacialAnims \{name = guitarist2}
	BandManager_StartFacialAnims \{name = bassist}
	BandManager_StartFacialAnims \{name = vocalist}
	BandManager_StartFacialAnims \{name = vocalist2}
	BandManager_StartFacialAnims \{name = Drummer}
endscript

script BandManager_AirGuitarCheat 
	if ($Cheat_AirInstruments = 1)
		BandManager_HideAllInstruments
	endif
endscript

script BandManager_InvisibleCharactersCheat 
	if ($Cheat_InvisibleCharacters = 1)
		BandManager_HideAllMusicians
	endif
endscript

script BandManager_HideInstrument 
	if CompositeObjectExists <name>
		<name> :HideInstrument
		BandManager_HideStrings name = <name>
	endif
endscript

script BandManager_HideAllInstruments 
	BandManager_HideInstrument \{name = Guitarist}
	BandManager_HideInstrument \{name = guitarist2}
	BandManager_HideInstrument \{name = bassist}
	BandManager_HideInstrument \{name = vocalist}
	BandManager_HideInstrument \{name = vocalist2}
	BandManager_HideInstrument \{name = Drummer}
endscript

script BandManager_HideMusician 
	if CompositeObjectExists <name>
		<name> :HideMusician
	endif
endscript

script BandManager_HideAllMusicians 
	BandManager_HideMusician \{name = Guitarist}
	BandManager_HideMusician \{name = guitarist2}
	BandManager_HideMusician \{name = bassist}
	BandManager_HideMusician \{name = vocalist}
	BandManager_HideMusician \{name = vocalist2}
	BandManager_HideMusician \{name = Drummer}
endscript
