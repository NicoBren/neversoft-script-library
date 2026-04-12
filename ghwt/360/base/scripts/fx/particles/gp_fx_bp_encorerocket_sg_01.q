GP_FX_BP_EncoreRocket_SG_01 = {
	pos = (-21.951591, 31.521988, 60.63475)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	EmitRangeDims = (0.2, 0.2, 0.2)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -8.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	Radiate
	AngleSpread = 15.0
	LifeRange = (0.8, 1.0)
	emit_rate = 50.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 1.0
	emitNum = 0
	FollowEmitter = 0.0
	AlwaysEmit
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(1.5, 1.5)
		(2.5, 2.5)
	]
	SpeedRange = (4.0, 6.0)
	RotVel = (1.0, -1.0)
	RotVelTimeScale = 1.0
	EmitDelayStart = 0.0
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	color = -1549688889
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = PH_RadialGlow_01
		SpecularPower = 0
		bloom
		alphacutoff = 1
		blendMode = Add
		QuadAnimationFPS = 0
	}
	Knot = [
		(1.004494, 0.0, -0.3009)
		(1.004494, 0.0, -0.3009)
		(0.33483106, 0.0, -0.1003)
		(-0.33483106, 0.0, 0.1003)
		(-1.004494, 0.0, 0.3009)
		(-1.004494, 0.0, 0.3009)
	]
	ParticleColor = [
		-463361
		-302841857
		-463616
		-302842112
	]
	VertexWeight = [
		1.0
	]
}
