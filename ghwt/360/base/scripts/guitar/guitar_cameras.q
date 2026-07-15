CameraCuts_Good_Array = $Default_Cameras_Good
CameraCuts_Normal_Array = $Default_Cameras_Normal
CameraCuts_Poor_Array = $Default_Cameras_Poor
CameraCuts_Performance = good
CameraCuts_LastArray = $CameraCuts_Good_Array
CameraCuts_LastPerformance = good
CameraCuts_Init = false
CameraCuts_Enabled = false
CameraCuts_LastIndex = 0
CameraCuts_LastType = none
CameraCuts_LastName = none
CameraCuts_LastDownbeatIndex = 0
CameraCuts_ChangeTime = 0
CameraCuts_ChangeNow = false
CameraCuts_ForceTime = 0
CameraCuts_NextTime = 0
CameraCuts_ArrayPrefix = 'Cameras'
CameraCuts_ForceType = none
CameraCuts_NextName = none
CameraCuts_ChangeCamEnable = true
CameraCuts_AllowNoteScripts = true
CameraCuts_LastCameraStartTime = 0.0
CameraCuts_ForceChangeTime = 0.0
CameraCuts_ShadowCasters = none
CameraCuts_NextNoteCameraTime = -1
default_handcam_amplitudePosition = 0.05
default_handcam_amplitudeRotation = -0.08
handcam_amplitudePosition = 0.05
handcam_amplitudeRotation = -0.08
CameraCuts_NoteMapping = [
	{
		MidiNote = 0
		Scr = CameraCuts_EnableChangeCam
		params = {
			enable = true
		}
	}
	{
		MidiNote = 1
		Scr = CameraCuts_EnableChangeCam
		params = {
			enable = false
		}
	}
	{
		MidiNote = 3
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_moments'
			changenow
			name = moment01
		}
	}
	{
		MidiNote = 4
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_moments'
			changenow
			name = moment02
		}
	}
	{
		MidiNote = 5
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_moments'
			changenow
			name = moment03
		}
	}
	{
		MidiNote = 6
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_moments'
			changenow
			name = moment04
		}
	}
	{
		MidiNote = 8
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitarist'
			changenow
			type = guitarist_closeup
		}
	}
	{
		MidiNote = 9
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitarist'
			changenow
			name = guitarist_stage
		}
	}
	{
		MidiNote = 10
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitarist'
			changenow
			name = guitarist_mocap01
		}
	}
	{
		MidiNote = 11
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitarist'
			changenow
			name = guitarist_mocap02
		}
	}
	{
		MidiNote = 13
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			type = singer_closeup
		}
	}
	{
		MidiNote = 14
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			name = singer_stage
		}
	}
	{
		MidiNote = 15
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			name = singer_mocap01
		}
	}
	{
		MidiNote = 16
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			name = singer_mocap02
		}
	}
	{
		MidiNote = 18
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_bassist'
			changenow
			name = bassist_closeup
		}
	}
	{
		MidiNote = 19
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_bassist'
			changenow
			name = bassist_stage
		}
	}
	{
		MidiNote = 20
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_bassist'
			changenow
			name = bassist_mocap01
		}
	}
	{
		MidiNote = 21
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_bassist'
			changenow
			name = bassist_mocap02
		}
	}
	{
		MidiNote = 23
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_drummer'
			changenow
			type = drummer_closeup
		}
	}
	{
		MidiNote = 24
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_drummer'
			changenow
			name = drummer_stage
		}
	}
	{
		MidiNote = 25
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_drummer'
			changenow
			name = drummer_mocap01
		}
	}
	{
		MidiNote = 26
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_drummer'
			changenow
			name = drummer_mocap02
		}
	}
	{
		MidiNote = 28
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras'
			changenow
			type = longshot
		}
	}
	{
		MidiNote = 29
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras'
			changenow
			type = midshot
		}
	}
	{
		MidiNote = 30
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras'
			changenow
			type = venue_midshot
		}
	}
	{
		MidiNote = 31
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras'
			changenow
			type = generic_stage_shot
		}
	}
	{
		MidiNote = 33
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_solo'
			changenow
			type = solo_guitar
		}
	}
	{
		MidiNote = 34
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_solo'
			changenow
			name = solo_vocal
		}
	}
	{
		MidiNote = 35
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_solo'
			changenow
			type = solo_drum
		}
	}
	{
		MidiNote = 36
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_solo'
			changenow
			name = solo_bass
		}
	}
	{
		MidiNote = 38
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_single'
			changenow
			type = single
		}
	}
	{
		MidiNote = 40
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_special'
			changenow
			name = special01
		}
	}
	{
		MidiNote = 41
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_special'
			changenow
			name = special02
		}
	}
	{
		MidiNote = 43
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_audience'
			changenow
			type = audience
		}
	}
	{
		MidiNote = 45
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_zoom'
			changenow
			name = zoom_in
		}
	}
	{
		MidiNote = 46
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_zoom'
			changenow
			name = zoom_out
		}
	}
	{
		MidiNote = 48
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_spotlight'
			changenow
			name = spotlight
		}
	}
]
last_camera_array_entry = 0

script cameracuts_iterator 
	printf qs("\LCameras Iterator started with time %d") d = <time_offset>
	change \{CameraCuts_NextNoteCameraTime = -1}
	SetupInitialSongHandCamParams <...>
	SetNoteMappings \{section = cameras
		mapping = $CameraCuts_NoteMapping}
	get_song_prefix song = <song_name>
	FormatText checksumname = event_array '%s_cameras_notes' s = <song_prefix> AddToStringLookup
	if NOT GlobalExists name = <event_array> type = array
		return
	endif
	array_entry = 0
	fretbar_count = 0
	GetArraySize $<event_array>
	array_size = (<array_size> / 2)
	Sync_Cameras_To_Performance song_name = <song_name> Camera_Array = <event_array>
	change \{last_camera_array_entry = 0}
	GetSongTimeMs time_offset = <time_offset>
	if NOT (<array_size> = 0)
		begin
		if ((<time> - <skipleadin>) < $<event_array> [<array_entry>])
			break
		endif
		<array_entry> = (<array_entry> + 2)
		repeat <array_size>
		array_size = (<array_size> - (<array_entry> / 2))
		change last_camera_array_entry = <array_entry>
		if NOT (<array_size> = 0)
			begin
			change CameraCuts_NextNoteCameraTime = ($<event_array> [<array_entry>] - <time_offset>)
			TimeMarkerReached_SetParams time_offset = <time_offset> array = <event_array> array_entry = <array_entry>
			begin
			if TimeMarkerReached
				GetSongTimeMs time_offset = <time_offset>
				break
			endif
			Wait \{1
				gameframe}
			repeat
			TimeMarkerReached_ClearParams
			DecompressNoteValue note_value = ($<event_array> [(<array_entry> + 1)])
			if ($CameraCuts_AllowNoteScripts = true)
				if GetNoteMapping section = cameras note = <note>
					spawnscriptnow (<note_data>.Scr) params = {(<note_data>.params) length = <length>}
				endif
			endif
			change last_camera_array_entry = <array_entry>
			<array_entry> = (<array_entry> + 2)
			repeat <array_size>
		endif
	endif
	change \{CameraCuts_NextNoteCameraTime = -1}
endscript

script CameraCuts_GetNextNoteCameraTime 
	return camera_time = ($CameraCuts_NextNoteCameraTime)
endscript

