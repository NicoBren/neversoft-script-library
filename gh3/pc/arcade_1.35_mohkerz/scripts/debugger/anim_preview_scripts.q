
script UnHidePlayerAndDestroyFakes 
	KillSpawnedScript \{Name = _TestAnimSequence}
	if CompositeObjectExists \{Name = FakeCharacter}
		FakeCharacter :Die
	endif
	if CompositeObjectExists \{Name = AnimTreePreviewObject}
		AnimTreePreviewObject :Die
	endif
endscript

script TestAnim \{Skeleton = GH3_guitarist_axel}
	if GotParam \{OFF}
		UnHidePlayerAndDestroyFakes
	else
		ReloadAndTestAnim <...> Skeleton = <Skeleton>
	endif
endscript

script ReloadAndTestAnim 
	KillSpawnedScript \{Name = _TestAnimSequence}
	LaunchEvent \{Type = DrawRequested
		data = {
			cycledown
		}}
	formatText checksumName = AnimName '%s' s = <anim> DontAssertForChecksums
	if GotParam \{DifferenceAnim}
		if (<DifferenceAnim> = "")
		else
			formatText checksumName = DifferenceAnimName '%s' s = <DifferenceAnim>
		endif
	endif
	CreateFake \{Original = GUITARIST
		Skeleton = GH3_guitarist_axel
		Pos = (0.0, 2.0, 2.0)}
	if GotParam \{cycle}
		AnimTreePreviewObject :ModelViewer_PlayAnim anim = <AnimName> BlendPeriod = 0 speed = <speed> cycle
	else
		AnimTreePreviewObject :ModelViewer_PlayAnim anim = <AnimName> BlendPeriod = 0 speed = <speed>
	endif
	if GotParam \{DifferenceAnim}
		AnimTreePreviewObject :Obj_PoseControllerCommand Command = PlaySequence DifferenceAnimName = <DifferenceAnimName> differenceAnimAmount = <differenceAnimAmount>
	endif
	AnimTreePreviewObject :Obj_ForceUpdate
endscript

script CreateFake 
	if NOT CompositeObjectExists Name = <Original>
		return
	endif
	if CompositeObjectExists \{Name = AnimTreePreviewObject}
		AnimTreePreviewObject :Die
	endif
	UpdateAnimCache \{CLEAR}
	<Original> :Obj_GetQuat
	CreateCompositeObject {
		components = [
			{
				component = Suspend
			}
			{
				component = AnimTree
			}
			{
				component = Skeleton
			}
			{
				component = SetDisplayMatrix
			}
			{
				component = Model
				cloneFrom = <Original>
			}
		]
		params = {
			skeletonname = <Skeleton>
			Name = AnimTreePreviewObject
			Pos = <Pos>
			orientation = <Quat>
		}
	}
	AnimTreePreviewObject :ModelViewer_InitAnimTree
endscript

script AnimTreePreview 
	AnimTreePreview_NxCommon targetObject = GUITARIST ragdoll = ragdoll_ped <...>
	if NOT CompositeObjectExists \{AnimTreePreviewObject}
		return
	endif
	AnimTreePreviewObject :Unpause
	if CompositeObjectExists \{GUITARIST}
		GUITARIST :Obj_SwitchScript \{guitarist_idle_animpreview}
	endif
	Change \{crowd_debug_mode = 1}
	PlayIGCCam \{Name = anim_preview_cam
		LockTo = GUITARIST
		Pos = (-0.9129459, 2.0256813, 2.383587)
		Quat = (0.045517996, 0.963656, -0.18475299)
		FOV = 72.0
		play_hold
		interrupt_current}
endscript

script AnimTreePreviewRestore 
	UnHidePlayerAndDestroyFakes
	Change \{crowd_debug_mode = 0}
	KillSkaterCamAnim \{Name = anim_preview_cam}
	if CompositeObjectExists \{GUITARIST}
		GUITARIST :unhide
	endif
endscript

script UpdateHeroDifferenceAnim 
	if (<DifferenceAnim> = "")
	else
		formatText checksumName = DifferenceAnimName '%s' s = <DifferenceAnim>
		if CompositeObjectExists \{Name = AnimTreePreviewObject}
			AnimTreePreviewObject :UpdateDifferenceAnim DifferenceAnimName = <DifferenceAnimName> differenceAnimAmount = <differenceAnimAmount>
		endif
	endif
endscript

script _TestAnimSequence 
	if GotParam \{Animations}
		CreateFakePlayer \{Skeleton = GH3_Guitar}
		begin
		GetArraySize <Animations>
		<index> = 0
		begin
		formatText checksumName = AnimName '%s' s = (<Animations> [<index>].anim) DontAssertForChecksums
		AnimTreePreviewObject :ModelViewer_PlayAnim {
			anim = <AnimName>
			speed = (<Animations> [<index>].speed)
			BlendPeriod = (<Animations> [<index>].BlendPeriod)
		}
		if (<index> = 0)
			AnimTreePreviewObject :Obj_ForceUpdate
		endif
		AnimTreePreviewObject :ModelViewer_WaitAnimFinished
		<index> = (<index> + 1)
		repeat <array_Size>
		if NOT GotParam \{cycle}
			break
		endif
		repeat
		Wait \{1
			Second}
		SpawnScriptLater \{UnHidePlayerAndDestroyFakes}
	endif
endscript

script TestAnimSequence 
	KillSpawnedScript \{Name = _TestAnimSequence}
	SpawnScriptLater _TestAnimSequence params = <...>
endscript

script killanimpreviewrefs 
	UnHidePlayerAndDestroyFakes
endscript
