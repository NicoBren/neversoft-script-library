jowBlue = 717488127
jowGreen = 771697407
jowOrange = -6149377
jowRed = -15061505
jowYellow = -3267073

script JOW_Stars 
	printf \{qs("\L*******************************************************************")}
	printf <...>
	printf \{qs("\L*******************************************************************")}
endscript

script SafeGetUniqueCompositeObjectID \{preferredID = safeFXID01}
	if NOT GotParam \{ObjID}
		GetUniqueCompositeObjectID preferredID = <preferredID>
		return uniqueID = <uniqueID>
	endif
	i = 0
	FormatText TextName = index '%i' i = <i>
	ExtendCRC <preferredID> <index> out = preferredID
	begin
	MangleChecksums a = <preferredID> b = <ObjID>
	if NOT ObjectExists id = <mangled_ID>
		return uniqueID = <preferredID>
	else
		i = (<i> + 1)
		FormatText TextName = index '%i' i = <i>
		ExtendCRC <preferredID> <index> out = preferredID
	endif
	repeat
endscript

script SetLightIntensityOverTime \{i = 1.0
		time = 2.0
		stepTime = 0.05}
	targetI = <i>
	GetLightIntensity name = <name>
	numSteps = (<time> / <stepTime>)
	CastToInteger \{numSteps}
	stepSize = ((<targetI> - <i>) / <numSteps>)
	begin
	i = (<i> + <stepSize>)
	SetLightIntensity name = <name> intensity = <i>
	Wait <stepTime> seconds
	repeat (<numSteps> -1)
	SetLightIntensity name = <name> intensity = <targetI>
endscript

script anim_key 
	Obj_MoveToPos (<mov>) time = <time>
	Obj_Rotate absolute = <rot> time = <time>
	Obj_WaitMove
endscript

script ChangePassColor \{parameter = m_psPass0MaterialColor
		time = 1.0
		stepTime = 0.05}
	numSteps = (<time> / <stepTime>)
	CastToInteger \{numSteps}
	stepR = ((<endcolor> [0] - <startcolor> [0]) / <numSteps>)
	stepG = ((<endcolor> [1] - <startcolor> [1]) / <numSteps>)
	stepB = ((<endcolor> [2] - <startcolor> [2]) / <numSteps>)
	stepA = ((<endcolor> [3] - <startcolor> [3]) / <numSteps>)
	begin
	SetArrayElement ArrayName = startcolor index = 0 newvalue = (<startcolor> [0] + <stepR>)
	SetArrayElement ArrayName = startcolor index = 1 newvalue = (<startcolor> [1] + <stepG>)
	SetArrayElement ArrayName = startcolor index = 2 newvalue = (<startcolor> [2] + <stepB>)
	SetArrayElement ArrayName = startcolor index = 3 newvalue = (<startcolor> [3] + <stepA>)
	UpdateMaterialProperty {
		object = <ObjID>
		material = <material>
		parameter = <parameter>
		value = <startcolor>
	}
	Wait <stepTime> seconds
	repeat (<numSteps> -1)
	UpdateMaterialProperty {
		object = <ObjID>
		material = <material>
		parameter = <parameter>
		value = <endcolor>
	}
endscript

script Light_UpdatePosition \{offset = (0.0, 0.0, 0.0)}
	Obj_GetID
	begin
	if NOT IsCreated <attachObjID>
		Die
	endif
	<attachObjID> :Obj_GetPosition
	MoveLight name = <ObjID> pos = (<pos> + <offset>)
	Wait \{1
		frame}
	repeat
endscript

script HandofGod_ElectricCenter_Glow 
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter_Glow
		texture = PH_RadialGlow_01
		alpha = 1
		scale = (2.0, 2.0)
		dims = (800.0, 800.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		blend = Add
		z_priority = 4
		rgba = [
			140
			200
			255
			255
		]}
endscript

script HandofGod_ElectricCenter_Glow_02 
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow_02}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter_Glow_02
		texture = PH_RadialGlow_01
		alpha = 1
		scale = (2.0, 2.0)
		dims = (800.0, 800.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		blend = Add
		z_priority = 4
		rgba = [
			140
			200
			255
			255
		]}
	HandofGod_ElectricCenter_Glow_Anim_02
endscript

script HandofGod_ElectricCenter_Glow_03 
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow_03}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter_Glow_03
		texture = PH_RadialGlow_01
		alpha = 1
		scale = (2.0, 2.0)
		dims = (800.0, 800.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		blend = Add
		z_priority = 4
		rgba = [
			140
			200
			255
			255
		]}
	HandofGod_ElectricCenter_Glow_Anim_03