script CameraCuts_SetArray \{type = good
		array = Default_Cameras_Good}
	if (<type> = good)
		change CameraCuts_Good_Array = $<array>
	endif
	if (<type> = medium)
		change CameraCuts_Normal_Array = $<array>
	endif
	if (<type> = poor)
		change CameraCuts_Poor_Array = $<array>
	endif
endscript

script CameraCuts_SetParams \{performance = medium}
	change CameraCuts_Performance = <performance>
endscript

script SetupInitialSongHandCamParams 
	SetSongHandCamParams amplitudePosition = ($default_handcam_amplitudePosition) amplitudeRotation = ($default_handcam_amplitudeRotation)
	GetSongTimeMs time_offset = <time_offset>
	if (<time> < 0)
		get_song_prefix song = <song_name>
		FormatText checksumname = event_array '%s_performance' s = <song_prefix>
		index = 0
		GetArraySize $<event_array>
		if (<array_size> > 0)
			begin
			if ($<event_array> [<index>].time < 100)
				if ($<event_array> [<index>].Scr = SetSongHandCamParams)
					SetSongHandCamParams ($<event_array> [<index>].params)
					break
				endif
			else
				break
			endif
			index = (<index> + 1)
			repeat <array_size>
		endif
	endif
endscript

script SetSongHandCamParams 
	if GotParam \{amplitudePosition}
		change handcam_amplitudePosition = <amplitudePosition>
	endif
	if GotParam \{amplitudeRotation}
		change handcam_amplitudeRotation = <amplitudeRotation>
	endif
endscript

script CameraCuts_SetArrayPrefix \{prefix = 'cameras'
		type = none
		name = none
		length = 0}
	if NOT ($debug_camera_array = none)
		return
	endif
	change CameraCuts_ArrayPrefix = <prefix>
	change CameraCuts_ForceType = <type>
	change CameraCuts_NextName = <name>
	set_defaultcameracuts
	if GotParam \{changetime}
		change CameraCuts_ForceChangeTime = <changetime>
	endif
	if GotParam \{changenow}
		if (<length> > 200)
			change CameraCuts_NextTime = <length>
		endif
		CameraCuts_EnableChangeCam \{enable = true}
	endif
endscript

script set_defaultcameracut_perf \{perf = 'good'
		perf_checksum = good}
	GetPakManCurrentName \{map = zones}
	if ($current_num_players = 2)
		FormatText checksumname = Cameras_Array '%s_%p_%c_2p' p = $CameraCuts_ArrayPrefix c = <perf> s = <pakname>
		if GlobalExists name = <Cameras_Array> type = array
			CameraCuts_SetArray type = <perf_checksum> array = <Cameras_Array>
			return
		endif
		FormatText checksumname = Cameras_Array '%s_%p_2p' p = $CameraCuts_ArrayPrefix s = <pakname>
		if GlobalExists name = <Cameras_Array> type = array
			CameraCuts_SetArray type = <perf_checksum> array = <Cameras_Array>
			return
		endif
	endif
	FormatText checksumname = Cameras_Array '%s_%p_%c' p = $CameraCuts_ArrayPrefix c = <perf> s = <pakname>
	if GlobalExists name = <Cameras_Array> type = array
		CameraCuts_SetArray type = <perf_checksum> array = <Cameras_Array>
		return
	endif
	FormatText checksumname = Cameras_Array '%s_%p' p = $CameraCuts_ArrayPrefix s = <pakname>
	if GlobalExists name = <Cameras_Array> type = array
		CameraCuts_SetArray type = <perf_checksum> array = <Cameras_Array>
		return
	endif
	FormatText checksumname = Cameras_Array '%s_%p_%c' p = $CameraCuts_ArrayPrefix c = <perf> s = 'default'
	if GlobalExists name = <Cameras_Array> type = array
		CameraCuts_SetArray type = <perf_checksum> array = <Cameras_Array>
		return
	endif
	FormatText \{checksumname = Cameras_Array
		'%s_%p'
		p = $CameraCuts_ArrayPrefix
		s = 'default'}
	if GlobalExists name = <Cameras_Array> type = array
		CameraCuts_SetArray type = <perf_checksum> array = <Cameras_Array>
		return
	endif
	printstruct <...> prefix = ($CameraCuts_ArrayPrefix)
	ScriptAssert \{qs("\LCameraCut Array not found")}
endscript

script set_defaultcameracuts 
	set_defaultcameracut_perf \{perf = 'good'
		perf_checksum = good}
	set_defaultcameracut_perf \{perf = 'normal'
		perf_checksum = medium}
	set_defaultcameracut_perf \{perf = 'poor'
		perf_checksum = poor}
endscript

script create_cameracuts 
	if ($CameraCuts_Init = true)
		return
	else
		change \{CameraCuts_Init = true}
	endif
	kill_dummy_bg_camera
	reset_cameracuts_internal_vars
	CameraCuts_StartCallback
endscript

script reset_cameracuts_internal_vars 
	if ($CameraCuts_Init = false)
		ScriptAssert \{qs("\LDidn't expect camera cuts to be disabled")}
	endif
	change \{CameraCuts_ArrayPrefix = 'cameras'}
	set_defaultcameracuts
	change \{CameraCuts_LastType = none}
	change \{CameraCuts_LastDownbeatIndex = 0}
	change \{CameraCuts_ForceChangeTime = 0.0}
	change \{CameraCuts_ForceType = none}
	change \{CameraCuts_NextName = none}
	if ($game_mode = training || $game_mode = tutorial || $game_mode = practice)
		change \{CameraCuts_ChangeCamEnable = false}
		change \{CameraCuts_AllowNoteScripts = false}
	elseif ($game_mode = p2_faceoff || $game_mode = p2_pro_faceoff || $game_mode = p2_battle || $boss_battle = 1)
		change \{CameraCuts_ChangeCamEnable = true}
		change \{CameraCuts_AllowNoteScripts = false}
	elseif ($current_song = jamsession)
		change \{CameraCuts_ChangeCamEnable = true}
		change \{CameraCuts_AllowNoteScripts = false}
	else
		change \{CameraCuts_ChangeCamEnable = true}
		change \{CameraCuts_AllowNoteScripts = true}
	endif
	change \{CameraCuts_Enabled = true}
endscript

script CameraCuts_GetNextDownbeat 
	get_song_prefix song = ($current_song)
	FormatText checksumname = event_array '%s_lightshow_notes' s = <song_prefix> AddToStringLookup
	if NOT GlobalExists name = <event_array> type = array
		return false endtime = <endtime>
	endif
	GetArraySize $<event_array>
	array_count = ($CameraCuts_LastDownbeatIndex)
	array_size = (<array_size> - <array_count>)
	array_size = (<array_size> / 2)
	if (<array_size> > 0)
		begin
		DecompressNoteValue note_value = ($<event_array> [(<array_count> + 1)])
		if (<note> = 58 || <note> = 57)
			if ($<event_array> [<array_count>] > <endtime>)
				change CameraCuts_LastDownbeatIndex = <array_count>
				return true endtime = ($<event_array> [<array_count>])
			endif
		endif
		array_count = (<array_count> + 2)
		repeat <array_size>
	endif
	printf \{qs("\LNo downbeats left")}
	return false endtime = <endtime>
endscript

