GP_FX_SoundCheck_FrontFog_02 = {
	pos = (-28.376741, -0.543919, 3.8572998)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	EmitRangeDims = (0.1, 0.1, 0.1)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -0.01, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	ElevSpread = (90.0, 130.0)
	SweepSpread = (80.0, 120.0)
	LifeRange = (11.0, 14.0)
	emit_rate = 4.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.0
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = sin
	EmitPeriod = 3.0
	SizeRange = [
		(1.5, 1.5)
		(3.0, 3.0)
	]
	SpeedRange = (0.4, 0.6)
	RotVel = (0.3, -0.3)
	RotVelTimeScale = 0.1
	EmitDelayStart = 0.0
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	color = -219820151
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = PH_Smoke_SinglePuff_Blend_02
		SpecularPower = 0
		FakeAmbientOcclusion
		alphacutoff = 1
		blendMode = blend
		SoftEdge
		SoftedgeScale = 0.2
		Burn
		BurnValue = 0.5
		QuadAnimationFPS = 0
	}
	Knot = [
		(-0.62482506, 0.0, -0.0)
		(-0.62482506, 0.0, -0.0)
		(-0.52626395, 0.0, -0.0)
		(-0.427702, 0.0, -0.0)
		(-0.32914102, 0.0, -0.0)
		(-0.169161, -0.0032549999, -0.0)
		(-0.009181999, -0.00651, -0.0)
		(0.15079801, -0.009765999, -0.0)
		(0.308806, -0.00651, -0.0)
		(0.46681505, -0.0032549999, -0.0)
		(0.62482405, 0.0, -0.0)
		(0.62482405, 0.0, -0.0)
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
		0.236576
		0.620653
		1.0
	]
}