endscript

script HandofGod_ElectricCenter_Flare 
	DestroyScreenElement \{id = HOG_ElectricCenter_Flare}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter_Flare
		texture = JOW_Flare02
		alpha = 1
		scale = (1.0, 1.0)
		dims = (800.0, 800.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		blend = Add
		rot_angle = 45
		z_priority = 3
		rgba = [
			120
			200
			255
			255
		]}
	Wait \{2.2
		second}
	DestroyScreenElement \{id = HOG_ElectricCenter_Flare}
endscript

script HandofGod_ElectricCenter_Flare_02 
	DestroyScreenElement \{id = HOG_ElectricCenter_Flare_02}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter_Flare_02
		texture = JOW_ButtonFlare01
		alpha = 1
		scale = (1.0, 1.0)
		dims = (20.0, 20.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		blend = Add
		z_priority = 3
		rgba = [
			220
			240
			255
			255
		]}
	HandofGod_ElectricCenter_Flare_02_Anim
endscript

script HandofGod_ElectricCenter 
	DestroyScreenElement \{id = HOG_ElectricCenter}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter
		texture = PH_Electricity_01
		alpha = 1
		scale = (2.0, 2.0)
		dims = (300.0, 300.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		blend = Add
		z_priority = 2
		rgba = [
			146
			200
			255
			255
		]}
	Wait \{1
		frame}
	spawnscriptnow \{HandofGod_ElectricCenter_Anim_Scale}
endscript

script HandofGod_ElectricCenter_02 
	DestroyScreenElement \{id = HOG_ElectricCenter_02}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter_02
		texture = PH_Electricity_01
		alpha = 1
		scale = (2.0, 2.0)
		dims = (300.0, 300.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		rot_angle = 45
		blend = Add
		z_priority = 2
		rgba = [
			146
			200
			255
			255
		]}
	Wait \{1
		frame}
	HandofGod_ElectricCenter_Anim_Scale_02
endscript

script HandofGod_ElectricCenter_Glow_Anim 
	HandofGod_ElectricCenter_Glow
	begin
	HOG_ElectricCenter_Glow :SE_SetProps scale = (2.2, 2.2) alpha = 0.4 time = 0.05 motion = Random (@ ease_in @ ease_out )
	HOG_ElectricCenter_Glow :SE_WaitProps
	HOG_ElectricCenter_Glow :SE_SetProps scale = (2.0, 2.0) alpha = 0.6 time = 0.1 motion = Random (@ ease_in @ ease_out )
	HOG_ElectricCenter_Glow :SE_WaitProps
	repeat 12
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow}
endscript

script HandofGod_ElectricCenter_Glow_Anim_02 
	begin
	HOG_ElectricCenter_Glow_02 :SE_SetProps \{scale = (0.5, 0.5)
		alpha = 1}
	HOG_ElectricCenter_Glow_02 :SE_SetProps \{scale = (3.0, 3.0)
		alpha = 0
		time = 0.2}
	HOG_ElectricCenter_Glow_02 :SE_WaitProps
	repeat 7
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow_02}
endscript

script HandofGod_ElectricCenter_Glow_Anim_03 
	HOG_ElectricCenter_Glow_03 :SE_SetProps \{scale = (5.0, 5.0)
		alpha = 0.4}
	HOG_ElectricCenter_Glow_03 :SE_SetProps \{scale = (1.0, 1.0)
		alpha = 0
		time = 1}
	HOG_ElectricCenter_Glow_03 :SE_WaitProps
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow_02}
endscript

script HandofGod_ElectricCenter_Anim_Scale 
	<rot> = 0
	begin
	<rot> = (<rot> + 45)
	HOG_ElectricCenter :SE_SetProps rot_angle = <rot> alpha = 0
	HOG_ElectricCenter :SE_SetProps \{scale = (1.0, 1.0)
		alpha = 0.3
		time = 0.1}
	HOG_ElectricCenter :SE_WaitProps
	HOG_ElectricCenter :SE_SetProps \{scale = (1.3, 1.3)
		alpha = 1
		time = 0.1}
	HOG_ElectricCenter :SE_WaitProps
	repeat 9
	DestroyScreenElement \{id = HOG_ElectricCenter}
endscript

script HandofGod_ElectricCenter_Anim_Scale_02 
	<rot> = 0
	begin
	<rot> = (<rot> + 45)
	HOG_ElectricCenter_02 :SE_SetProps rot_angle = <rot>
	HOG_ElectricCenter_02 :SE_SetProps \{scale = (1.0, 1.0)
		alpha = 1}
	HOG_ElectricCenter_02 :SE_WaitProps
	HOG_ElectricCenter_02 :SE_SetProps \{scale = (2.0, 2.0)
		alpha = 0
		time = 0.2}
	HOG_ElectricCenter_02 :SE_WaitProps
	repeat 10
	DestroyScreenElement \{id = HOG_ElectricCenter_02}
