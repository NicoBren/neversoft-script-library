GP_FX_SparkFountain_Big_Sparks_01 = {
	pos = (-6.602028, 0.58740205, -2.0932908)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	EmitRangeDims = (0.05, 0.0, 0.05)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -10.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 8.0
	BounceHeight = 0.2
	BounceCoeff = 0.2
	BounceCallbackRate = 0.0
	LifeRange = (1.0, 3.0)
	emit_rate = 150.0
	max = 0
	TimeSeed = 0.5
	lifeTime = 0.3
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.05, 0.15)
		(0.02, 0.15)
	]
	SpeedRange = (7.0, 12.0)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	AlignWithPath
	PathFollowTime = 0.07
	History = 2
	HistoryListCoordinateSpace = world
	color = -4357377
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
		(-0.245908, 0.0, -0.0)
		(-0.024164999, 0.0, -0.0)
		(0.197577, 0.0, -0.0)
		(0.287602, 0.0, -0.0)
		(0.37762702, 0.0, -0.0)
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
		0.7112439
		1.0
	]
}