script CameraCuts_StartCallback 
	change \{CameraCuts_ChangeNow = false}
	if ($CameraCuts_Enabled = false)
		return
	endif
	if ($CameraCuts_Performance = poor)
		Camera_Array = CameraCuts_Poor_Array
	else
		if ($CameraCuts_Performance = good)
			Camera_Array = CameraCuts_Good_Array
		else
			Camera_Array = CameraCuts_Normal_Array
		endif
	endif
	if CompositeObjectExists \{name = Guitarist}
		Guitarist :get_target_node
	endif
	if NOT ($CameraCuts_NextName = none)
		CameraCut_GetArraySize Camera_Array = <Camera_Array> name = ($CameraCuts_NextName) target_node = <target_node>
	elseif NOT ($CameraCuts_ForceType = none)
		CameraCut_GetArraySize Camera_Array = <Camera_Array> includetype = $CameraCuts_ForceType target_node = <target_node>
	elseif ($game_mode = p2_faceoff || $game_mode = p2_pro_faceoff || $game_mode = p2_battle || $boss_battle = 1)
		CameraCut_GetArraySize Camera_Array = <Camera_Array> excludename = $CameraCuts_LastName target_node = <target_node>
	elseif ($current_song = jamsession)
		CameraCut_GetArraySize Camera_Array = <Camera_Array> excludename = $CameraCuts_LastName target_node = <target_node>
	else
		CameraCut_GetArraySize Camera_Array = <Camera_Array> excludetype = $CameraCuts_LastType target_node = <target_node>
	endif
	if (<array_size> = 0)
		newindex = 0
	else
		GetRandomValue name = newindex Integer a = 0 b = (<array_size> - 1)
		CameraCut_GetCameraIndex Camera_Array = <Camera_Array> newindex = <newindex>
	endif
	debug_flags = none
	if NOT ($debug_camera_array = none)
		select_cameracut_video_end
		found = 0
		FormatText \{checksumname = New_Camera_Array
			'%s_%p'
			s = $debug_camera_array_pakname
			p = $debug_camera_array}
		if GlobalExists name = <New_Camera_Array>
			GetArraySize $<New_Camera_Array>
			index = ($debug_camera_array_count)
			if (<index> < <array_size>)
				Camera_Array = <New_Camera_Array>
				newindex = ($debug_camera_array_count)
				found = 1
				debug_flags = update_when_paused
			endif
		endif
		if (found = 0)
			change \{debug_camera_array = none}
			change \{debug_camera_array_pakname = none}
			change \{debug_camera_array_count = none}
		endif
	endif
	change CameraCuts_LastArray = $<Camera_Array>
	change \{CameraCuts_LastPerformance = $CameraCuts_Performance}
	change CameraCuts_LastIndex = <newindex>
	CameraCut_SaveSelectedParams
	if ($CameraCuts_EnableVideoVenueCams = 1)
		FindVideoVenueCam <...>
	endif
	if ($debug_showcameraname = on)
		CameraCuts_UpdateDebugCameraName
	endif
	if ($output_gpu_log = 1)
		CameraCuts_OutputGPULog
	endif
	if StructureContains Structure = ($<Camera_Array> [<newindex>]) params
		camStruct = (($<Camera_Array> [<newindex>]).params)
		if NOT StructureContains Structure = <camStruct> dof
			camStruct = ($<Camera_Array> [<newindex>])
		endif
	else
		camStruct = ($<Camera_Array> [<newindex>])
	endif
	if StructureContains Structure = <camStruct> dof
		if StructureContains Structure = (<camStruct>.dof) screen_fx
			dofType = (<camStruct>.dof)
			dofParam = (<dofType>.screen_fx [0])
		endif
	else
		dofParam = ($DOF_Off_tod_manager.screen_fx [0])
	endif
	spawnscriptnow ApplyDeferredDOF params = {dofParam = <dofParam>}
	if StructureContains Structure = ($<Camera_Array> [<newindex>]) CrowdOff
		enable_crowd_models_cfunc \{active = false}
	else
		enable_crowd_models_cfunc \{active = true}
	endif
	if StructureContains Structure = ($<Camera_Array> [<newindex>]) ShadowCasters
		change CameraCuts_ShadowCasters = ($<Camera_Array> [<newindex>].ShadowCasters)
	else
		change \{CameraCuts_ShadowCasters = none}
	endif
	change \{structurename = guitarist_info
		waiting_for_cameracut = false}
	change \{structurename = bassist_info
		waiting_for_cameracut = false}
	BandManager_NotifyAllOfCameraCut
	GetSongTimeMs
	change CameraCuts_LastCameraStartTime = <time>
	if ($display_clip_info = true)
		clip_get_time_and_frame
		printf channel = clip qs("\L%a: ------- CAMERA CUT --------") a = <time_string>
	endif
	CamParams = ($<Camera_Array> [<newindex>])
	CameraCut_SwapLookAts
	if StructureContains Structure = <camStruct> name
		camera_name = (<camStruct>.name)
	else
		camera_name = $CameraCuts_NextName
	endif
	prepare_mocap_lock_target camera = <camera_name>
	PlayIGCCam {
		time = <camera_time>
		viewport = bg_viewport
		controlscript = CameraCuts_StaticCamControl
		params = {CamParams = <CamParams>}
		far_clip = 500.0
		<CamParams>
		exitscript = CameraCuts_StartCallback
		Play_hold = 0
		name = CameraCutCam
		<debug_flags>
	}
endscript

script prepare_mocap_lock_target 
	switch <camera>
		case guitarist_mocap01
		lock_target = guitarist_mocap_lock_target_01
		case guitarist_mocap02
		lock_target = guitarist_mocap_lock_target_02
		case bassist_mocap01
		lock_target = bassist_mocap_lock_target_01
		case bassist_mocap02
		lock_target = bassist_mocap_lock_target_02
		case singer_mocap01
		lock_target = vocalist_mocap_lock_target_01
		case singer_mocap02
		lock_target = vocalist_mocap_lock_target_02
		case drummer_mocap01
		lock_target = drummer_mocap_lock_target_01
		case drummer_mocap02
		lock_target = drummer_mocap_lock_target_02
		case moment01
		lock_target = moment_cam_lock_target_01
		case moment02
		lock_target = moment_cam_lock_target_02
		case moment03
		lock_target = moment_cam_lock_target_03
		case moment04
		lock_target = moment_cam_lock_target_04
		default
		return
	endswitch
	if CompositeObjectExists name = <lock_target>
		<lock_target> :anim_update active_camera_override = true
	endif
endscript

script FindVideoVenueCam 
	ExtendCRC <Camera_Array> '_video_venue' out = Camera_Array_Video_Venue
	if GlobalExists name = <Camera_Array_Video_Venue>
		if StructureContains Structure = ($<Camera_Array> [<newindex>]) name
			name = ($<Camera_Array> [<newindex>].name)
			GetArraySize ($<Camera_Array_Video_Venue>)
			index_vv = 0
			begin
			if ($<Camera_Array_Video_Venue> [<index_vv>].name = <name>)
				return Camera_Array = <Camera_Array_Video_Venue> newindex = <index_vv>
			endif
			index_vv = (<index_vv> + 1)
			repeat <array_size>
		endif
	endif
	return
endscript

script ApplyDeferredDOF 
	Wait \{1
		gameframe}
	if ($game_mode = training || $game_mode = tutorial || $game_mode = practice)
		return
	endif
	if NOT ScreenFX_FxInstanceExists \{viewport = bg_viewport
			name = Depth_of_Field__simplified_}
		ScreenFX_AddFXInstance {
			viewport = bg_viewport
			<dofParam>
		}
	else
		ScreenFX_UpdateFXInstanceParams {
			viewport = bg_viewport
			<dofParam>
		}
	endif