endscript

script HandofGod_ElectricCenter_Flare_02_Anim 
	HOG_ElectricCenter_Flare_02 :SE_SetProps \{scale = (200.0, 200.0)
		rot_angle = -360
		alpha = 0.5
		time = 0.1}
	HOG_ElectricCenter_Flare_02 :SE_WaitProps
	DestroyScreenElement \{id = HOG_ElectricCenter_Flare_02}
endscript

script HandofGod_ElectricCenter_Combo 
	spawnscriptnow \{HandofGod_ElectricCenter_Glow_Anim}
	spawnscriptnow \{HandofGod_ElectricCenter}
	spawnscriptnow \{HandofGod_ElectricCenter_02}
	spawnscriptnow \{HandofGod_ElectricCenter_Flare}
	spawnscriptnow \{HandofGod_Smoke_01}
	spawnscriptnow \{HandofGod_ElectricCenter_Sparks_01}
endscript

script HandofGod_FX_01 
	spawnscriptnow \{HandofGod_ElectricCenter_Glow_Anim}
	spawnscriptnow \{HandofGod_ElectricCenter}
	spawnscriptnow \{HandofGod_ElectricCenter_02}
	spawnscriptnow \{HandofGod_ElectricCenter_Flare}
	spawnscriptnow \{HandofGod_Smoke_01}
	spawnscriptnow \{HandofGod_ElectricCenter_Sparks_01}
	spawnscriptnow \{HandofGod_Lightning_Combo}
	Wait \{2.2
		second}
	HandofGod_ElectricCenter_Flare_02
endscript

script HandofGod_FX_02 
	spawnscriptnow \{HandofGod_ElectricCenter_Glow_02}
	spawnscriptnow \{HandofGod_ElectricCenter_Sparks_02}
	Wait \{0.2
		second}
	HandofGod_Smoke_02
	HandofGod_ElectricCenter_Glow_03
endscript

script HandofGod_Lightning_God 
	DestroyScreenElement \{id = HOG_Lightning_God}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_Lightning_God
		alpha = 1
		scale = (0.8, 0.8)
		just = [
			center
			center
		]
		pos = (800.0, 170.0)
		rot_angle = 60
		material = sys_Big_Bolt01_sys_Big_Bolt01
		z_priority = 1}
	Wait \{2.2
		second}
	DestroyScreenElement \{id = HOG_Lightning_God}
endscript

script HandofGod_Lighting_Devil 
	DestroyScreenElement \{id = HOG_Lighting_Devil}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_Lighting_Devil
		alpha = 1
		scale = (1.1, 1.1)
		just = [
			center
			center
		]
		pos = (410.0, 435.0)
		rot_angle = 232
		material = sys_Big_Bolt01_Red_sys_Big_Bolt01_Red
		z_priority = 1}
	Wait \{2.2
		second}
	DestroyScreenElement \{id = HOG_Lighting_Devil}
endscript

script HandofGod_Lightning_Combo 
	spawnscriptnow \{HandofGod_Lightning_God}
	spawnscriptnow \{HandofGod_Lighting_Devil}
endscript

script HandofGod_FX_Kill 
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow}
	DestroyScreenElement \{id = HOG_ElectricCenter_Flare}
	DestroyScreenElement \{id = HOG_ElectricCenter}
	DestroyScreenElement \{id = HOG_Lightning_God}
	DestroyScreenElement \{id = HOG_Lighting_Devil}
endscript

script HandofGod_ElectricCenter_Sparks_01 
	Destroy2DParticleSystem \{id = ElectricCenter_Sparks_01}
	Wait \{1
		frame}
	Create2DParticleSystem \{id = ElectricCenter_Sparks_01
		pos = (640.0, 260.0)
		z_priority = 2
		material = sys_Particle_Spark01_sys_Particle_Spark01
		parent = root_window
		start_color = [
			100
			200
			255
			255
		]
		end_color = [
			100
			200
			255
			0
		]
		start_scale = (1.2, 1.2)
		end_scale = (0.6, 0.5)
		start_angle_spread = 360.0
		min_rotation = -500.0
		max_rotation = 500.0
		emit_start_radius = 0.0
		emit_radius = 1.0
		emit_rate = 0.03
		emit_dir = 0.0
		emit_spread = 355.0
		velocity = 10
		friction = (0.0, 20.0)
		time = 0.5}
	Wait \{2.2
		second}
	Destroy2DParticleSystem \{id = ElectricCenter_Sparks_01}
