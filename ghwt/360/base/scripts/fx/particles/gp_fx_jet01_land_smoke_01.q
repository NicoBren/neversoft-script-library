GP_FX_Jet01_Land_Smoke_01 = {
	pos = (-0.06472499, 0.0, -2.6503289)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	attach
	Align
	ApplyPositionOffset
	EmitRangeDims = (0.1, 0.1, 0.1)
	emit_Target = (0.0, 0.0, -1.0)
	EnableRotate
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, 0.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 80.0
	LifeRange = (1.0, 1.5)
	emit_rate = 220.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 4.0
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(6.0, 6.0)
		(8.0, 8.0)
	]
	SpeedRange = (20.0, 22.0)
	RotVel = (1.0, -1.0)
	RotVelTimeScale = 1.0
	EmitDelayStart = 0.0
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	color = -1589451
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
		BurnValue = 0.5
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
