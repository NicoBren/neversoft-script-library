GP_FX_FSC_GreySmoke_01 = {
	pos = (-2.2053783, 1.889367, -6.1750865)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	EmitRangeDims = (0.2, 0.0, 0.0)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, 0.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 30.0
	LifeRange = (2.0, 2.3)
	emit_rate = 40.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.5
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.5, 0.5)
		(1.2, 1.2)
	]
	SpeedRange = (1.0, 1.2)
	RotVel = (1.2, -1.2)
	RotVelTimeScale = 0.5
	EmitDelayStart = 0.3
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	color = -181
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = PH_Smoke_SinglePuff_Blend_02
		SpecularPower = 0
		Lighting
		FakeAmbientOcclusion
		alphacutoff = 1
		blendMode = blend
		SoftEdge
		SoftedgeScale = 0.2
		Burn
		BurnValue = 0.2
		QuadAnimationFPS = 0
	}
	Knot = [
		(-0.412285, 0.0, -0.0)
		(-0.412285, 0.0, -0.0)
		(-0.38650003, 0.0, -0.0)
		(-0.36071503, 0.0, -0.0)
		(-0.33493003, 0.0, -0.0)
		(-0.115792, 0.0, -0.0)
		(0.103347, 0.0, -0.0)
		(0.32248503, 0.0, -0.0)
		(0.35276702, 0.0, -0.0)
		(0.383048, 0.0, -0.0)
		(0.41333, 0.0, -0.0)
		(0.41333, 0.0, -0.0)
	]
	ParticleColor = [
		-256
		-1414812928
		-1
		-1768515841
		-1
		-1397969665
		-256
		-1296911872
	]
	VertexWeight = [
		0.09369301
		0.889968
		1.0
	]
}
