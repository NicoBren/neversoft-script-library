GP_FX_Jet03_Launch_Smoke_01 = {
	pos = (-0.06472499, 0.0, -7.7617745)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	attach
	Align
	ApplyPositionOffset
	AttachObject = Z_Military_G_RMM_Jet_anim03
	EmitRangeDims = (0.1, 0.1, 0.1)
	emit_Target = (0.0, 0.0, -1.0)
	EnableRotate
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, 0.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 45.0
	LifeRange = (0.5, 1.0)
	emit_rate = 200.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 1.0
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(4.0, 4.0)
		(7.0, 7.0)
	]
	SpeedRange = (20.0, 22.0)
	RotVel = (0.3, -0.3)
	RotVelTimeScale = 0.5
	EmitDelayStart = 0.0
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	color = -1060043
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = PH_Smoke_SinglePuff_Blend_02
		SpecularPower = 0
		fillburst
		alphacutoff = 1
		blendMode = blend
		SoftEdge
		SoftedgeScale = 0.5
		Burn
		BurnValue = 0.1
		QuadAnimationFPS = 0
	}
	Knot = [
		(-2.167634, 0.0, -0.0)
		(-2.167634, 0.0, -0.0)
		(-1.9289559, 0.0, -0.0)
		(-1.6902771, 0.0, -0.0)
		(-1.4515989, 0.0, -0.0)
		(-0.51424295, 0.0, -0.0)
		(0.423112, 0.0, -0.0)
		(1.3604668, 0.0, -0.0)
		(1.6599, 0.0, -0.0)
		(1.959333, 0.0, -0.0)
		(2.258766, 0.0, -0.0)
		(2.258766, 0.0, -0.0)
	]
	ParticleColor = [
		-256
		-256
		-1
		-1
		-1
		-1
		-256
		-256
	]
	VertexWeight = [
		0.16176501
		0.797059
		1.0
	]
}
