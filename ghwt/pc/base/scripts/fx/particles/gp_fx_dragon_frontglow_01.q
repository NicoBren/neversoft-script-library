GP_FX_Dragon_FrontGlow_01 = {
	pos = (1.2160541, 2.6435058, -3.571584)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	EmitRangeDims = (0.1, 0.1, 0.1)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, 0.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 45.0
	LifeRange = (1.0, 1.0)
	emit_rate = 1.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.0
	emitNum = 1
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(12.0, 14.0)
		(10.0, 11.0)
	]
	SpeedRange = (0.0, 0.0)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.3
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	color = -3511553
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = PH_RadialGlow_01
		SpecularPower = 0
		fillburst
		alphacutoff = 1
		blendMode = Add
		SoftEdge
		SoftedgeScale = 0.1
		Burn
		BurnValue = 0.8
		QuadAnimationFPS = 0
	}
	Knot = [
		(-0.371477, 0.0, -0.0)
		(-0.371477, 0.0, -0.0)
		(-0.17533399, 0.0, -0.0)
		(-0.089931004, 0.0, -0.0)
		(0.106212, 0.0, -0.0)
		(0.197382, 0.0, -0.0)
		(0.39929202, 0.0, -0.0)
		(0.490462, 0.0, -0.0)
		(0.490462, 0.0, -0.0)
	]
	ParticleColor = [
		-256
		-256
		-1
		-1
		-256
		-256
	]
	VertexWeight = [
		0.554203
		1.0
	]
}
