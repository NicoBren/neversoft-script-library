GP_FX_SparkFountain_Sparks_01 = {
	pos = (-6.6185994, 0.58740205, -2.0856233)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = textureribbontrail
	active
	EmitRangeDims = (0.1, 0.1, 0.1)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -10.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 45.0
	LifeRange = (0.4, 0.8)
	emit_rate = 100.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.0
	emitNum = 20
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.04, 0.3)
		(0.02, 0.02)
	]
	SpeedRange = (3.0, 7.0)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	PathFollowTime = 0.03
	History = 2
	HistoryListCoordinateSpace = world
	color = -4882945
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = JOW_Spark01
		SpecularPower = 0
		alphacutoff = 1
		blendMode = Add
		QuadAnimationFPS = 0
	}
	Knot = [
		(-0.289338, 0.0, 0.003587)
		(-0.289338, 0.0, 0.003587)
		(-0.16197601, 0.0, 0.001793)
		(-0.034614995, 0.0, -0.0)
		(0.092747, 0.0, -0.001793)
		(0.147716, 0.0, -0.001793)
		(0.20268501, 0.0, -0.001793)
		(0.257654, 0.0, -0.001793)
		(0.257654, 0.0, -0.001793)
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
		0.69854105
		1.0
	]
}
