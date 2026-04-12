CAR_Bones_Female_Face = [
	{
		frontend_desc = qs("Head")
		group_name = HeadSize
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Head
				scaling = {
					from = -0.05
					to = 0.1
				}
			}
		]
	}
	{
		frontend_desc = qs("Face Fullness")
		group_name = FaceFullness
		bones = [
			{
				bone = Bone_Jaw
				translation = {
					from = (0.0, 0.01, 0.0)
					to = (0.0, -0.01, 0.0)
				}
			}
			{
				bone = Bone_Trans_Chin
				scaling = {
					from = (0.2, 0.0, -0.3)
					to = (-0.1, 0.0, 0.0)
				}
				translation = {
					from = (0.0, -0.01, 0.0)
					to = (0.0, 0.01, 0.0)
				}
			}
			{
				bone = Bone_Scale_Cheek_L
				scaling = {
					from = (-0.1, 0.0, 0.0)
					to = (0.1, 0.03, 0.07)
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.006, -0.003, 0.0)
				}
				rotation = {
					from = (0.0, 0.0, 0.0)
					to = (5.0, 5.0, 0.0)
				}
			}
			{
				bone = Bone_Scale_Cheek_R
				scaling = {
					from = (-0.1, 0.0, 0.0)
					to = (0.1, 0.03, 0.07)
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (-0.006, -0.003, 0.0)
				}
				rotation = {
					from = (0.0, 0.0, 0.0)
					to = (5.0, -5.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Jaw Scale")
		group_name = JawScale
		bones = [
			{
				bone = Bone_Jaw
				scaling = {
					from = -0.1
					to = 0.1
				}
			}
		]
	}
	{
		frontend_desc = qs("Chin Size")
		group_name = ChinSize
		bones = [
			{
				bone = Bone_Trans_Chin
				scaling = {
					from = (-0.015, -0.025, -0.025)
					to = (0.3, 0.0, 0.1)
				}
				translation = {
					from = (0.0, 0.002, 0.005)
					to = (0.0, -0.002, -0.01)
				}
			}
		]
	}
	{
		frontend_desc = qs("Chin Width")
		group_name = ChinWidth
		bones = [
			{
				bone = Bone_Trans_Chin
				scaling = {
					from = (-0.5, 0.0, 0.0)
					to = (0.5, 0.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Ear Angle")
		group_name = EarAngle
		bones = [
			{
				bone = Bone_Rot_Ear_L
				rotation = {
					from = (0.0, 0.0, -10.0)
					to = (0.0, 0.0, 60.0)
				}
			}
			{
				bone = Bone_Rot_Ear_R
				rotation = {
					from = (0.0, 0.0, 10.0)
					to = (0.0, 0.0, -60.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Ear Tip")
		group_name = EarTip
		bones = [
			{
				bone = Bone_EarTip_L
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.004, 0.01, 0.001)
				}
			}
			{
				bone = Bone_EarTip_R
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (-0.01, 0.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Size")
		group_name = NoseSize
		bones = [
			{
				bone = Bone_Scale_Nose
				scaling = {
					from = -0.2
					to = 0.3
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, 0.0, 0.003)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Tip")
		group_name = NoseTip
		bones = [
			{
				bone = Bone_Scale_Nose_Tip
				scaling = {
					from = (-0.2, 0.0, -0.2)
					to = (0.3, 0.0, 0.2)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Width")
		group_name = NoseWidth
		bones = [
			{
				bone = Bone_Scale_Nostrils
				scaling = {
					from = (-0.35000002, 0.0, -0.003)
					to = (0.3, 0.0, 0.0015)
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, 0.0, 0.002)
				}
			}
			{
				bone = Bone_Scale_Nose_Tip
				scaling = {
					from = (-0.2, 0.0, -0.0025000002)
					to = (0.4, 0.0, 0.0015)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Angle")
		group_name = NoseAngle
		bones = [
			{
				bone = Bone_Scale_Nostrils
				translation = {
					from = (0.0, -0.002, 0.0)
					to = (0.0, 0.001, 0.0)
				}
				rotation = {
					from = (15.0, 0.0, 0.0)
					to = (-25.0, 0.0, 0.0)
				}
			}
			{
				bone = Bone_Scale_Nose_Tip
				translation = {
					from = (0.0, 0.002, 0.0)
					to = (0.0, -0.005, -0.002)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Depth")
		group_name = NoseDepth
		bones = [
			{
				bone = Bone_Scale_Nose
				scaling = {
					from = (0.0, -0.4, 0.0)
					to = (0.0, 0.5, 0.0)
				}
				translation = {
					from = (0.0, 0.0, 0.002)
					to = (0.0, 0.0, 0.0)
				}
			}
			{
				bone = Bone_Scale_Nose_Tip
				translation = {
					from = (0.0, 0.0, 0.002)
					to = (0.0, 0.0, -0.001)
				}
			}
			{
				bone = Bone_Scale_Nostrils
				translation = {
					from = (0.0, 0.0, 0.002)
					to = (0.0, 0.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Bridge")
		group_name = NoseBridge
		bones = [
			{
				bone = Bone_Trans_Nosebridge
				translation = {
					from = (0.0, -0.005, 0.0)
					to = (0.0, 0.007, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Position")
		group_name = NosePosition
		bones = [
			{
				bone = Bone_Scale_Nose
				translation = {
					from = (0.0, 0.006, 0.0)
					to = (0.0, -0.005, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Cheekbone")
		group_name = CheekboneShape
		bones = [
			{
				bone = Bone_Cheek_Upper_L
				translation = {
					from = (0.0, 0.0, -0.0061)
					to = (0.0, -0.002, 0.001)
				}
			}
			{
				bone = Bone_Cheek_Lower_L
				translation = {
					from = (-0.008, 0.0, 0.008)
					to = (0.005, 0.0, -0.003)
				}
			}
			{
				bone = Bone_Cheek_Upper_R
				translation = {
					from = (0.0, 0.001, -0.006)
					to = (0.0, -0.002, 0.001)
				}
			}
			{
				bone = Bone_Cheek_Lower_R
				translation = {
					from = (0.008, 0.0, 0.008)
					to = (-0.005, 0.0, -0.003)
				}
			}
		]
	}
	{
		frontend_desc = qs("Mouth Scale")
		group_name = MouthScale
		bones = [
			{
				bone = Bone_Trans_Mouth
				scaling = {
					from = (-0.2, -0.1, 0.0)
					to = (0.3, 0.15, 0.05)
				}
			}
		]
	}
	{
		frontend_desc = qs("Mouth Position")
		group_name = MouthPosition
		bones = [
			{
				bone = Bone_Trans_Mouth
				translation = {
					from = (0.0, 0.005, 0.0)
					to = (0.0, -0.005, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Mouth Depth")
		group_name = MouthDepth
		bones = [
			{
				bone = Bone_Trans_Mouth
				translation = {
					from = (0.0, 0.0, -0.004)
					to = (0.0, 0.0, 0.006)
				}
			}
		]
	}
	{
		frontend_desc = qs("Mouth Angle")
		group_name = MouthAngle
		bones = [
			{
				bone = Bone_Scale_Lip_Upper
				translation = {
					from = (0.0, 0.0, -0.003)
					to = (0.0, 0.0, 0.003)
				}
			}
			{
				bone = Bone_Scale_Lip_Lower
				translation = {
					from = (0.0, 0.0, 0.003)
					to = (0.0, 0.0, -0.003)
				}
			}
		]
	}
	{
		frontend_desc = qs("Lip Shape")
		group_name = LipShape
		bones = [
			{
				bone = Bone_Trans_Lip_Outer
				translation = {
					from = (0.0, -0.001, 0.0)
					to = (0.0, 0.0015, 0.0)
				}
			}
			{
				bone = Bone_Trans_Lip_Mid
				translation = {
					from = (0.0, 0.001, 0.0)
					to = (0.0, -0.001, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Upper Lip Thickness")
		group_name = UpperLipThickness
		bones = [
			{
				bone = Bone_Scale_Lip_Upper
				scaling = {
					from = (-0.5, -0.1, -0.6)
					to = (0.3, 0.1, 0.4)
				}
			}
		]
	}
	{
		frontend_desc = qs("Lower Lip Thickness")
		group_name = LowerLipThickness
		bones = [
			{
				bone = Bone_Scale_Lip_Lower
				scaling = {
					from = (-0.1, -0.2, -0.4)
					to = (0.2, 0.5, 0.7)
				}
				translation = {
					from = (0.0, 0.003, 0.0)
					to = (0.0, -0.003, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eye Angle")
		group_name = EyeAngle
		bones = [
			{
				bone = Bone_Rot_Eye_L
				rotation = {
					from = (0.0, 14.0, 0.0)
					to = (0.0, -15.0, 0.0)
				}
			}
			{
				bone = Bone_Rot_Eye_R
				rotation = {
					from = (0.0, -14.0, 0.0)
					to = (0.0, 15.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eye Shape")
		group_name = EyeShape
		bones = [
			{
				bone = Bone_Rot_Eye_L
				scaling = {
					from = (0.0, 0.0, -0.55)
					to = (0.0, 0.0, 0.120000005)
				}
			}
			{
				bone = Bone_Rot_Eye_R
				scaling = {
					from = (0.0, 0.0, -0.55)
					to = (0.0, 0.0, 0.120000005)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eye Position")
		group_name = EyePosition
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Trans_Eye_R
				translation = {
					from = (0.0, -0.005, 0.0)
					to = (0.0, 0.004, 0.0)
				}
			}
			{
				bone = Bone_Trans_Eye_L
				translation = {
					from = (0.0, -0.005, 0.0)
					to = (0.0, 0.004, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eye Depth")
		group_name = EyeDepth
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Trans_Eye_R
				translation = {
					from = (0.0, 0.0, -0.005)
					to = (0.0, 0.0, 0.002)
				}
			}
			{
				bone = Bone_Trans_Eye_L
				translation = {
					from = (0.0, 0.0, -0.005)
					to = (0.0, 0.0, 0.002)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eye Scale")
		group_name = EyeScale
		bones = [
			{
				bone = Bone_Trans_Eye_R
				scaling = {
					from = -0.1
					to = 0.1
				}
			}
			{
				bone = Bone_Trans_Eye_L
				scaling = {
					from = -0.1
					to = 0.1
				}
			}
		]
	}
	{
		frontend_desc = qs("Eye Distance")
		group_name = EyeDistance
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Trans_Eye_R
				translation = {
					from = (0.003, 0.0, 0.0)
					to = (-0.004, 0.0, 0.0)
				}
			}
			{
				bone = Bone_Trans_Eye_L
				translation = {
					from = (-0.003, 0.0, 0.0)
					to = (0.004, 0.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eyebrow Shape")
		group_name = EyebrowShape
		bones = [
			{
				bone = Bone_BrowShapeSide_L
				translation = {
					from = (0.0, -0.002, 0.0)
					to = (0.0, 0.0025000002, 0.0)
				}
			}
			{
				bone = Bone_BrowShapeMid_L
				translation = {
					from = (0.0, 0.0025000002, 0.0)
					to = (0.0, -0.001, 0.0)
				}
			}
			{
				bone = Bone_BrowShapeSide_R
				translation = {
					from = (0.0, -0.002, 0.0)
					to = (0.0, 0.0025000002, 0.0)
				}
			}
			{
				bone = Bone_BrowShapeMid_R
				translation = {
					from = (0.0, 0.0025000002, 0.0)
					to = (0.0, -0.001, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eyebrow Size")
		group_name = EyebrowSize
		bones = [
			{
				bone = Bone_Trans_Brow_R
				scaling = {
					from = (-0.1, 0.0, -0.2)
					to = (0.03, 0.0, 0.25)
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, -0.0018000001, 0.0)
				}
			}
			{
				bone = Bone_Trans_Brow_L
				scaling = {
					from = (-0.1, 0.0, -0.2)
					to = (0.03, 0.0, 0.25)
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, -0.0018000001, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eyebrow Angle")
		group_name = EyebrowAngle
		bones = [
			{
				bone = Bone_Trans_Brow_R
				rotation = {
					from = (0.0, 10.0, 0.0)
					to = (0.0, -18.0, 0.0)
				}
			}
			{
				bone = Bone_Trans_Brow_L
				rotation = {
					from = (0.0, -10.0, 0.0)
					to = (0.0, 18.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eyebrow Distance")
		group_name = EyebrowDistance
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Trans_Brow_R
				translation = {
					from = (0.008, 0.0, 0.0)
					to = (-0.004, 0.0, 0.0)
				}
			}
			{
				bone = Bone_Trans_Brow_L
				translation = {
					from = (-0.008, 0.0, 0.0)
					to = (0.004, 0.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Brow Position")
		group_name = BrowPosition
		bones = [
			{
				bone = Bone_Trans_Brow
				translation = {
					from = (0.0, -0.003, 0.0)
					to = (0.0, 0.007, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Brow Depth")
		group_name = BrowDepth
		bones = [
			{
				bone = Bone_Trans_Brow
				translation = {
					from = (0.0, 0.0, -0.002)
					to = (0.0, 0.0, 0.005)
				}
			}
		]
	}
]
CAR_Bones_Male_Face = [
	{
		frontend_desc = qs("Head")
		group_name = HeadSize
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Head
				scaling = {
					from = -0.05
					to = 0.1
				}
			}
		]
	}
	{
		frontend_desc = qs("Face Fullness")
		group_name = FaceFullness
		bones = [
			{
				bone = Bone_Jaw
				translation = {
					from = (0.0, 0.005, 0.0)
					to = (0.0, -0.02, 0.0)
				}
			}
			{
				bone = Bone_Trans_Chin
				scaling = {
					from = (0.2, 0.0, -0.3)
					to = (-0.1, 0.0, 0.0)
				}
				translation = {
					from = (0.0, -0.015, 0.0)
					to = (0.0, 0.02, 0.0)
				}
			}
			{
				bone = Bone_Scale_Cheek_L
				scaling = {
					from = (-0.1, 0.0, 0.0)
					to = (0.1, 0.03, 0.07)
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.009, -0.003, 0.0)
				}
				rotation = {
					from = (0.0, 0.0, 0.0)
					to = (5.0, 5.0, 0.0)
				}
			}
			{
				bone = Bone_Scale_Cheek_R
				scaling = {
					from = (-0.1, 0.0, 0.0)
					to = (0.1, 0.03, 0.07)
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (-0.009, -0.003, 0.0)
				}
				rotation = {
					from = (0.0, 0.0, 0.0)
					to = (5.0, -5.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Jaw Scale")
		group_name = JawScale
		bones = [
			{
				bone = Bone_Jaw
				scaling = {
					from = -0.2
					to = 0.2
				}
			}
		]
	}
	{
		frontend_desc = qs("Chin Size")
		group_name = ChinSize
		bones = [
			{
				bone = Bone_Trans_Chin
				scaling = {
					from = (-0.015, -0.025, -0.025)
					to = (0.3, 0.0, 0.1)
				}
				translation = {
					from = (0.0, -0.002, -0.005)
					to = (0.0, 0.002, 0.007)
				}
			}
		]
	}
	{
		frontend_desc = qs("Chin Width")
		group_name = ChinWidth
		bones = [
			{
				bone = Bone_Trans_Chin
				scaling = {
					from = (-0.7, 0.0, 0.0)
					to = (0.15, 0.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Ear Angle")
		group_name = EarAngle
		bones = [
			{
				bone = Bone_Rot_Ear_L
				rotation = {
					from = (0.0, 0.0, -10.0)
					to = (0.0, 0.0, 60.0)
				}
			}
			{
				bone = Bone_Rot_Ear_R
				rotation = {
					from = (0.0, 0.0, 10.0)
					to = (0.0, 0.0, -60.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Ear Tip")
		group_name = EarTip
		bones = [
			{
				bone = Bone_EarTip_L
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.004, 0.01, 0.001)
				}
			}
			{
				bone = Bone_EarTip_R
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (-0.01, 0.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Size")
		group_name = NoseSize
		bones = [
			{
				bone = Bone_Scale_Nose
				scaling = {
					from = -0.2
					to = 0.3
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, -0.005, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Tip")
		group_name = NoseTip
		bones = [
			{
				bone = Bone_Scale_Nose_Tip
				scaling = {
					from = (-0.5, 0.0, -0.5)
					to = (0.5, 0.25, 0.4)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Width")
		group_name = NoseWidth
		bones = [
			{
				bone = Bone_Scale_Nostrils
				scaling = {
					from = (-0.3, 0.0, -0.0025000002)
					to = (0.5, 0.0, 0.0015)
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, 0.0, 0.002)
				}
			}
			{
				bone = Bone_Scale_Nose_Tip
				scaling = {
					from = (-0.1, 0.0, -0.0025000002)
					to = (0.4, 0.0, 0.0015)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Angle")
		group_name = NoseAngle
		bones = [
			{
				bone = Bone_Scale_Nostrils
				translation = {
					from = (0.0, -0.005, 0.0)
					to = (0.0, 0.001, 0.0)
				}
				rotation = {
					from = (17.0, 0.0, 0.0)
					to = (-25.0, 0.0, 0.0)
				}
			}
			{
				bone = Bone_Scale_Nose_Tip
				translation = {
					from = (0.0, 0.004, 0.0)
					to = (0.0, -0.005, -0.002)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Depth")
		group_name = NoseDepth
		bones = [
			{
				bone = Bone_Scale_Nose
				scaling = {
					from = (0.0, -0.4, 0.0)
					to = (0.0, 0.5, 0.0)
				}
				translation = {
					from = (0.0, 0.0, 0.002)
					to = (0.0, 0.0, 0.0)
				}
			}
			{
				bone = Bone_Scale_Nose_Tip
				translation = {
					from = (0.0, 0.0, 0.002)
					to = (0.0, 0.0, -0.001)
				}
			}
			{
				bone = Bone_Scale_Nostrils
				translation = {
					from = (0.0, 0.0, 0.002)
					to = (0.0, 0.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Bridge")
		group_name = NoseBridge
		bones = [
			{
				bone = Bone_Trans_Nosebridge
				translation = {
					from = (0.0, -0.005, 0.0)
					to = (0.0, 0.007, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Broken")
		group_name = NoseBroken
		bones = [
			{
				bone = Bone_Trans_Nosebridge
				translation = {
					from = (-0.01, 0.0, 0.0)
					to = (0.01, 0.0, 0.0)
				}
			}
			{
				bone = Bone_Scale_Nose
				rotation = {
					from = (0.0, -8.0, 0.0)
					to = (0.0, 8.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Nose Position")
		group_name = NosePosition
		bones = [
			{
				bone = Bone_Scale_Nose
				translation = {
					from = (0.0, 0.008, 0.0)
					to = (0.0, -0.005, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Cheekbone")
		group_name = CheekboneShape
		bones = [
			{
				bone = Bone_Cheek_Upper_L
				translation = {
					from = (0.0, 0.001, -0.006)
					to = (0.0, -0.002, 0.001)
				}
			}
			{
				bone = Bone_Cheek_Lower_L
				translation = {
					from = (-0.008, 0.0, 0.008)
					to = (0.005, 0.0, -0.003)
				}
			}
			{
				bone = Bone_Cheek_Upper_R
				translation = {
					from = (0.0, 0.001, -0.006)
					to = (0.0, -0.002, 0.001)
				}
			}
			{
				bone = Bone_Cheek_Lower_R
				translation = {
					from = (0.008, 0.0, 0.008)
					to = (-0.005, 0.0, -0.003)
				}
			}
		]
	}
	{
		frontend_desc = qs("Mouth Scale")
		group_name = MouthScale
		bones = [
			{
				bone = Bone_Trans_Mouth
				scaling = {
					from = (-0.2, 0.0, -0.1)
					to = (0.3, 0.05, 0.15)
				}
			}
		]
	}
	{
		frontend_desc = qs("Mouth Position")
		group_name = MouthPosition
		bones = [
			{
				bone = Bone_Trans_Mouth
				translation = {
					from = (0.0, 0.008, 0.0)
					to = (0.0, -0.008, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Mouth Depth")
		group_name = MouthDepth
		bones = [
			{
				bone = Bone_Trans_Mouth
				translation = {
					from = (0.0, 0.0, -0.004)
					to = (0.0, 0.0, 0.006)
				}
			}
		]
	}
	{
		frontend_desc = qs("Mouth Angle")
		group_name = MouthAngle
		bones = [
			{
				bone = Bone_Scale_Lip_Upper
				translation = {
					from = (0.0, 0.0, -0.003)
					to = (0.0, 0.0, 0.003)
				}
			}
			{
				bone = Bone_Scale_Lip_Lower
				translation = {
					from = (0.0, 0.0, 0.003)
					to = (0.0, 0.0, -0.003)
				}
			}
		]
	}
	{
		frontend_desc = qs("Lip Shape")
		group_name = LipShape
		bones = [
			{
				bone = Bone_Trans_Lip_Outer
				translation = {
					from = (0.0, -0.001, 0.0)
					to = (0.0, 0.0015, 0.0)
				}
			}
			{
				bone = Bone_Trans_Lip_Mid
				translation = {
					from = (0.0, 0.001, 0.0)
					to = (0.0, -0.001, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Upper Lip Thickness")
		group_name = UpperLipThickness
		bones = [
			{
				bone = Bone_Scale_Lip_Upper
				scaling = {
					from = (-0.5, -0.1, -0.6)
					to = (0.3, 0.1, 0.4)
				}
			}
		]
	}
	{
		frontend_desc = qs("Lower Lip Thickness")
		group_name = LowerLipThickness
		bones = [
			{
				bone = Bone_Scale_Lip_Lower
				scaling = {
					from = (-0.1, -0.2, -0.4)
					to = (0.2, 0.5, 0.7)
				}
				translation = {
					from = (0.0, 0.003, 0.0)
					to = (0.0, -0.003, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eye Angle")
		group_name = EyeAngle
		bones = [
			{
				bone = Bone_Rot_Eye_L
				rotation = {
					from = (0.0, 8.0, 0.0)
					to = (0.0, -10.0, 0.0)
				}
			}
			{
				bone = Bone_Rot_Eye_R
				rotation = {
					from = (0.0, -8.0, 0.0)
					to = (0.0, 10.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eye Shape")
		group_name = EyeShape
		bones = [
			{
				bone = Bone_Rot_Eye_L
				scaling = {
					from = (0.0, 0.0, -0.8)
					to = (0.0, 0.0, 0.2)
				}
			}
			{
				bone = Bone_Rot_Eye_R
				scaling = {
					from = (0.0, 0.0, -0.8)
					to = (0.0, 0.0, 0.2)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eye Position")
		group_name = EyePosition
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Trans_Eye_R
				translation = {
					from = (0.0, -0.007, 0.0)
					to = (0.0, 0.004, 0.0)
				}
			}
			{
				bone = Bone_Trans_Eye_L
				translation = {
					from = (0.0, -0.007, 0.0)
					to = (0.0, 0.004, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eye Depth")
		group_name = EyeDepth
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Trans_Eye_R
				translation = {
					from = (0.0, 0.0, -0.003)
					to = (0.0, 0.0, 0.004)
				}
			}
			{
				bone = Bone_Trans_Eye_L
				translation = {
					from = (0.0, 0.0, -0.003)
					to = (0.0, 0.0, 0.004)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eye Scale")
		group_name = EyeScale
		bones = [
			{
				bone = Bone_Trans_Eye_R
				scaling = {
					from = -0.3
					to = 0.008
				}
			}
			{
				bone = Bone_Trans_Eye_L
				scaling = {
					from = -0.3
					to = 0.008
				}
			}
		]
	}
	{
		frontend_desc = qs("Eye Distance")
		group_name = EyeDistance
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Trans_Eye_R
				translation = {
					from = (0.005, 0.0, 0.0)
					to = (-0.003, 0.0, 0.0)
				}
			}
			{
				bone = Bone_Trans_Eye_L
				translation = {
					from = (-0.005, 0.0, 0.0)
					to = (0.003, 0.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eyebrow Shape")
		group_name = EyebrowShape
		bones = [
			{
				bone = Bone_BrowShapeSide_L
				translation = {
					from = (0.0, -0.002, 0.0)
					to = (0.0, 0.0025000002, 0.0)
				}
			}
			{
				bone = Bone_BrowShapeMid_L
				translation = {
					from = (0.0, 0.0025000002, 0.0)
					to = (0.0, -0.001, 0.0)
				}
			}
			{
				bone = Bone_BrowShapeSide_R
				translation = {
					from = (0.0, -0.002, 0.0)
					to = (0.0, 0.0025000002, 0.0)
				}
			}
			{
				bone = Bone_BrowShapeMid_R
				translation = {
					from = (0.0, 0.0025000002, 0.0)
					to = (0.0, -0.001, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eyebrow Size")
		group_name = EyebrowSize
		bones = [
			{
				bone = Bone_Trans_Brow_R
				scaling = {
					from = (-0.1, 0.0, -0.2)
					to = (0.1, 0.0, 0.5)
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, -0.004, 0.0)
				}
			}
			{
				bone = Bone_Trans_Brow_L
				scaling = {
					from = (-0.1, 0.0, -0.2)
					to = (0.1, 0.0, 0.5)
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, -0.004, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eyebrow Angle")
		group_name = EyebrowAngle
		bones = [
			{
				bone = Bone_Trans_Brow_R
				rotation = {
					from = (0.0, 7.0, 0.0)
					to = (0.0, -18.0, 0.0)
				}
			}
			{
				bone = Bone_Trans_Brow_L
				rotation = {
					from = (0.0, -7.0, 0.0)
					to = (0.0, 18.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Eyebrow Distance")
		group_name = EyebrowDistance
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Trans_Brow_R
				translation = {
					from = (0.001, 0.0, 0.0)
					to = (-0.006, 0.0, 0.0)
				}
			}
			{
				bone = Bone_Trans_Brow_L
				translation = {
					from = (-0.001, 0.0, 0.0)
					to = (0.006, 0.0, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Brow Position")
		group_name = BrowPosition
		bones = [
			{
				bone = Bone_Trans_Brow
				translation = {
					from = (0.0, -0.002, 0.0)
					to = (0.0, 0.007, 0.0)
				}
			}
		]
	}
	{
		frontend_desc = qs("Brow Depth")
		group_name = BrowDepth
		bones = [
			{
				bone = Bone_Trans_Brow
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, 0.0, 0.01)
				}
			}
		]
	}
]
CAR_Bones_Female_Body = [
	{
		frontend_desc = qs("Physique")
		group_name = Physique
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Pelvis
				scaling = {
					from = (0.0, -0.2, -0.15)
					to = (0.0, 0.2, 0.15)
					no_propagate
				}
			}
			{
				bone = Bone_Split_Ass_L
				scaling = {
					from = (0.0, -0.2, -0.15)
					to = (0.0, 0.2, 0.15)
					no_propagate
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.03, 0.0, -0.01)
					no_propagate
				}
			}
			{
				bone = Bone_Split_Ass_R
				scaling = {
					from = (0.0, -0.2, -0.15)
					to = (0.0, 0.2, 0.15)
					no_propagate
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.03, 0.0, 0.01)
					no_propagate
				}
			}
			{
				bone = Bone_Stomach_Upper
				scaling = {
					from = (0.0, -0.1, -0.1)
					to = (0.0, 0.1, 0.1)
					no_propagate
				}
			}
			{
				bone = Bone_Chest
				scaling = {
					from = (0.0, -0.05, -0.0125)
					to = (0.0, 0.05, 0.05)
					no_propagate
				}
			}
			{
				bone = Bone_Neck
				scaling = {
					from = (0.0, 0.2, 0.2)
					to = (0.0, -0.4, -0.4)
					no_propagate
				}
			}
			{
				bone = Bone_Twist_Bicep_Top_R
				scaling = {
					from = (-0.2, -0.2, -0.2)
					to = (0.35000002, 0.2, 0.2)
					no_propagate
				}
			}
			{
				bone = Bone_Twist_Bicep_Top_L
				scaling = {
					from = (-0.2, -0.2, -0.2)
					to = (0.35000002, 0.2, 0.2)
					no_propagate
				}
			}
			{
				bone = Bone_Bicep_L
				scaling = {
					from = (0.0, -0.3, -0.3)
					to = (0.0, 0.1, 0.1)
					no_propagate
				}
			}
			{
				bone = Bone_Bicep_R
				scaling = {
					from = (0.0, -0.3, -0.3)
					to = (0.0, 0.1, 0.1)
					no_propagate
				}
			}
			{
				bone = Bone_Twist_Thigh_R
				scaling = {
					from = (0.0, -0.15, -0.15)
					to = (0.0, 0.15, 0.15)
					no_propagate
				}
			}
			{
				bone = Bone_Twist_Thigh_L
				scaling = {
					from = (0.0, -0.15, -0.15)
					to = (0.0, 0.15, 0.15)
					no_propagate
				}
			}
			{
				bone = Bone_Thigh_R
				scaling = {
					from = (0.0, -0.15, -0.15)
					to = (0.0, 0.15, 0.15)
					no_propagate
				}
			}
			{
				bone = Bone_Thigh_L
				scaling = {
					from = (0.0, -0.15, -0.15)
					to = (0.0, 0.15, 0.15)
					no_propagate
				}
			}
			{
				bone = Bone_Knee_R
				scaling = {
					from = (0.0, -0.15, -0.15)
					to = (0.0, 0.15, 0.15)
					no_propagate
				}
			}
			{
				bone = Bone_Knee_L
				scaling = {
					from = (0.0, -0.05, -0.05)
					to = (0.0, 0.05, 0.05)
					no_propagate
				}
			}
		]
	}
	{
		frontend_desc = qs("Height")
		group_name = Height
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Control_Root
				scaling = {
					from = (-0.025, -0.025, -0.025)
					to = (0.025, 0.025, 0.025)
				}
			}
		]
	}
	{
		frontend_desc = qs("Chest")
		group_name = Chest
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Chest
				scaling = {
					from = (-0.015, -0.15, 0.0)
					to = (0.015, 0.1, 0.0)
					no_propagate
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, -0.0015, 0.0)
					no_propagate
				}
			}
		]
	}
]
CAR_Bones_Male_Body = [
	{
		frontend_desc = qs("Physique")
		group_name = Physique
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Bone_Pelvis
				scaling = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, -0.1, -0.1)
					no_propagate
				}
			}
			{
				bone = Bone_Split_Ass_L
				scaling = {
					from = (0.0, -0.2, -0.15)
					to = (0.0, 0.2, 0.15)
					no_propagate
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.03, 0.0, -0.01)
					no_propagate
				}
			}
			{
				bone = Bone_Split_Ass_R
				scaling = {
					from = (0.0, -0.2, -0.15)
					to = (0.0, 0.2, 0.15)
					no_propagate
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.03, 0.0, 0.01)
					no_propagate
				}
			}
			{
				bone = Bone_Stomach_Lower
				scaling = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, -0.1, -0.1)
					no_propagate
				}
			}
			{
				bone = Bone_Stomach_Upper
				scaling = {
					from = (0.0, -0.1, -0.1)
					to = (0.0, 0.0, 0.0)
					no_propagate
				}
			}
			{
				bone = Bone_Chest
				scaling = {
					from = (0.0, -0.2, -0.05)
					to = (0.15, 0.2, 0.2)
					no_propagate
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0, 0.005, 0.0)
					no_propagate
				}
			}
			{
				bone = Bone_Neck
				scaling = {
					from = (0.0, -0.4, -0.4)
					to = (0.0, 0.2, 0.2)
					no_propagate
				}
			}
			{
				bone = Bone_Twist_Bicep_Top_R
				scaling = {
					from = (-0.2, -0.2, -0.35000002)
					to = (0.2, 0.5, 0.75)
					no_propagate
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0025000002, 0.0, -0.005)
					no_propagate
				}
			}
			{
				bone = Bone_Twist_Bicep_Top_L
				scaling = {
					from = (-0.2, -0.2, -0.35000002)
					to = (0.2, 0.5, 0.75)
					no_propagate
				}
			}
			{
				bone = Bone_Twist_Bicep_Mid_R
				scaling = {
					from = (0.0, -0.1, -0.1)
					to = (0.0, 0.5, 0.3)
					no_propagate
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0025000002, 0.0, -0.007)
					no_propagate
				}
			}
			{
				bone = Bone_Twist_Bicep_Mid_L
				scaling = {
					from = (0.0, -0.1, -0.1)
					to = (0.0, 0.5, 0.3)
					no_propagate
				}
				translation = {
					from = (0.0, 0.0, 0.0)
					to = (0.0025000002, 0.0, 0.007)
					no_propagate
				}
			}
			{
				bone = Bone_Bicep_L
				scaling = {
					from = (0.0, -0.1, -0.1)
					to = (0.0, 0.2, 0.2)
					no_propagate
				}
			}
			{
				bone = Bone_Bicep_R
				scaling = {
					from = (0.0, -0.1, -0.1)
					to = (0.0, 0.2, 0.2)
					no_propagate
				}
			}
			{
				bone = Bone_Forearm_L
				scaling = {
					from = (0.0, -0.2, -0.2)
					to = (0.0, 0.25, 0.25)
					no_propagate
				}
			}
			{
				bone = Bone_Forearm_R
				scaling = {
					from = (0.0, -0.2, -0.2)
					to = (0.0, 0.25, 0.25)
					no_propagate
				}
			}
			{
				bone = Bone_Twist_Thigh_R
				scaling = {
					from = (0.0, -0.1, -0.1)
					to = (0.0, 0.1, 0.1)
					no_propagate
				}
			}
			{
				bone = Bone_Twist_Thigh_L
				scaling = {
					from = (0.0, -0.1, -0.1)
					to = (0.0, 0.1, 0.1)
					no_propagate
				}
			}
			{
				bone = Bone_Thigh_R
				scaling = {
					from = (0.0, -0.15, -0.15)
					to = (0.0, 0.15, 0.15)
					no_propagate
				}
			}
			{
				bone = Bone_Thigh_L
				scaling = {
					from = (0.0, -0.15, -0.15)
					to = (0.0, 0.15, 0.15)
					no_propagate
				}
			}
			{
				bone = Bone_Knee_R
				scaling = {
					from = (0.0, -0.15, -0.15)
					to = (0.0, 0.15, 0.15)
					no_propagate
				}
			}
			{
				bone = Bone_Knee_L
				scaling = {
					from = (0.0, -0.05, -0.05)
					to = (0.0, 0.05, 0.05)
					no_propagate
				}
			}
		]
	}
	{
		frontend_desc = qs("Height")
		group_name = Height
		min = -1.0
		max = 1.0
		bones = [
			{
				bone = Control_Root
				scaling = {
					from = (-0.025, -0.025, -0.025)
					to = (0.025, 0.025, 0.025)
				}
			}
		]
	}
]