endscript

script CameraCuts_UpdateDebugCameraName 
	if NOT ScreenElementExists \{id = debug_camera_name_text}
		CreateScreenElement \{type = TextElement
			parent = root_window
			id = debug_camera_name_text
			font = debug
			pos = (640.0, 32.0)
			just = [
				center
				top
			]
			scale = 1.0
			rgba = [
				210
				210
				210
				250
			]
			text = qs("\LCamera Name")
			z_priority = 100.0
			z_priority = 1.0
			alpha = 1}
	endif
	if NOT ScreenElementExists \{id = debug_camera_name_text2}
		CreateScreenElement \{type = TextElement
			parent = root_window
			id = debug_camera_name_text2
			font = debug
			pos = (640.0, 70.0)
			just = [
				center
				top
			]
			scale = 1.0
			rgba = [
				210
				210
				210
				250
			]
			text = qs("\LCamera Name")
			z_priority = 100.0
			z_priority = 1.0
			alpha = 1}
	endif
	cameraname_crc = none
	Crowd = 1
	if ($CameraCuts_Init = true)
		GetArraySize ($CameraCuts_LastArray)
		if ($CameraCuts_LastIndex < <array_size>)
			if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex]) params
				if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex].params) name
					cameraname_crc = ($CameraCuts_LastArray [$CameraCuts_LastIndex].params.name)
				endif
			endif
			if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex]) name
				cameraname_crc = ($CameraCuts_LastArray [$CameraCuts_LastIndex].name)
			endif
			if StructureContains Structure = ($CameraCuts_LastArray [$CameraCuts_LastIndex]) CrowdOff
				<Crowd> = 0
			endif
			if (<cameraname_crc> = none)
				if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex]) controlscript
					cameraname_crc = ($CameraCuts_LastArray [$CameraCuts_LastIndex].controlscript)
				endif
			endif
		endif
	endif
	jumbotronname = ''
	if NOT ($current_jumbotron = none)
		current_index = ($jumbotron_camera_index)
		if StructureContains Structure = (($jumbotron_camera_params) [<current_index>]) params
			if StructureContains Structure = (($jumbotron_camera_params) [<current_index>].params) name
				jumbotronname = (($jumbotron_camera_params) [<current_index>].params.name)
			endif
		endif
		if StructureContains Structure = (($jumbotron_camera_params) [<current_index>]) name
			jumbotronname = (($jumbotron_camera_params) [<current_index>].name)
		endif
	endif
	FormatText TextName = cameraname qs("\L%s type=%t crowd=%c") s = <cameraname_crc> t = $CameraCuts_LastType c = <Crowd> DontAssertForChecksums DoNotResolve
	debug_camera_name_text :SE_SetProps text = <cameraname>
	printf qs("\LCAMERA CUT - %s") s = <cameraname>
	cameraname = qs("")
	if NOT (<jumbotronname> = '')
		FormatText TextName = cameraname qs("\LJumbotron=%j") DontAssertForChecksums DoNotResolve j = <jumbotronname>
	endif
	debug_camera_name_text2 :SE_SetProps text = <cameraname>
endscript

script CameraCuts_OutputGPULog 
	GetArraySize ($CameraCuts_LastArray)
	cameraname = none
	if ($CameraCuts_LastIndex < <array_size>)
		if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex]) params
			if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex].params) name
				cameraname = ($CameraCuts_LastArray [$CameraCuts_LastIndex].params.name)
			endif
		endif
		if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex]) name
			cameraname = ($CameraCuts_LastArray [$CameraCuts_LastIndex].name)
		endif
	endif
	<Crowd> = 1
	if StructureContains Structure = ($CameraCuts_LastArray [$CameraCuts_LastIndex]) CrowdOff
		<Crowd> = 0
	endif
	FormatText TextName = text qs("\LCam: %s, type: %t, crowd: %c ; ; ; 16.667") s = <cameraname> t = $CameraCuts_LastType c = <Crowd> DontAssertForChecksums
	TextOutput text = <text>
endscript

script destroy_cameracuts 
	change \{CameraCuts_Init = false}
	change \{CameraCuts_Enabled = false}
	KillSpawnedScript \{name = CameraCuts_StartCallback}
	KillSpawnedScript \{name = ApplyDeferredDOF}
	KillCamAnim \{name = CameraCutCam}
	kill_dummy_bg_camera
	ClearNoteMappings \{section = cameras}
	KillSpawnedScript \{name = cameracuts_iterator}
endscript
profiling_cameracuts = false

script profile_camera_cuts \{filename = qs("\LProfileCameras")}
	if ($profiling_cameracuts = true)
		return
	endif
	change \{profiling_cameracuts = true}
	hide_analog_options
	setslomo \{0.001}
	setslomo_song \{slomo = 0.001}
	dumpprofilestart
	GetPakManCurrentName \{map = zones}
	camera_count = 0
	begin
	switch <camera_count>
		case 0
		suffix = qs("\Lcameras_good")
		case 1
		suffix = qs("\Lcameras_normal")
		case 2
		suffix = qs("\Lcameras_poor")
		case 3
		suffix = qs("\Lcameras_good_2p")
		case 4
		suffix = qs("\Lcameras_normal_2p")
		case 5
		suffix = qs("\Lcameras_poor_2p")
	endswitch
	FormatText checksumname = Camera_Array '%s_%p' s = <pakname> p = <suffix>
	if GlobalExists name = <Camera_Array>
		GetArraySize $<Camera_Array>
		array_count = 0
		begin
		profile_cameracut Camera_Array_pakname = <pakname> Camera_Array = <suffix> array_count = <array_count>
		<array_count> = (<array_count> + 1)
		repeat <array_size>
	endif
	camera_count = (<camera_count> + 1)
	repeat 6
	change \{debug_camera_array = none}
	destroy_cameracuts
	Wait \{3
		gameframes}
	create_cameracuts
	dumpprofileend output_text output_file filename = <filename>
	setslomo \{$current_speedfactor}
	setslomo_song \{slomo = $current_speedfactor}
	change \{profiling_cameracuts = false}
endscript

script profile_cameracut 
	change debug_camera_array = <Camera_Array>
	change debug_camera_array_pakname = <Camera_Array_pakname>
	change debug_camera_array_count = <array_count>
	cpu = $current_cpu
	ToggleMetrics \{mode = 2}
	change \{current_cpu = 6}
	destroy_cameracuts
	Wait \{2
		gameframes}
	create_cameracuts
	Wait \{3
		gameframes}
	profile_camera_gpu
	ToggleMetrics \{mode = 0}
	change current_cpu = <cpu>
endscript

script profile_camera_gpu 
	FormatText \{checksumname = New_Camera_Array
		'%s_%p'
		s = $debug_camera_array_pakname
		p = $debug_camera_array}
	Camera_Array = $<New_Camera_Array>
	if StructureContains Structure = ($<Camera_Array> [$debug_camera_array_count]) name
		FormatText TextName = title qs("\LCamera %n Profile Dump") n = (($<Camera_Array> [$debug_camera_array_count]).name) DontAssertForChecksums
	else
		FormatText TextName = title qs("\LCamera %n Profile Dump") n = (($<Camera_Array> [$debug_camera_array_count]).params.name) DontAssertForChecksums
	endif
	dumpprofile cpu = 6 title = <title> current_time_only
endscript

script CameraCuts_EnableChangeCam 
	if NOT ($debug_camera_array = none)
		return
	endif
	change CameraCuts_ChangeCamEnable = <enable>
	change \{CameraCuts_ChangeNow = true}
