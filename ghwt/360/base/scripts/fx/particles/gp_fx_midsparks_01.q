GP_FX_MidSparks_01 = {
	pos = (-3.582825, 5.6272616, -11.0741005)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	EmitRangeDims = (1.0, 0.0, 1.0)
	emit_Target = (0.0, -0.2, 1.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -4.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	Radiate
	AngleSpread = 45.0
	BounceHeight = 0.5
	BounceCoeff = 0.2
	BounceCallbackRate = 0.0
	LifeRange = (1.0, 3.0)
	emit_rate = 100.0
	max = 0
	TimeSeed = 0.5
	lifeTime = 0.6
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.07, 0.15)
		(0.02, 0.15)
	]
	SpeedRange = (1.0, 4.0)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	AlignWithPath
	PathFollowTime = 0.05
	History = 2
	HistoryListCoordinateSpace = world
	color = -2849025
	LOD_Distances = (20.0, 30.0)
	NoVisibilityTest
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = JOW_Spark01
		SpecularPower = 0
		alphacutoff = 16
		blendMode = Add
		QuadAnimationFPS = 0
	}
	Knot = [
		(-0.46765104, 0.0, -0.0)
		(-0.46765104, 0.0, -0.0)
		(-0.24335201, 0.0, -0.0)
		(-0.019053001, 0.0, -0.0)
		(0.205247, 0.0, -0.0)
		(0.292715, 0.0, -0.0)
		(0.380183, 0.0, -0.0)
		(0.46765104, 0.0, -0.0)
		(0.46765104, 0.0, -0.0)
	]
	ParticleColor = [
		-1
		-1
		-1
		-1
		-256
		-256
	]
	VertexWeight = [
		0.719445
		1.0
	]
}
