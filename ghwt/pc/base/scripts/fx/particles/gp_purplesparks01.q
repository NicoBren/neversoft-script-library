GP_PurpleSparks01 = {
	pos = (0.801432, 0.0, 0.257512)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	attach
	bone = Bone_Head
	EmitRangeDims = (0.2, 0.2, 0.0)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -9.8, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 360.0
	LifeRange = (0.5, 1.0)
	emit_rate = 200.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.5
	emitNum = 0
	FollowEmitter = 0.0
	FillPath
	AlwaysEmit
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.1, 0.2)
		(0.0, 0.1)
	]
	SpeedRange = (4.0, 6.0)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	AlignWithPath
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	align_to = (1.0, 0.0, 0.0)
	color = -1
	LOD_Default
	NoVisibilityTest
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = JOW_Spark01
		SpecularPower = 0
		TwoSide
		alphacutoff = 16
		blendMode = Add
		Burn
		BurnValue = 0.7
		QuadAnimationFPS = 0
	}
	Knot = [
		(0.0, 0.0, -0.204028)
		(0.0, 0.0, -0.204028)
		(0.0, 0.0, -0.128626)
		(0.0, 0.0, -0.214712)
		(0.0, 0.0, -0.059612997)
		(0.0, 0.0, 0.049867995)
		(0.0, 0.0, 0.128626)
		(0.0, 0.0, 0.181851)
		(0.0, 0.0, 0.181851)
	]
	ParticleColor = [
		-677249025
		-1
		-1018167297
		-1082785793
		-1289617409
		-954073089
	]
	VertexWeight = [
		0.374248
		1.0
	]
}
