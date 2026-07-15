GP_FX_Airstream_01 = {
	pos = (0.0, -0.793325, -0.0)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = textureribbontrail
	active
	attach
	ApplyPositionOffset
	EmitRangeDims = (0.0, 0.0, 0.0)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, 0.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	Radiate
	AngleSpread = 80.0
	LifeRange = (0.2, 1.0)
	emit_rate = 10.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.0
	emitNum = 0
	FollowEmitter = 1.0
	FillPath
	EmitFunction = onoff
	EmitPeriod = 0.1
	SizeRange = [
		(0.15, 1.0)
		(0.05, 1.0)
	]
	SpeedRange = (0.0, 0.0)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	PathFollowTime = 0.01
	History = 20
	HistoryListCoordinateSpace = world
	color = -211
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = PH_RadialGlow_01
		SpecularPower = 0
		alphacutoff = 1
		blendMode = Add
		QuadAnimationFPS = 0
	}
	Knot = [
		(-0.72312903, 0.0, -0.0)
		(-0.72312903, 0.0, -0.0)
		(-0.54905903, 0.0, -0.0)
		(-0.374989, 0.0, -0.0)
		(-0.200919, 0.0, -0.0)
		(-0.040763, 0.0, -0.0)
		(0.119394004, 0.0, -0.0)
		(0.27955103, 0.0, -0.0)
		(0.4012, 0.0, -0.0)
		(0.52284896, 0.0, -0.0)
		(0.64449805, 0.0, -0.0)
		(0.64449805, 0.0, -0.0)
	]
	ParticleColor = [
		-1
		-1
		-1
		-1
		-1
		-1
		-256
		-256
	]
	VertexWeight = [
		0.38183704
		0.733153
		1.0
	]
}
