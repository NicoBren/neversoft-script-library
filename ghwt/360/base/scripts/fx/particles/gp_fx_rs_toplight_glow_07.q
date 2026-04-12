GP_FX_RS_TopLight_Glow_07 = {
	pos = (0.0, -1.937838, -0.19649601)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	attach
	Align
	ApplyPositionOffset
	AttachObject = Z_Recordstore_G_JG_Hanglight07
	EmitRangeDims = (0.0, 0.0, 0.0)
	emit_Target = (0.0, 1.0, 0.0)
	EnableRotate
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, 0.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 45.0
	LifeRange = (0.1, 10.0)
	emit_rate = 10.0
	max = 2
	TimeSeed = 0.0
	lifeTime = 0.0
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(6.0, 6.0)
		(6.0, 6.0)
	]
	SpeedRange = (0.0, 0.0)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = object
	color = -1364362497
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = PH_RadialGlow_01
		SpecularPower = 0
		fillburst
		alphacutoff = 1
		blendMode = Add
		Burn
		BurnValue = 0.9
		QuadAnimationFPS = 0
	}
	Knot = [
		(-1.182281, 0.0, -0.0)
		(-1.182281, 0.0, -0.0)
		(-1.174617, 0.0, -0.0)
		(-1.166953, 0.0, -0.0)
		(-1.1592879, 0.0, -0.0)
		(-0.35909104, 0.0, -0.0)
		(0.44110498, 0.0, -0.0)
		(1.2413021, 0.0, -0.0)
		(1.2481421, 0.0, -0.0)
		(1.254983, 0.0, -0.0)
		(1.261823, 0.0, -0.0)
		(1.261823, 0.0, -0.0)
	]
	ParticleColor = [
		-256
		-256
		-196
		-189
		-196
		-189
		-256
		-256
	]
	VertexWeight = [
		0.009407
		0.9916039
		1.0
	]
}