endscript

script CameraCuts_CalcTime 
	if GotParam \{force_time}
		camera_time = <force_time>
		GetSongTimeMs
		camera_songtime = (<time> + <camera_time> * 1000)
		return camera_time = <camera_time> camera_songtime = <camera_songtime>
	endif
	if ($CameraCuts_ChangeNow = true)
		camera_time = 0
		GetSongTimeMs
		camera_songtime = (<time> + <camera_time> * 1000)
		return camera_time = <camera_time> camera_songtime = <camera_songtime>
	endif
	if ($CameraCuts_ForceTime = 0)
		if ($CameraCuts_NextTime = 0)
			if NOT ($debug_camera_array = none)
				camera_time = 5.0
			else
				camera_time = RandomFloat (2.0, 4.0)
				GetSongTimeMs
				endtime = (<time> + <camera_time> * 1000)
				if CameraCuts_GetNextDownbeat endtime = <endtime>
					<delta> = ((<endtime> - <time>) / 1000.0)
					if ((<delta> < 6.0) && (<delta> > 2.0))
						<camera_time> = <delta>
					endif
				endif
			endif
		else
			camera_time = ($CameraCuts_NextTime / 1000.0)
			change \{CameraCuts_NextTime = 0}
		endif
	else
		camera_time = ($CameraCuts_ForceTime)
	endif
	GetSongTimeMs
	camera_songtime = (<time> + <camera_time> * 1000)
	return camera_time = <camera_time> camera_songtime = <camera_songtime>
endscript

script CameraCuts_WaitScript \{camera_time = 0
		camera_songtime = 0}
	if GotParam \{force_time}
		Wait <force_time> seconds
		return \{true}
	endif
	GetSongTimeMs
	change CameraCuts_ChangeTime = <camera_songtime>
	begin
	GetSongTimeMs
	if (<time> >= $CameraCuts_ChangeTime ||
			$CameraCuts_ChangeNow = true)
		if ($CameraCuts_ChangeCamEnable = true)
			break
		endif
	endif
	if NOT ($CameraCuts_ForceChangeTime = 0.0)
		if ($CameraCuts_ForceChangeTime < (<time> - $CameraCuts_LastCameraStartTime))
			change \{CameraCuts_ForceChangeTime = 0.0}
			break
		endif
	endif
	if GotParam \{nowait}
		return \{false}
	endif
	Wait \{1
		gameframe}
	repeat
	return \{true}
endscript

