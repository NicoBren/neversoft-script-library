
script flashsounds 
	EnableRemoveSoundEntry \{enable}
	stars
	printf \{qs(0x1565cdb1)}
	UnLoadPak \{'zones/global/global_sfx.pak'
		Heap = heap_audio}
	WaitUnloadPak \{'zones/global/global_sfx.pak'}
	LoadPak \{'zones/global/global_sfx.pak'
		no_vram
		Heap = heap_audio}
	stars
	printf \{qs(0x2f7fe05d)}
endscript
SfxPreviewEventTree_FAM = {
	Type = FAM
	[
		{
			Type = Source
			anim = sk9_skater_Default
		}
	]
}

script SfxCreateTestFAMObject 
	if CompositeObjectExists \{SfxPreviewEventObject}
		SfxPreviewEventObject :Die
	endif
	skater :Obj_GetPosition
	skater :Obj_GetQuat
	CreateCompositeObject Priority = COIM_Priority_Permanent Heap = Generic {
		components = [{component = SetDisplayMatrix} {component = AnimTree}
			{component = Skeleton} {component = Model}
			{component = Agent} {component = FAM}]
		params = {Name = SfxPreviewEventObject Pos = <Pos> orientation = <Quat> cloneFrom = skater
			skeletonname = sk9_skater species = human voice_profile = TeenMaleSkater1 sex = male
			notice_radius = 6.0 agent_stats = stats_player faction = $faction_test}
	}
	SfxPreviewEventObject :Anim_InitTree \{Tree = SfxPreviewEventTree_FAM
		NodeIdDeclaration = [
			FAM
		]}
endscript

script SfxCreateTestObject 
	if CompositeObjectExists \{SfxPreviewEventObject}
		SfxPreviewEventObject :Die
	endif
	GetCurrentCameraObject
	<camid> :Obj_GetPosition
	<camid> :Obj_GetQuat
	Pos = (<Pos> + (10 * <Quat>))
	CreateCompositeObject Priority = COIM_Priority_Permanent Heap = Generic {
		components = [{component = Sound}]
		params = {Name = SfxPreviewEventObject Pos = <Pos> orientation = <Quat>}
	}
endscript

script SfxDestroyTestObject 
	if CompositeObjectExists \{SfxPreviewEventObject}
		SfxPreviewEventObject :Die
	endif
endscript

script PreviewSoundEvent 
	ExtendCrc <event> '_container' out = container_name
	if StructureContains structure = $<container_name> Command
		printf qs(0xf80d42ac) s = <event>
		if checksumequals a = ($<container_name>.Command) b = PlaySound
			printf \{qs(0xf19fe69b)}
			SoundEvent event = <event>
		elseif checksumequals a = ($<container_name>.Command) b = Obj_PlaySound
			printf \{qs(0xfb51125d)}
			SfxCreateTestObject
			SoundEvent event = <event> object = SfxPreviewEventObject
		elseif checksumequals a = ($<container_name>.Command) b = Agent_PlayVO
			printf \{qs(0x5b7098dd)}
			<buss> = Master
			SfxCreateTestFAMObject
			SoundEvent event = <event> object = SfxPreviewEventObject <...>
		else
			printf \{qs(0x06a01c00)}
		endif
		waitTime = 0
		begin
		if NOT (IsSoundEventPlaying <event>)
			break
		endif
		if (<waitTime> > 200)
			StopSoundEvent <event>
			break
		endif
		Wait \{0.1
			Seconds}
		waitTime = (<waitTime> + 1)
		repeat
		SfxDestroyTestObject
	else
		printf qs(0x3154d6a7) s = <container_name>
	endif
endscript