endscript

script HandofGod_ElectricCenter_Sparks_02 
	Destroy2DParticleSystem \{id = ElectricCenter_Sparks_02}
	Wait \{1
		frame}
	Create2DParticleSystem \{id = ElectricCenter_Sparks_02
		pos = (640.0, 260.0)
		z_priority = 2
		material = sys_Particle_Spark01_sys_Particle_Spark01
		parent = root_window
		start_color = [
			100
			200
			255
			255
		]
		end_color = [
			100
			200
			255
			0
		]
		start_scale = (1.0, 1.0)
		end_scale = (0.6, 0.5)
		start_angle_spread = 360.0
		min_rotation = -500.0
		max_rotation = 500.0
		emit_start_radius = 0.0
		emit_radius = 1.0
		emit_rate = 0.02
		emit_dir = 0.0
		emit_spread = 355.0
		velocity = 20
		friction = (0.0, 20.0)
		time = 0.5}
	Wait \{1.5
		second}
	Destroy2DParticleSystem \{id = ElectricCenter_Sparks_02}
endscript

script HandofGod_Smoke_01 
	Destroy2DParticleSystem \{id = HOG_Smoke_01}
	Create2DParticleSystem \{id = HOG_Smoke_01
		pos = (640.0, 260.0)
		z_priority = 20.0
		material = Mat_HOG_Smoke
		parent = root_window
		start_color = [
			140
			200
			255
			175
		]
		end_color = [
			140
			200
			255
			0
		]
		start_scale = (1.0, 1.0)
		end_scale = (2.0, 2.0)
		start_angle_spread = 360.0
		min_rotation = -500.0
		max_rotation = 500.0
		emit_start_radius = 0.0
		emit_radius = 1.0
		emit_rate = 0.5
		emit_dir = 0.0
		emit_spread = 355.0
		velocity = 4
		friction = (0.0, 0.0)
		time = 0.5}
	Wait \{2
		second}
	Destroy2DParticleSystem \{id = HOG_Smoke_01}
endscript

script HandofGod_Smoke_02 
	Destroy2DParticleSystem \{id = HOG_Smoke_02}
	Create2DParticleSystem \{id = HOG_Smoke_02
		pos = (640.0, 260.0)
		z_priority = 20.0
		material = Mat_HOG_Smoke
		parent = root_window
		start_color = [
			140
			200
			255
			40
		]
		end_color = [
			140
			200
			255
			0
		]
		start_scale = (2.0, 2.0)
		end_scale = (6.0, 6.0)
		start_angle_spread = 360.0
		min_rotation = -1000.0
		max_rotation = 900.0
		emit_start_radius = 2.0
		emit_radius = 3.0
		emit_rate = 0.09
		emit_dir = 0.0
		emit_spread = 355.0
		velocity = 10
		friction = (0.0, 0.0)
		time = 1}
	Wait \{1.3499999
		second}
	Destroy2DParticleSystem \{id = HOG_Smoke_02
		kill_when_empty}
endscript

script Credits_ScreenFX 
	begin
	if ViewportExists \{id = bg_viewport}
		break
	endif
	Wait \{1
		frame}
	repeat
	if ScreenFX_FxInstanceExists \{viewport = bg_viewport
			name = Bloom__simplified_}
		ScreenFX_UpdateFXInstanceParams \{viewport = bg_viewport
			name = Bloom__simplified_
			scefName = Bloom__simplified_
			type = bloom2
			on = 1
			materialfilter = 1
			subtract = [
				0.41176498
				0.41176498
				0.41176498
				1.0
			]
			colormodulate = [
				0.878431
				0.878431
				0.878431
				1.0
			]
			saturation = 1.0
			thickness = 40.0
			equation = eq2}
	endif
	if ScreenFX_FxInstanceExists \{viewport = bg_viewport
			name = Godray}
		ScreenFX_UpdateFXInstanceParams \{viewport = bg_viewport
			name = Godray
			scefName = Godray
			type = Godray
			on = 1
			colormodulate = [
				1.0
				0.964706
				0.87843204
				3.0
			]
			depthmodulate = 0.0
			steps = 100.0
			range = 1.0
			fadeout_begin = 90.0
			fadeout_end = 120.0
			skycolor = [
				0.94117695
				0.75294095
				0.611765
				5.0
			]
			lightposition = [
				-100.00001
				30.000004
				60.0
				1.0
			]
			cliplightposition = 0
			lightsource = object}
	endif
endscript
