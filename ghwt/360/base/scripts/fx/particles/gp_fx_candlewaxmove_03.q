GP_FX_CandleWaxMove_03 = {
	pos = (0.002791, -3.2148218, 2.0365732)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = textureribbontrail
	active
	CreatedAtStart
	attach
	Align
	ApplyPositionOffset
	AttachObject = z_cathedral_g_ChandParent
	EmitRangeDims = (0.01, 0.01, 0.01)
	emit_Target = (0.0, 1.0, 0.0)
	EnableRotate
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -10.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 0.0
	LifeRange = (1.7, 2.0)
	emit_rate = 2.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.0
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = triangle
	EmitPeriod = 5.0
	SizeRange = [
		(0.03, 0.1)
		(0.02, 0.1)
	]
	SpeedRange = (0.1, 0.2)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	PathFollowTime = 0.08
	History = 2
	HistoryListCoordinateSpace = world
	color = 555553279
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
		(-0.74808604, 0.0, -0.0)
		(-0.74808604, 0.0, -0.0)
		(-0.72039497, 0.0, -0.0)
		(-0.69270295, 0.0, -0.0)
		(-0.66501206, 0.0, -0.0)
		(-0.26026797, 0.0, -0.0)
		(0.14447601, 0.0, -0.0)
		(0.549219, 0.0, -0.0)
		(0.64121103, 0.0, -0.0)
		(0.73320293, 0.0, -0.0)
		(0.825195, 0.0, -0.0)
		(0.825195, 0.0, -0.0)
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
		0.052803
		0.82458603
		1.0
	]
}