script CameraCuts_StaticCamControl 
	CameraCuts_CalcTime force_time = <force_time>
	CCam_DoMorph {
		<CamParams>
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript

script CameraCuts_BlockControl 
	CameraCuts_CalcTime force_time = <force_time>
	CCam_DoMorph {
		<...>
	}
	Block
endscript

script CameraCuts_HandCam \{name = none}
	CameraCuts_CalcTime force_time = <force_time>
	CCam_DoMorph
	zooming = false
	if GotParam \{type}
		if (<type> = longshot)
			GetRandomValue \{name = random_value
				Integer
				a = 0
				b = 100}
			if (<random_value> < 25)
				CCam_DoMorph <...> FOV = 62 time = <camera_time>
				zooming = true
			endif
			if (<random_value> > 95)
				CCam_DoMorph <...> FOV = 78 time = <camera_time>
				zooming = true
			endif
		endif
		if (<type> = mid)
			GetRandomValue \{name = random_value
				Integer
				a = 0
				b = 100}
			if (<random_value> < 5)
				CCam_DoMorph <...> FOV = 64 time = <camera_time>
				zooming = true
			endif
			if (<random_value> > 85)
				CCam_DoMorph <...> FOV = 82 time = <camera_time>
				zooming = true
			endif
		endif
	endif
	if (<zooming> = true)
		amplitudePosition = 0.01
		amplitudeRotation = -0.01
	else
		amplitudePosition = ($handcam_amplitudePosition)
		amplitudeRotation = ($handcam_amplitudeRotation)
	endif
	CameraCuts_SetHandCamParams <...>
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript

script CameraCuts_TwoCam 
	if GotParam \{UseHandCam}
		CameraCuts_SetHandCamParams {
			amplitudePosition = ($handcam_amplitudePosition)
			amplitudeRotation = ($handcam_amplitudeRotation)
		}
	endif
	if GotParam \{UseHandCamSmooth}
		CameraCuts_SetHandCamParams \{amplitudePosition = 0.05
			amplitudeRotation = -0.08}
	endif
	CameraCuts_CalcTime force_time = <force_time>
	CCam_DoMorph {
		<Cam1>
	}
	CCam_WaitMorph
	CCam_DoMorph {
		<Cam2>
		time = <camera_time>
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript

script CameraCuts_Encore 
	CameraCuts_CalcTime force_time = <force_time>
	CCam_DoMorph {
		<Cam1>
	}
	Wait \{3
		seconds}
	CCam_DoMorph {
		<Cam2>
	}
	Wait \{2.5
		seconds}
	CCam_DoMorph {
		<Cam3>
	}
	Wait \{3
		seconds}
	CCam_DoMorph {
		<Cam4>
	}
	Wait \{2
		seconds}
	CCam_DoMorph {
		<Cam5>
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript

script CameraCuts_Orbit 
	CameraCuts_CalcTime force_time = <force_time>
	CCam_DoMorph {
		<...>
	}
	orbitangle = (3.1409998 * <orbitangle> / 180.0)
	if (<camera_time> > 0)
		CCam_Orbit axis = (0.0, 1.0, 0.0) Speed = (<orbitangle> / <camera_time>)
	endif
	CameraCuts_SetHandCamDriftOnly
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript

script CameraCuts_OrbitAndMorphTwoCam 
	CameraCuts_CalcTime force_time = <force_time>
	if (<camera_time> > 0)
		<orbitangle> = (3.1409998 * <orbitangle> / 180.0)
		<orbitparams> = {axis = (0.0, 1.0, 0.0) Speed = (<orbitangle> / <camera_time>)}
	endif
	CCam_DoMorph {
		<Cam1>
	}
	if (<camera_time> > 0)
		if GotParam \{DisableOrbit1}
			CCam_Orbit \{off}
		else
			CCam_Orbit <orbitparams>
		endif
	endif
	CameraCuts_SetHandCamDriftOnly
	CCam_DoMorph {
		<Cam2>
		time = <camera_time>
	}
	if (<camera_time> > 0)
		if GotParam \{DisableOrbit2}
			CCam_Orbit \{off}
		else
			CCam_Orbit <orbitparams>
		endif
	endif
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript

script CameraCuts_SplineMorph 
	CameraCuts_CalcTime force_time = <force_time>
	CCam_SplineMorph {
		<...>
		total_time = <camera_time>
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript

script CameraCuts_SpecialStepMove 
	CCam_SetSmoothing \{type = all
		on = 1
		slow_lerp_factor = 0.7
		fast_lerp_factor = 0.7
		lerp_dropoff = 2.0}
	CameraCuts_CalcTime force_time = <force_time>
	CCam_DoMorph {
		<Cam1>
	}
	CameraCuts_SetHandCamParams \{amplitudePosition = 0.0
		amplitudeRotation = -0.8}
	origpos = (<Cam1>.pos)
	diry = <StepDir>
	count = 0.0
	timestep = 0.05
	step = (<timestep> / <stepTime>)
	num_jumps = <StepNum>
	dirx = ((<Cam2>.pos) - (<Cam1>.pos))
	printf qs("\Ltimestep %i") i = <timestep>
	jump_multiplier = (<num_jumps> * 360.0)
	count = (<count> + <step>)
	begin
	if (<count> >= 1.0)
		break
	endif
	sin (<count> * <jump_multiplier>)
	pos = (<origpos> + <dirx> * <count> + <diry> * <sin>)
	CCam_DoMorph {
		<...>
		time = <timestep>
		motion = linear
	}
	CCam_WaitMorph
	if CameraCuts_WaitScript camera_songtime = <camera_songtime> nowait
		return
	endif
	count = (<count> + <step>)
	repeat
	CCam_DoMorph {
		<Cam2>
		time = <FinalRotTime>
		motion = smooth
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript

script CameraCuts_ApplyDOF \{dof = $DOF_Medium02_tod_manager
		time = 0.0}
	dofType = <dof>
	dofParam = (<dofType>.screen_fx [0])
	if NOT ScreenFX_FxInstanceExists \{viewport = bg_viewport
			name = Depth_of_Field__simplified_}
		ScreenFX_AddFXInstance {
			viewport = bg_viewport
			name = Depth_of_Field__simplified_
			<dofParam>
			time = <time>
		}
	else
		ScreenFX_UpdateFXInstanceParams {
			viewport = bg_viewport
			name = Depth_of_Field__simplified_
			<dofParam>
			time = <time>
		}
	endif
endscript

script CameraCuts_SetHandCamDriftOnly 
	CCam_EnableHandcam \{ShakeEnabled = false
		DriftEnabled = true}
	driftSlerpMap = [
		(0.1, 0.3)
		(0.2, 0.3)
	]
	if GotParam \{DriftZoneAngles}
		SetArrayElement ArrayName = driftSlerpMap index = 1 newvalue = <DriftZoneAngles>
	endif
	CCam_SetHandcamParams {
		$cinematic_camera_default_handcam_params
		driftSlerpMap = <driftSlerpMap>
	}
endscript

script CameraCuts_SetHandCamParams \{amplitudePosition = 0.01
		amplitudeRotation = -0.01}
	CCam_EnableHandcam \{ShakeEnabled = true
		DriftEnabled = true}
	if GotParam \{handcamcloseup}
		driftSlerpMap = [
			(0.0, 1.0)
			(0.03, 0.2)
		]
	else
		driftSlerpMap = [
			(0.0, 0.8)
			(0.05, 1.0)
		]
	endif
	CCam_SetHandcamParams {
		motionX = {
			amplitude = 0.033999998
			center = 0.0
			periodBase = 0.012999999
			periodMultiples = [
				1 , 3 , 4
			]
		}
		motionY = {
			amplitude = 0.04
			center = 0.0
			periodBase = 0.016999999
			periodMultiples = [
				1 , 3 , 4
			]
		}
		amplitudePosition = {
			amplitude = <amplitudePosition>
			center = 0.0
			periodBase = 0.0023
			periodMultiples = [
				1 , 16
			]
		}
		amplitudeRotation = {
			amplitude = <amplitudeRotation>
			center = 0.0
			periodBase = 0.0023
			periodMultiples = [
				1
			]
		}
		zoomStabilityMap = [
			(1.3, 0.7)
			(30.0, 100.0)
		]
		driftSlerpMap = <driftSlerpMap>
		zoomDriftMap = [
			(1.2, 0.6)
			(30.0, 100.0)
		]
		driftAllowedAmplitude = {
			amplitude = 0.4
			center = 1.0
			periodBase = 0.02
			periodMultiples = [
				1
			]
		}
	}
endscript

script CameraCuts_HandCamZoom2 
	CCam_DoMorph
	zooming = false
	if (<zooming> = true)
		amplitudePosition = 0.01
		amplitudeRotation = -0.01
	else
		amplitudePosition = ($handcam_amplitudePosition)
		amplitudeRotation = ($handcam_amplitudeRotation)
	endif
	CameraCuts_SetHandCamParams <...>
	Wait \{2
		seconds}
	CCam_DoMorph <...> FOV = 50 time = 0.6 motion = smooth
	CCam_WaitMorph
	Wait \{0.1
		seconds}
	CCam_DoMorph <...> FOV = 53 time = 0.25 motion = smooth
	CCam_WaitMorph
	Wait \{0.03
		seconds}
	CCam_DoMorph <...> FOV = 51 time = 0.3 motion = smooth
	CCam_WaitMorph
	CCam_DoMorph <...> FOV = 51
	CameraCuts_CalcTime force_time = <force_time>
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript

script CameraCuts_QuickZoom 
	CCam_DoMorph
	zooming = false
	if (<zooming> = true)
		amplitudePosition = 0.01
		amplitudeRotation = -0.01
	else
		amplitudePosition = ($handcam_amplitudePosition)
		amplitudeRotation = ($handcam_amplitudeRotation)
	endif
	CameraCuts_SetHandCamParams <...>
	CCam_DoMorph {
		<Cam1>
	}
	CCam_WaitMorph
	Wait \{2
		seconds}
	CCam_DoMorph {
		<Cam1>
	}
	CCam_WaitMorph
	CCam_DoMorph {
		<Cam2>
		time = 0.75
		motion = smooth
	}
	CCam_WaitMorph
	CCam_DoMorph {
		<Cam2>
	}
	CCam_WaitMorph
	CameraCuts_CalcTime force_time = <force_time>
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript

script CameraCuts_Pan 
	CameraCuts_SetHandCamParams {
		amplitudePosition = ($handcam_amplitudePosition)
		amplitudeRotation = ($handcam_amplitudeRotation)
	}
	CCam_DoMorph {
		<Cam1>
		time = 0
	}
	Wait \{2
		seconds}
	CCam_DoMorph {
		<Cam2>
		time = 1
		motion = smooth
	}
	CCam_WaitMorph
	CameraCuts_CalcTime force_time = <force_time>
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript

script CameraCuts_ThreePos 
	CameraCuts_CalcTime force_time = <force_time>
	CCam_SplineMorph {
		keyframes =
		[
			{
				<Cam1>
			}
			{
				<Cam2>
			}
			{
				<Cam3>
			}
		]
		total_time = <camera_time>
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript

script CameraCuts_FourPos 
	CameraCuts_CalcTime force_time = <force_time>
	CCam_SplineMorph {
		keyframes =
		[
			{
				<Cam1>
			}
			{
				<Cam2>
			}
			{
				<Cam3>
			}
			{
				<Cam4>
			}
		]
		total_time = <camera_time>
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime> force_time = <force_time>
endscript
Default_Cameras_Good = [
	{
		name = good_from_stage
		Play_hold = 1
		LockTo = Guitarist
		pos = (1.5175159, 4.1361775, -4.089658)
		Quat = (0.130047, -0.018706, 0.0024160002)
		FOV = 72.0
	}
]
Default_Cameras_Normal = [
	{
		name = normal_crowd_center
		Play_hold = 1
		LockTo = Guitarist
		pos = (5.108431, 1.485993, 13.082112)
		Quat = (0.0025400002, -0.9918739, 0.019756)
		FOV = 72.0
	}
]
Default_Cameras_Poor = [
	{
		name = poor_crowd_center
		Play_hold = 1
		LockTo = Guitarist
		pos = (-1.573781, 1.4759071, 20.610792)
		Quat = (-0.00064900005, 0.998182, 0.010279999)
		FOV = 72.0
	}
]
default_cameras_moments = [
	{
		name = moment01
		LockTo = moment_cam_lock_target_01
		LockToBone = bone_camera
		pos = (0.0, 0.0, 0.0)
		Quat = (0.0, 0.0, 0.0)
		FOV = 72.0
	}
	{
		name = moment02
		LockTo = moment_cam_lock_target_02
		LockToBone = bone_camera
		pos = (0.0, 0.0, 0.0)
		Quat = (0.0, 0.0, 0.0)
		FOV = 72.0
	}
	{
		name = moment03
		LockTo = moment_cam_lock_target_03
		LockToBone = bone_camera
		pos = (0.0, 0.0, 0.0)
		Quat = (0.0, 0.0, 0.0)
		FOV = 72.0
	}
	{
		name = moment04
		LockTo = moment_cam_lock_target_04
		LockToBone = bone_camera
		pos = (0.0, 0.0, 0.0)
		Quat = (0.0, 0.0, 0.0)
		FOV = 72.0
	}
]
Default_cameras_guitarist = [
	{
		name = guitarist_closeup
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = guitarist_stage
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = guitarist_mocap01
		LockTo = guitarist_mocap_lock_target_01
		LockToBone = bone_camera
		pos = (0.0, 0.0, 0.0)
		Quat = (0.0, 0.0, 0.0)
		FOV = 72.0
	}
	{
		name = guitarist_mocap02
		LockTo = guitarist_mocap_lock_target_02
		LockToBone = bone_camera
		pos = (0.0, 0.0, 0.0)
		Quat = (0.0, 0.0, 0.0)
		FOV = 72.0
	}
]
default_cameras_singer = [
	{
		name = singer_closeup
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = singer_stage
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = singer_mocap01
		LockTo = vocalist_mocap_lock_target_01
		LockToBone = bone_camera
		pos = (0.0, 0.0, 0.0)
		Quat = (0.0, 0.0, 0.0)
		FOV = 72.0
	}
	{
		name = singer_mocap02
		LockTo = vocalist_mocap_lock_target_02
		LockToBone = bone_camera
		pos = (0.0, 0.0, 0.0)
		Quat = (0.0, 0.0, 0.0)
		FOV = 72.0
	}
]
default_cameras_bassist = [
	{
		name = bassist_closeup
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = bassist_stage
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = bassist_mocap01
		LockTo = bassist_mocap_lock_target_01
		LockToBone = bone_camera
		pos = (0.0, 0.0, 0.0)
		Quat = (0.0, 0.0, 0.0)
		FOV = 72.0
	}
	{
		name = bassist_mocap02
		LockTo = bassist_mocap_lock_target_02
		LockToBone = bone_camera
		pos = (0.0, 0.0, 0.0)
		Quat = (0.0, 0.0, 0.0)
		FOV = 72.0
	}
]
default_cameras_drummer = [
	{
		name = drummer_closeup
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = drummer_stage
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = drummer_mocap01
		LockTo = drummer_mocap_lock_target_01
		LockToBone = bone_camera
		pos = (0.0, 0.0, 0.0)
		Quat = (0.0, 0.0, 0.0)
		FOV = 72.0
	}
	{
		name = drummer_mocap02
		LockTo = drummer_mocap_lock_target_02
		LockToBone = bone_camera
		pos = (0.0, 0.0, 0.0)
		Quat = (0.0, 0.0, 0.0)
		FOV = 72.0
	}
]
Default_cameras = [
	{
		name = longshot
		type = longshot
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = midshot
		type = midshot
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = venue_midshot
		type = venue_midshot
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = generic_stage_shot
		type = generic_stage_shot
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
]
default_cameras_headtohead = [
	{
		name = HeadToHead_Longshot
		controlscript = CameraCuts_HandCam
		params = {
			LockTo = world
			pos = (2.984848, 2.319129, 8.964585)
			Quat = (0.013296999, -0.9863979, 0.09915701)
			FOV = 72.0
		}
	}
	{
		name = HeadToHead_Midshot
		controlscript = CameraCuts_HandCam
		params = {
			LockTo = world
			pos = (2.286206, 1.399632, -0.8574021)
			Quat = (0.013289999, -0.97393197, 0.058316004)
			FOV = 72.0
		}
	}
	{
		name = HeadToHead_Venue_Midshot
		controlscript = CameraCuts_HandCam
		params = {
			LockTo = world
			pos = (0.48657104, 1.8374078, 4.633928)
			Quat = (0.00057300006, -0.99960995, 0.019561999)
			FOV = 72.0
		}
	}
	{
		name = HeadToHead_Stage_Shot
		controlscript = CameraCuts_HandCam
		params = {
			LockTo = world
			pos = (3.347051, 2.0671618, -7.5946074)
			Quat = (0.12163001, -0.398576, 0.053206)
			FOV = 72.0
		}
	}
]
default_cameras_jam_mode = [
	{
		name = JamMode_Longshot
		controlscript = CameraCuts_HandCam
		params = {
			LockTo = world
			pos = (2.984848, 2.319129, 8.964585)
			Quat = (0.013296999, -0.9863979, 0.09915701)
			FOV = 72.0
		}
	}
	{
		name = JamMode_Midshot
		controlscript = CameraCuts_HandCam
		params = {
			LockTo = world
			pos = (2.286206, 1.399632, -0.8574021)
			Quat = (0.013289999, -0.97393197, 0.058316004)
			FOV = 72.0
		}
	}
	{
		name = JamMode_Venue_Midshot
		controlscript = CameraCuts_HandCam
		params = {
			LockTo = world
			pos = (0.48657104, 1.8374078, 4.633928)
			Quat = (0.00057300006, -0.99960995, 0.019561999)
			FOV = 72.0
		}
	}
	{
		name = JamMode_Stage_Shot
		controlscript = CameraCuts_HandCam
		params = {
			LockTo = world
			pos = (3.347051, 2.0671618, -7.5946074)
			Quat = (0.12163001, -0.398576, 0.053206)
			FOV = 72.0
		}
	}
]
default_cameras_solo = [
	{
		name = solo_guitar
		type = solo_guitar
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = solo_vocal
		type = solo_vocal
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = solo_drum
		type = solo_drum
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = solo_bass
		type = solo_bass
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
]
default_cameras_single = [
	{
		name = single_guitar
		type = single
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = single_vocal
		type = single
		LockTo = world
		pos = (-4.3443885, 0.950269, -0.84059906)
		Quat = (1.9E-05, 0.99112797, -0.001512)
		FOV = 72.0
	}
	{
		name = single_drum
		type = single
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = single_bass
		type = single
		LockTo = world
		pos = (-4.3443885, 0.950269, -0.84059906)
		Quat = (1.9E-05, 0.99112797, -0.001512)
		FOV = 72.0
	}
]
default_cameras_special = [
	{
		name = special01
		LockTo = world
		pos = (-6.321385, 0.924312, -2.6622968)
		Quat = (-0.026229998, 0.784364, 0.032947995)
		FOV = 72.0
	}
	{
		name = special02
		LockTo = world
		pos = (-4.3443885, 0.950269, -0.84059906)
		Quat = (1.9E-05, 0.99112797, -0.001512)
		FOV = 72.0
	}
]
Default_cameras_audience = [
	{
		controlscript = CameraCuts_SpecialStepMove
		params = {
			name = AUDIENCE_R
			type = audience
			Cam1 = {
				LockTo = world
				pos = (5.888749, -0.09943501, 5.550212)
				Quat = (-0.008041001, -0.97881204, -0.039359003)
				FOV = 49.0
				LookAt = vocalist
				ScreenOffset = (-0.32207203, 0.172022)
			}
			Cam2 = {
				LockTo = world
				pos = (6.091454, -0.099421, 5.463399)
				Quat = (-0.0085080005, -0.97635895, -0.039261)
				FOV = 49.0
				LookAt = vocalist
				ScreenOffset = (-0.30865702, 0.172709)
			}
			stepTime = 6.0
			FinalRotTime = 1.0
			StepNum = 6.0
			StepDir = (0.0, 0.07, 0.05)
			dof = $DOF_Medium01_tod_manager
		}
	}
]
default_cameras_zoom = [
	{
		name = zoom_in
		controlscript = CameraCuts_TwoCam
		params = {
			UseHandCam
			Cam1 = {
				LockTo = world
				pos = (7.586032, 0.200963, 15.85076)
				Quat = (0.009055, -0.97853, 0.039293)
				FOV = 83.0
			}
			Cam2 = {
				LockTo = world
				pos = (7.586032, 0.200963, 15.85076)
				Quat = (0.000763, -0.98286796, -0.000915)
				FOV = 29.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = zoom_out
		controlscript = CameraCuts_TwoCam
		params = {
			UseHandCam
			Cam1 = {
				LockTo = world
				pos = (7.586032, 0.200963, 15.85076)
				Quat = (0.000763, -0.98286796, -0.000915)
				FOV = 29.0
			}
			Cam2 = {
				LockTo = world
				pos = (7.586032, 0.200963, 15.85076)
				Quat = (0.009055, -0.97853, 0.039293)
				FOV = 83.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
default_cameras_spotlight = [
	{
		name = spotlight
		LockTo = Drummer
		pos = (-0.59138894, 3.714998, 12.7414465)
		Quat = (0.0042340006, 0.97817, -0.204423)
		FOV = 72.0
	}
]
default_cameras_intro = [
	{
		name = crowd_center_zoom
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = world
				pos = (0.35540104, 1.766598, 9.495748)
				Quat = (0.00019699999, -0.999465, 0.032123)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (0.30482104, 3.097976, 5.3770776)
				Quat = (0.0012020001, -0.98061997, 0.195825)
				FOV = 72.0
			}
		}
	}
]
default_cameras_fastintro = [
	{
		name = crowd_center_zoom
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = world
				pos = (0.30482104, 3.097976, 5.3770776)
				Quat = (0.0012020001, -0.98061997, 0.195825)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (0.35540104, 1.766598, 9.495748)
				Quat = (0.00019699999, -0.999465, 0.032123)
				FOV = 72.0
			}
		}
	}
]
default_cameras_preencore = [
	{
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (-2.4889898, 2.2800958, 9.589442)
				Quat = (0.033784002, 0.965961, -0.164262)
				FOV = 72.0
				LookAt = Drummer
				LookAtBone = Bone_Chest
				ScreenOffset = (-0.225398, -0.579956)
			}
			Cam2 = {
				LockTo = Drummer
				pos = (4.951395, 2.2763019, 9.435161)
				Quat = (0.050596002, -0.9369719, 0.15382701)
				FOV = 72.0
				LookAt = Drummer
				LookAtBone = Bone_Chest
				ScreenOffset = (0.26263002, -0.568209)
			}
		}
	}
]
default_cameras_encore = [
	{
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = world
				pos = (-2.8748507, 2.11633, 3.001765)
				Quat = (0.055925, 0.88826996, -0.112448)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (6.485794, 2.790986, 6.2345123)
				Quat = (0.081708, -0.7229049, 0.08677899)
				FOV = 72.0
			}
		}
	}
]
default_cameras_preboss = [
	{
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (-2.4889898, 2.2800958, 9.589442)
				Quat = (0.033784002, 0.965961, -0.164262)
				FOV = 72.0
				LookAt = Drummer
				LookAtBone = Bone_Chest
				ScreenOffset = (-0.225398, -0.579956)
			}
			Cam2 = {
				LockTo = Drummer
				pos = (4.951395, 2.2763019, 9.435161)
				Quat = (0.050596002, -0.9369719, 0.15382701)
				FOV = 72.0
				LookAt = Drummer
				LookAtBone = Bone_Chest
				ScreenOffset = (0.26263002, -0.568209)
			}
		}
	}
]
default_cameras_boss = [
	{
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = world
				pos = (-2.8748507, 2.11633, 3.001765)
				Quat = (0.055925, 0.88826996, -0.112448)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (6.485794, 2.790986, 6.2345123)
				Quat = (0.081708, -0.7229049, 0.08677899)
				FOV = 72.0
			}
		}
	}
]
default_cameras_win = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = win
			LockTo = world
			pos = (0.622013, 0.681226, 1.318936)
			Quat = (-0.016913, -0.92676395, -0.041992996)
			FOV = 72.0
		}
		dof = $DOF_CloseUp02_tod_manager
	}
]
default_cameras_lose = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = lose
			LockTo = world
			pos = (-0.97144395, 0.90905, 0.850675)
			Quat = (-0.00064100005, -0.99934596, -0.02286)
			FOV = 72.0
		}
		dof = $DOF_CloseUp02_tod_manager
	}
]
default_cameras_loading = [
	{
		name = loading
		controlscript = CameraCuts_TwoCam
		params = {
			UseHandCam
			Cam1 = {
				LockTo = world
				pos = (-6.204663, 2.698264, 10.309547)
				Quat = (0.016273, 0.97326, -0.074999005)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (4.084505, 2.316533, 7.104564)
				Quat = (0.020193998, -0.96327096, 0.074039005)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
default_cameras_finalbandintro = [
	{
		name = FinalBandIntro
		controlscript = CameraCuts_TwoCam
		params = {
			UseHandCam
			Cam1 = {
				LockTo = world
				pos = (4.084505, 2.316533, 7.104564)
				Quat = (0.020193998, -0.96327096, 0.074039005)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (-6.204663, 2.698264, 10.309547)
				Quat = (0.016273, 0.97326, -0.074999005)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
default_cameras_finalbandoutro = [
	{
		name = FinalBandOutro
		controlscript = CameraCuts_TwoCam
		params = {
			UseHandCam
			Cam1 = {
				LockTo = world
				pos = (4.084505, 2.316533, 7.104564)
				Quat = (0.020193998, -0.96327096, 0.074039005)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (-6.204663, 2.698264, 10.309547)
				Quat = (0.016273, 0.97326, -0.074999005)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
default_cameras_boss_closeup_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = Boss_CloseUp
			LockTo = world
			pos = (-6.321385, 0.924312, -2.6622968)
			Quat = (-0.026229998, 0.784364, 0.032947995)
			FOV = 72.0
		}
		dof = $DOF_CloseUp01_tod_manager
	}
]
default_cameras_player_closeup_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = Player_CloseUp
			LockTo = world
			pos = (-6.321385, 0.924312, -2.6622968)
			Quat = (-0.026229998, 0.784364, 0.032947995)
			FOV = 72.0
		}
		dof = $DOF_CloseUp01_tod_manager
	}
]
default_cameras_no_band = [
	{
		name = NoBand
		controlscript = CameraCuts_HandCam
		params = {
			LockTo = world
			pos = (8.588713, 5.921629, 8.272691)
			Quat = (-0.011485, -0.9662969, -0.048534002)
			FOV = 72.0
		}
		dof = $DOF_CloseUp02_tod_manager
	}
]
