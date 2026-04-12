preset_musician_instrument_hack = {
	CAS_Guitar_Body = {
		desc_id = guitar_body01
	}
	CAS_Guitar_Neck = {
		desc_id = Guitar_Neck01
	}
	CAS_Guitar_Head = {
		desc_id = Guitar_Head01
	}
	CAS_Guitar_Pickguards = {
		desc_id = Guitar_PickG01
	}
	CAS_Guitar_Pickups = {
		desc_id = GTR_Pickups_Style_01a
	}
	CAS_Guitar_Knobs = {
		desc_id = GTR_Knobs_Style_01a
	}
	CAS_Guitar_Bridges = {
		desc_id = GTR_Hardware01a
	}
	CAS_Bass_Body = {
		desc_id = CAB_Body_B2A
	}
	CAS_Bass_Neck = {
		desc_id = CAB_Neck_BN1A
	}
	CAS_Bass_Head = {
		desc_id = CAB_Head_BH6A
	}
	CAS_Bass_Pickguards = {
		desc_id = CAB_PickG_E1
	}
	CAS_Bass_Pickups = {
		desc_id = CAB_pickup_Hack02
	}
	CAS_Bass_Knobs = {
		desc_id = cab_knob_unos04
	}
	CAS_Bass_Bridges = {
		desc_id = CAB_Bridge_BB3A
	}
	CAS_Mic = {
		desc_id = Rock
	}
	CAS_Mic_Stand = {
		desc_id = Rock
	}
	CAS_Drums = {
		desc_id = basic
	}
}
worst_male_appearance_hack = {
	cas_physique = {
		desc_id = MalePhysique
		bones = {
			Height = 1.0
			Physique = 1.0
		}
	}
}
worst_female_appearance_hack = {
	cas_physique = {
		desc_id = FemalePhysique
		bones = {
			Height = 1.0
			Physique = 1.0
			Chest = 1.0
		}
	}
}
Preset_Musician_Profiles_Modifiable = [
	{
		name = axel
		fullname = qs("\LAxel Steel")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_axel
		blurb = qs("After attaining genuine superstar status, Axel retreated to hometown bonfire parties and barnyard jam sessions.")
		appearance = {
			genre = `Classic Rock`
			CAS_Body = {
				desc_id = GH4_CAR_Male
				random_weight = 1.5
				bones = {
					FaceFullness = 0.83199996
					JawScale = 0.8
					ChinSize = 0.561
					HeadSize = -0.533
					ChinWidth = 0.875
					CheekboneShape = 0.9
					NoseTip = 0.852
					NoseDepth = 0.265
					NosePosition = 0.0
					NoseBridge = 0.49400002
					NoseBroken = 0.367
					MouthScale = 0.7
					MouthPosition = -1.0
					LipShape = 0.2
					UpperLipThickness = 0.2
					EyePosition = 0.23300001
					EyeDistance = 0.7
					EyeShape = 0.6
					EyeScale = 0.56700003
					NoseWidth = 0.6
					NoseSize = 0.4
					EyebrowAngle = 0.9
					EyebrowDistance = 0.9
					BrowPosition = 0.3
				}
			}
			cas_physique = {
				desc_id = MalePhysique
				additional_bone_transforms = [
					{
						bone = Bone_Neck
						scaling = {
							value = (0.25, 0.25, 0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Chest
						scaling = {
							value = (0.1, 0.4, 0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Upper
						scaling = {
							value = (0.1, 0.25, 0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Lower
						scaling = {
							value = (0.1, 0.25, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Collar_R
						scaling = {
							value = (0.2, 0.2, 0.2)
							no_propagate
						}
						translation = {
							value = (0.0, -0.07, 0.0)
						}
					}
					{
						bone = Bone_Collar_L
						scaling = {
							value = (0.2, 0.2, 0.2)
							no_propagate
						}
						translation = {
							value = (0.0, -0.07, 0.0)
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_R
						scaling = {
							value = (0.0, 0.65000004, 0.5)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_R
						scaling = {
							value = (0.0, 0.65000004, 0.5)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_R
						scaling = {
							value = (0.0, 0.65000004, 0.5)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_L
						scaling = {
							value = (0.0, 0.65000004, 0.5)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_L
						scaling = {
							value = (0.0, 0.65000004, 0.5)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_L
						scaling = {
							value = (0.0, 0.65000004, 0.5)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_L
						scaling = {
							value = (0.0, 0.5, 0.35000002)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_R
						scaling = {
							value = (0.0, 0.5, 0.35000002)
							no_propagate
						}
					}
					{
						bone = Bone_Palm_L
						scaling = {
							value = (0.0, 0.3, 0.3)
						}
					}
					{
						bone = Bone_Palm_R
						scaling = {
							value = (0.0, 0.3, 0.3)
						}
					}
					{
						bone = Bone_Ankle_R
						scaling = {
							value = (0.13, 0.0, 0.3)
						}
					}
					{
						bone = Bone_Ankle_L
						scaling = {
							value = (0.13, 0.0, 0.3)
						}
					}
				]
			}
			CAS_Eyes = {
				desc_id = CAR_Green_Eyes
			}
			CAS_Male_Hair = {
				desc_id = M_Metl_Hair_Axel
			}
			CAS_Male_Facial_Hair = {
				desc_id = none
			}
			CAS_Male_Torso = {
				desc_id = m_metl_torso_axel2
			}
			CAS_Male_Legs = {
				desc_id = m_metl_legs_axel2
			}
			CAS_Male_Shoes = {
				desc_id = m_rock_shoe_canvas_d1
			}
			CAS_Male_Acc_Left = {
				desc_id = M_Punk_Acc_LLeather
			}
			CAS_Male_Acc_Right = {
				desc_id = M_Punk_Acc_RLeather
			}
			CAS_Male_Acc_Face = {
				desc_id = none
			}
			CAS_Male_Acc_Ears = {
				desc_id = none
			}
			CAS_Male_Intro_Anim = {
				desc_id = Intro_Pointing
			}
			CAS_Male_Win_Anim = {
				desc_id = Win_Kick
			}
			CAS_Male_Lose_Anim = {
				desc_id = Lose_AngryAtCrowd
			}
			CAS_Male_Age = {
				desc_id = CAR_Male_Mature
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body04
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style4_d_01.dds`
						material = Guitar_Body_Style_04_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style4_LD_01.img`
								color = yellow_1guitar
								flags = 4
								a = 75
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style4_DTL_04.img`
								flags = 4
								color = red_1
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck03
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_03.dds`
						material = Guitar_Neck3_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Ornate1_D_05.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head05
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds`
						material = Guitar_Head_05_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock05_LD_01.img`
								flags = 4
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock05_Dtl_06.img`
								flags = 4
								color = red_3
							}
						]
					}
				]
				chosen_materials = {
					material1 = orange_4
				}
			}
			CAS_Guitar_Pickguards = {
				desc_id = GTR_Body4_PickG01
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware05
				chosen_materials = {
					material1 = orange_4
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR4_Knob_Type1_04
				chosen_materials = {
					material1 = Black_1guitar
				}
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type1_Blktan_3
				chosen_materials = {
					material1 = Black_1guitar
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_BB3A
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Bass\cab_bodywood_b3a_e_mls.dds`
						material = CAB_Body_BB3A_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_BachWHT_MLS.img`
								color = Black_1guitar
								a = 100
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_Bach_DTL_Pin.img`
								color = yellow_5guitar
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1B
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01b_rosewood_d_mls.dds`
						material = CAB_NECK_BN1B_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_wedgehigh.img`
								flags = 4
								color = yellow_4guitar
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH7A
				chosen_materials = {
					material1 = grey_5guitar
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_bh7a.dds`
						material = CAB_Head_BH7A_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH7A_WTfinish.img`
								flags = 4
								color = Black_1guitar
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_046.img`
								x_trans = -30
								y_trans = -5
								x_scale = 60
								y_scale = 65
								rot = 6033
								flags = 27
								color = yellow_orange_4
							}
						]
					}
				]
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PickG_F3
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_pickg_f1_d_mls.dds`
						material = CAB_PickG_F1_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/cab_pickg_f4W_d_mls.img`
								color = yellow_4
								flags = 4
								a = 90
							}
						]
					}
				]
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_Hack
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_hack01
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_ds_06.img`
								flags = 32
								color = yellow_orange_4
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/bass_skin_ds_64.img`
								flags = 4
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
								color = yellow_orange_1
								x_scale = 120
								y_scale = 115
								flags = 3
								a = 70
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
								color = Black_1guitar
								x_trans = -26
								x_scale = 10
								y_scale = 115
								flags = 3
								y_trans = -8
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
								x_trans = -30
								flags = 3
								x_scale = 1
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
								x_trans = -24
								x_scale = 1
								flags = 3
								y_scale = 110
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_036.img`
								x_trans = -27
								x_scale = 40
								y_scale = 40
								flags = 3
								y_trans = 11
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_036.img`
								color = Black_1guitar
								x_trans = -27
								y_trans = 11
								x_scale = 35
								flags = 3
								y_scale = 35
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_033.img`
								x_trans = -27
								x_scale = 25
								y_scale = 10
								flags = 3
								y_trans = 23
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_033.img`
								color = Black_1guitar
								x_trans = -27
								x_scale = 20
								y_scale = 15
								flags = 3
								y_trans = 21
							}
							{
								font = fontgrid_text_a6
								text = 'A'
								x_trans = -32
								y_trans = 19
								x_scale = 40
								y_scale = 45
								flags = 3
								color = grey_5guitar
							}
							{
								font = fontgrid_text_a6
								text = 'S'
								color = grey_5guitar
								x_trans = -24
								x_scale = 45
								y_scale = 45
								flags = 3
								y_trans = 13
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics020.img`
								x_trans = -28
								y_trans = -7
								x_scale = 40
								y_scale = 50
								rot = 1000
								flags = 19
								color = grey_5guitar
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics020.img`
								x_trans = -26
								y_trans = -7
								x_scale = 40
								y_scale = 50
								flags = 19
								rot = 5333
							}
						]
					}
				]
			}
			CAS_Mic = {
				desc_id = `Classic Rock`
			}
			CAS_Mic_Stand = {
				desc_id = `Classic Rock`
			}
			CAS_Bass_Highway = {
				desc_id = AxelHighway
			}
			CAS_Guitar_Highway = {
				desc_id = AxelHighway
			}
			CAS_Drums_Highway = {
				desc_id = AxelHighway
			}
		}
	}
	{
		name = Casey
		fullname = qs("\LCasey Lynch")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_casey
		blurb = qs("Finally embracing her feminine appeal, Casey has risen to the status of 'Goddess of Rock'.  When asked by a reporter if she had sold out, Casey replied with a roundhouse to the face.  'Don't worry, I'll pay the medical bill.'")
		appearance = {
			CAS_Body = {
				desc_id = GH4_CAR_Casey
				cap = [
					{
						base_tex = `tex/models/Characters/Global/Global_Blank_Head_dnc.dds`
						material = CAR_female_head
						Cas_1
						post_layer = [
							{
								texture = `tex/models/Characters/Layers/CAR/female/Makeup/CAR_female_Makeup06.img`
								flags = 4
							}
							{
								texture = `tex/models/Characters/Layers/CAR/female/Makeup/CAR_female_Makeup_lip03.img`
								flags = 4
							}
						]
					}
				]
				bones = {
					UpperLipThickness = 0.97499996
					LowerLipThickness = 0.947
					MouthScale = 0.0
					MouthAngle = 0.7
					MouthDepth = 0.433
					EyeScale = 0.0
					EyeDepth = 1.0
					EyePosition = 0.533
					NoseBridge = 0.6
					NoseWidth = 0.0
					NoseDepth = 0.365
				}
			}
			cas_physique = {
				desc_id = FemalePhysique
			}
			CAS_Eyes = {
				desc_id = CAR_DeepBlue_Eyes
			}
			CAS_Female_Hair = {
				desc_id = F_Metl_Hair_Pony
				chosen_materials = {
					material1 = yellow_4
				}
			}
			CAS_Female_Hat = {
				desc_id = none
			}
			CAS_Female_Facial_Hair = {
				desc_id = none
			}
			CAS_Female_Torso = {
				desc_id = f_rock_torso_jjacket
			}
			CAS_Female_Legs = {
				desc_id = f_rock_legs_leather
			}
			CAS_Female_Shoes = {
				desc_id = F_Rock_Shoe_Canvas
			}
			CAS_Female_Acc_Left = {
				desc_id = F_Rock_Acc_LStrap
			}
			CAS_Female_Acc_Right = {
				desc_id = F_Punk_Acc_RGlvwatch
			}
			CAS_Female_Acc_Face = {
				desc_id = none
			}
			CAS_Female_Acc_Ears = {
				desc_id = none
			}
			CAS_Female_Win_Anim = {
				desc_id = Win_Hype
			}
			CAS_Female_Lose_Anim = {
				desc_id = Lose_AngryAtCrowd
			}
			CAS_Female_Intro_Anim = {
				desc_id = Intro_Hype
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Prediktor
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\guitars\gtr_predikt_body01_d_mls.dds`
						material = Guitar_Body_Prediktor_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style16_LD_01.img`
								flags = 4
								color = purple_blue_1
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style16_DTL_04.img`
								color = Black_1guitar
								flags = 4
								a = 60
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon008.img`
								color = red_1
								x_trans = -23
								x_scale = 60
								y_scale = 130
								rot = 3150
								flags = 3
								a = 30
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_icons056.img`
								x_trans = 30
								x_scale = 30
								y_scale = 80
								rot = 3150
								flags = 19
								y_trans = -6
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_004.img`
								color = purple_blue_3
								x_trans = -36
								y_trans = -23
								x_scale = 45
								y_scale = 60
								flags = 3
								a = 40
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect001.img`
								a = 40
								x_trans = -33
								y_trans = 28
								x_scale = 25
								y_scale = 45
								rot = 200
								flags = 3
								color = purple_blue_1
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BNEbony
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_nek_ebony01.dds`
						material = CAB_Neck_Ebony_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_Birds.img`
								flags = 4
								color = purple_blue_1
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH5A
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Bass_Pickguards = {
				desc_id = none
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_Bumbl_pickup_A1
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB1A
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Bass_Knobs = {
				desc_id = CAB_Knob_Phunq05
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_ds_30.img`
								flags = 32
								color = purple_blue_3
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/bass_skin_RM_02.img`
								flags = 4
								color = purple_blue_3
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_001.img`
								a = 75
								y_trans = 29
								x_scale = 15
								y_scale = 15
								flags = 3
								x_trans = 15
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect001.img`
								x_trans = -22
								y_trans = -17
								x_scale = 45
								y_scale = 55
								rot = 6083
								flags = 3
								color = blue_1
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_004.img`
								x_trans = 15
								y_trans = 33
								flags = 3
								color = blue_3
							}
						]
					}
				]
			}
			CAS_Drums_Sticks = {
				desc_id = Drumsticks_Zildjian2
			}
			CAS_Mic = {
				desc_id = `Glam Rock`
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = CaseyHighway
			}
			CAS_Guitar_Highway = {
				desc_id = CaseyHighway
			}
			CAS_Drums_Highway = {
				desc_id = CaseyHighway
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body02
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds`
						material = Guitar_Body_Style_02_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style2_D_05.img`
								flags = 4
								color = yellow_green_3guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style2_DTL_23.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds`
						material = Guitar_Neck1_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Vine1_D_03.img`
								flags = 4
								color = blue_5
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head02
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock02_d_01.dds`
						material = Headstock2_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_LD_01.img`
								flags = 4
								color = yellow_green_3guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_DTL_02.img`
								flags = 4
								color = yellow_green_1guitar
							}
						]
					}
				]
				chosen_materials = {
					material1 = grey_4guitar
				}
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01b
				chosen_materials = {
					material1 = grey_4guitar
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR2_Knob_Type9_04
				chosen_materials = {
					material1 = Black_1guitar
				}
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type2_03
				chosen_materials = {
					material1 = Black_1guitar
				}
			}
		}
	}
	{
		name = Izzy
		fullname = qs("\LIzzy Sparks")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_izzy
		blurb = qs("Daughters, lock up your mothers... Sunset has not fallen upon the strip!  Izzy returns with the flair and the hair, and isn't stopping 'til your ears bleed pure rock.  Glam never tasted so good.")
		appearance = {
			CAS_Body = {
				desc_id = GH4_CAR_Izzy
				bones = {
					NoseSize = 0.0
					NosePosition = 0.5
					NoseTip = 0.5
					NoseDepth = 0.765
					NoseBridge = 0.49400002
					EyeShape = 0.342
					EyePosition = -0.767
					EyeScale = 0.367
					EyeDistance = -0.33
					MouthPosition = 0.167
					CheekboneShape = 0.2
					EyebrowAngle = 0.7
				}
			}
			cas_physique = {
				desc_id = MalePhysique
			}
			CAS_Eyes = {
				desc_id = CAR_Brown_Eyes
			}
			CAS_Male_Hair = {
				desc_id = M_Metl_Hair_MidHigh
				chosen_materials = {
					material1 = yellow_1
				}
			}
			CAS_Male_Hat = {
				desc_id = none
			}
			CAS_Male_Facial_Hair = {
				desc_id = none
			}
			CAS_Male_Torso = {
				desc_id = M_Glam_Torso_Rags
				chosen_materials = {
					material1 = red_2
				}
			}
			CAS_Male_Legs = {
				desc_id = M_Glam_Legs_Stripes
				chosen_materials = {
					material1 = grey_4
					material2 = red_3
				}
			}
			CAS_Male_Shoes = {
				desc_id = m_glam_shoe_eightysixed
			}
			CAS_Male_Acc_Left = {
				desc_id = M_Goth_Acc_LStraps
			}
			CAS_Male_Acc_Right = {
				desc_id = M_Punk_Acc_RLeather
			}
			CAS_Male_Acc_Face = {
				desc_id = none
			}
			CAS_Male_Acc_Ears = {
				desc_id = none
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Prediktor
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\guitars\gtr_predikt_body01_d_mls.dds`
						material = Guitar_Body_Prediktor_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style16_LD_MplSb.img`
								flags = 4
								color = orange_4
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style_Predikt_Ray2.img`
								flags = 4
								color = green_3guitar
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01_maple_d_mls.dds`
						material = CAB_NECK_BN1A_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_Lightning.img`
								flags = 4
								color = navy_1
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_Flay_rev
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_flay001.dds`
						material = CAB_Head_BH1A_Headstock
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_Flay001_WTfinish.img`
								flags = 4
								color = green_3guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_Flay001_DTL_03.img`
								flags = 4
								color = red_orange_3
							}
						]
					}
				]
				chosen_materials = {
					material1 = red_orange_3
				}
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PG_Pred02
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_predikt_pickg02_d_mls.dds`
						material = GTR_Body16_Pickgrd_02_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Gtr_Predikt_PickG02_tort.img`
								flags = 4
								color = green_3guitar
							}
						]
					}
				]
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB1A
				chosen_materials = {
					material1 = red_orange_3
				}
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_phunq04
				chosen_materials = {
					material1 = red_orange_3
				}
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_ds_46.img`
								flags = 32
								color = red_2
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_47.img`
								flags = 4
								color = red_1
							}
						]
					}
				]
			}
			CAS_Mic = {
				desc_id = `Glam Rock`
			}
			CAS_Mic_Stand = {
				desc_id = Glam
			}
			CAS_Bass_Highway = {
				desc_id = IzzyHighway
			}
			CAS_Guitar_Highway = {
				desc_id = IzzyHighway
			}
			CAS_Drums_Highway = {
				desc_id = IzzyHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = Intro_Hype
			}
			CAS_Male_Win_Anim = {
				desc_id = Win_KungFu
			}
			CAS_Male_Lose_Anim = {
				desc_id = Lose_Tantrum
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body03
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style3_d_01.dds`
						material = Guitar_Body_Style_03_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style3_LD_01.img`
								flags = 4
								color = red_2
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style3_DTL_82.img`
								flags = 4
								color = red_orange_2
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck02
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_02.dds`
						material = Guitar_Neck2_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Shards_D_12.img`
								flags = 4
								color = blue_5
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head10
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock10_d_01.dds`
						material = Guitar_Head_10_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock10_LD_01.img`
								flags = 4
								color = red_2
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock10_DTL_01.img`
								flags = 4
								color = orange_2
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01b
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR3_Knob_Type10_03
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type3_03
				chosen_materials = {
					material1 = red_1
				}
			}
		}
	}
	{
		name = judy
		fullname = qs("\LJudy Nails")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_judy
		blurb = qs("After realizing that the majority of her fans were 14 year old boys, Judy dropped her label like a bad habit.  In her debut solo effort 'Punkagothic Rockabillica', Judy brings her own style.")
		appearance = {
			CAS_Body = {
				desc_id = GH4_CAR_Judy
				bones = {
					FaceFullness = 0.3
					JawScale = 0.3
					UpperLipThickness = 1.0
					LowerLipThickness = 1.0
					MouthScale = 0.0
					MouthPosition = 0.0
					NosePosition = 0.3
					NoseTip = 0.5
					LipShape = 0.2
					EyeAngle = 0.39000002
					EyeShape = 0.7
					EyebrowSize = 0.8
					EyebrowAngle = 0.1
					BrowPosition = 0.4
					BrowDepth = 0.0
					EyebrowDistance = -0.59
					NoseWidth = 0.2
					NoseDepth = 0.465
					NoseAngle = 0.3
					EyePosition = -0.067
					EyeScale = 0.4
				}
			}
			cas_physique = {
				desc_id = FemalePhysique
				additional_bone_transforms = [
					{
						bone = Control_Root
						scaling = {
							value = (-0.06, -0.06, -0.06)
						}
					}
					{
						bone = Bone_Pelvis
						scaling = {
							value = (0.0, 0.015, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Chest
						scaling = {
							value = (0.0, -0.05, 0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Lower
						scaling = {
							value = (0.0, 0.1, 0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Upper
						scaling = {
							value = (0.0, 0.1, 0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Collar_L
						scaling = {
							value = (0.0, 0.0, 0.0)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, -0.01)
							no_propagate
						}
					}
					{
						bone = Bone_Collar_R
						scaling = {
							value = (0.0, 0.0, 0.0)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, 0.01)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_R
						scaling = {
							value = (0.0, 0.2, 0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_L
						scaling = {
							value = (0.0, 0.2, 0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_L
						scaling = {
							value = (0.0, 0.2, 0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_R
						scaling = {
							value = (0.0, 0.2, 0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_R
						scaling = {
							value = (0.0, 0.1, 0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_L
						scaling = {
							value = (0.0, 0.1, 0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Head
						scaling = {
							value = (0.11, 0.11, 0.11)
						}
					}
					{
						bone = Bone_Ankle_L
						scaling = {
							value = (0.2, 0.2, 0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Ankle_R
						scaling = {
							value = (0.2, 0.2, 0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_R
						scaling = {
							value = (0.0, 0.25, 0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_L
						scaling = {
							value = (0.0, 0.25, 0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_R
						scaling = {
							value = (0.0, 0.2, 0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_L
						scaling = {
							value = (0.0, 0.2, 0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Knee_R
						scaling = {
							value = (0.0, 0.15, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Knee_L
						scaling = {
							value = (0.0, 0.15, 0.15)
							no_propagate
						}
					}
				]
			}
			CAS_Eyes = {
				desc_id = CAR_Green_Eyes
			}
			CAS_Female_Hair = {
				desc_id = F_Punk_Hair_JudyNails1
				chosen_materials = {
					material1 = red_3
					material2 = red_1
				}
			}
			CAS_Female_Torso = {
				desc_id = f_punk_torso_stripe
				chosen_materials = {
					material2 = grey_4
					material1 = grey_5
				}
			}
			CAS_Female_Legs = {
				desc_id = f_punk_legs_skirt
				chosen_materials = {
					material1 = red_2
					material2 = grey_5
					material3 = grey_1
				}
			}
			CAS_Female_Shoes = {
				desc_id = f_punk_shoe_army
				chosen_materials = {
					material1 = red_1
					material2 = grey_4
				}
			}
			CAS_Female_Acc_Left = {
				desc_id = F_Punk_Acc_LGlvwatch
			}
			CAS_Female_Acc_Right = {
				desc_id = F_Punk_Acc_Rbands
			}
			CAS_Female_Acc_Ears = {
				desc_id = f_punk_acc_ring_02
			}
			CAS_Bass_Highway = {
				desc_id = JudyHighway
			}
			CAS_Guitar_Highway = {
				desc_id = JudyHighway
			}
			CAS_Drums_Highway = {
				desc_id = JudyHighway
			}
			CAS_Female_Win_Anim = {
				desc_id = Win_Hype
			}
			CAS_Female_Lose_Anim = {
				desc_id = Lose_AngryAtCrowd
			}
			CAS_Female_Intro_Anim = {
				desc_id = Intro_Hype
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body14
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style14_d_01.dds`
						material = Guitar_Body_Style_14_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style14_LD_01.img`
								flags = 4
								color = violet_3
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style14_DTL_03.img`
								flags = 4
								color = purple_blue_1
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck03
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_03.dds`
						material = Guitar_Neck3_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Stars_D_02.img`
								flags = 4
								color = blue_4
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head06
				chosen_materials = {
					material1 = blue_5
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds`
						material = Guitar_Head_06_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock06_LD_01.img`
								flags = 4
								color = purple_blue_1
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = GTR_Body14_PickG02
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01b
				chosen_materials = {
					material1 = blue_5
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR14_Knob_Type2_04
				chosen_materials = {
					material1 = violet_3
				}
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type1_Blk_2
				chosen_materials = {
					material1 = violet_1
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Kelly
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\bass\cab_body_kelly_d_mls.dds`
						material = CAB_Kelly_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_Kelly_LD_Zeb.img`
								flags = 4
								color = yellow_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_Kelly_DTL_Tri.img`
								flags = 4
								color = red_1
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon005.img`
								color = red_orange_2
								x_trans = -7
								y_trans = 19
								x_scale = 40
								y_scale = 20
								rot = 5983
								flags = 3
								a = 90
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon009.img`
								x_trans = -25
								y_trans = -41
								x_scale = 90
								y_scale = 55
								rot = 5033
								flags = 19
								color = red_orange_2
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
								x_trans = -3
								y_trans = -38
								x_scale = 10
								y_scale = 20
								flags = 3
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Creature007.img`
								x_trans = 32
								y_trans = -13
								x_skew = -30
								x_scale = 30
								y_scale = 60
								rot = 450
								flags = 3
								color = blue_2
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics014.img`
								x_trans = -42
								y_trans = 22
								x_scale = 10
								y_scale = 20
								flags = 3
								color = red_orange_2
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1B
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01b_rosewood_d_mls.dds`
						material = CAB_NECK_BN1B_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_Lyr_Star_MOP.img`
								flags = 4
								color = yellow_1guitar
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_Guppy
				chosen_materials = {
					material1 = grey_4guitar
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_guppy_d.dds`
						material = CAB_Head_Guppy_Headstock
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_Guppy_WT.img`
								color = Black_1guitar
								flags = 4
								a = 85
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_guppy_DTL_01.img`
								flags = 4
								color = Black_1guitar
							}
						]
					}
				]
			}
			CAS_Bass_Pickguards = {
				desc_id = none
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack01
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_MLS
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_grmbl03
				chosen_materials = {
					material1 = orange_3
				}
			}
			CAS_Bass_Highway = {
				desc_id = AxelHighway
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/Drumshell_DS_33.img`
								flags = 32
								color = blue_2
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						layers = [
							{
								font = fontgrid_text_a6
								text = 'A'
								x_trans = -18
								y_trans = 15
								rot = 5333
								flags = 3
								color = navy_2
							}
							{
								font = fontgrid_text_a6
								text = 'X'
								x_trans = -8
								y_trans = 2
								rot = 5283
								flags = 3
								color = navy_2
							}
							{
								font = fontgrid_text_a6
								text = 'E'
								color = navy_2
								x_trans = 0
								y_trans = -11
								flags = 3
								rot = 5283
							}
							{
								font = fontgrid_text_a6
								text = 'L'
								color = navy_2
								y_trans = -24
								rot = 5133
								flags = 3
								x_trans = 8
							}
							{
								font = fontgrid_text_a6
								text = '!'
								color = navy_2
								y_trans = -34
								rot = 5033
								flags = 3
								x_trans = 14
							}
						]
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_35.img`
								rot = 950
								flags = 4
								color = navy_3
							}
						]
					}
				]
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_ds_40.img`
								flags = 32
								color = red_orange_3
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/bass_skin_ds_15.img`
								flags = 4
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_002.img`
								flags = 3
								color = navy_1
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_001.img`
								color = red_2
								x_scale = 45
								flags = 3
								y_scale = 45
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics014.img`
								x_scale = 30
								y_scale = 30
								flags = 3
								color = red_orange_4
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon009.img`
								color = red_3
								x_trans = -5
								y_trans = -1
								x_scale = 75
								y_scale = 70
								flags = 3
								rot = 2500
							}
						]
					}
				]
			}
			CAS_Drums_Sticks = {
				desc_id = Drumsticks1
			}
			CAS_Mic = {
				desc_id = mic_standard
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
		}
	}
	{
		name = Johnny
		fullname = qs("\LJohnny Napalm")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Johnny
		blurb = qs("'I love the smell of napalm in the morning.'  Whoever said that never met Johnny.  Up all night thrashing and partying, there is no sleeping for Johnny, just blacking out.  'I eat disco and $#!! emo.'")
		appearance = {
			genre = Punk
			CAS_Body = {
				desc_id = GH4_CAR_Johnny
				bones = {
					CheekboneShape = 0.0
					EarAngle = 0.3
					ChinWidth = 0.175
					NoseBroken = 0.2
					NoseWidth = 0.4
					LowerLipThickness = 0.0
					LipShape = 1.0
					UpperLipThickness = 0.5
					JawScale = 0.9
					NosePosition = 0.105000004
					EyeAngle = 0.49
					EyeShape = 0.342
					EyeDepth = -0.767
					EyeScale = 0.367
					EyeDistance = -0.23
					EyebrowAngle = 0.8
					NoseTip = 0.5
					NoseAngle = 0.3
					MouthAngle = 1.0
					MouthDepth = 0.7
					MouthPosition = 0.66700006
					MouthScale = 0.067
					FaceFullness = 0.0
					ChinSize = 0.0
					NoseDepth = 0.8
					NoseBridge = 0.9
				}
			}
			cas_physique = {
				desc_id = MalePhysique
				additional_bone_transforms = [
					{
						bone = Bone_Neck
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_R
						scaling = {
							value = (0.0, -0.2, -0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_R
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_R
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_R
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Wrist_R
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_L
						scaling = {
							value = (0.0, -0.2, -0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_L
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_L
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_L
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Wrist_L
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Ankle_L
						scaling = {
							value = (0.0, 0.1, 0.2)
						}
					}
					{
						bone = Bone_Ankle_R
						scaling = {
							value = (0.0, 0.1, 0.2)
						}
					}
					{
						bone = Bone_Twist_Thigh_R
						scaling = {
							value = (0.0, -0.3, -0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_L
						scaling = {
							value = (0.0, -0.3, -0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_R
						scaling = {
							value = (0.0, -0.3, -0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_L
						scaling = {
							value = (0.0, -0.3, -0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Knee_R
						scaling = {
							value = (0.0, -0.03, -0.03)
							no_propagate
						}
					}
					{
						bone = Bone_Knee_L
						scaling = {
							value = (0.0, -0.03, -0.03)
							no_propagate
						}
					}
				]
			}
			CAS_Eyes = {
				desc_id = CAR_Green_Eyes
			}
			CAS_Male_Hair = {
				desc_id = M_Punk_Hair_LSpike
				chosen_materials = {
					material1 = red_orange_3
				}
			}
			CAS_Male_Hat = {
				desc_id = none
			}
			CAS_Male_Facial_Hair = {
				desc_id = none
			}
			CAS_Male_Torso = {
				desc_id = m_punk_torso_johnny1_03
			}
			CAS_Male_Legs = {
				desc_id = m_punk_legs_johnny1
			}
			CAS_Male_Shoes = {
				desc_id = M_Punk_Shoes_Johnny2
			}
			CAS_Male_Acc_Left = {
				desc_id = none
			}
			CAS_Male_Acc_Right = {
				desc_id = none
			}
			CAS_Male_Acc_Face = {
				desc_id = none
			}
			CAS_Male_Acc_Ears = {
				desc_id = none
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_ds_43.img`
								flags = 32
								color = green_3guitar
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/bass_skin_ds_04.img`
								flags = 4
								color = yellow_green_1guitar
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_002.img`
								color = purple_blue_1
								x_scale = 130
								flags = 3
								y_scale = 130
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_002.img`
								color = violet_1
								x_scale = 145
								flags = 3
								y_scale = 175
							}
						]
					}
				]
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Chunder01
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Bass\cab_body_chndra_d_mls.dds`
						material = CAB_Body_Chunder01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_Chndr_WHT_D_MLS.img`
								color = orange_1
								flags = 4
								a = 85
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_chndr_DTL_Trash.img`
								flags = 4
								color = green_4guitar
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_004.img`
								x_trans = -16
								y_trans = 30
								flags = 3
								color = teal_1
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon018.img`
								x_trans = -4
								x_scale = 175
								y_scale = 135
								rot = 2050
								flags = 3
								color = navy_1
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_012.img`
								flags = 3
								color = violet_1
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01_maple_d_mls.dds`
						material = CAB_NECK_BN1A_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_skulls.img`
								flags = 4
								color = green_1guitar
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_SixTease
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_sixtease_d_mls.dds`
						material = CAB_Head_SixTease_Headstock
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_SixTease_WTfinish.img`
								color = green_1guitar
								flags = 4
								a = 70
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_SixTease_DTL_02.img`
								flags = 4
								color = orange_2
							}
						]
					}
				]
				chosen_materials = {
					material1 = green_4guitar
				}
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PGuardChndr04
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_pickgchndr02_d_mls.dds`
						material = CAB_PGuardChndr05_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_PickGChndr02_TORT_MLs.img`
								flags = 4
								color = blue_4
							}
						]
					}
				]
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_Hack
				chosen_materials = {
					material1 = green_4guitar
				}
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_chndr08
				chosen_materials = {
					material1 = green_2guitar
				}
			}
			CAS_Bass_Strings = {
				desc_id = Power_Slinky
			}
			CAS_Guitar_Body = {
				desc_id = Guitar_Body12
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style12_d_01.dds`
						material = Guitar_Body_Style_12_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style12_LD_01.img`
								flags = 4
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style12_DTL_22.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck03
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_03.dds`
						material = Guitar_Neck3_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_IronX_D_07.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head12
				chosen_materials = {
					material1 = grey_3guitar
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds`
						material = Guitar_Head_12_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock12_LD_01.img`
								flags = 4
								color = Black_1guitar
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR12_Hardware_01
				chosen_materials = {
					material1 = grey_3guitar
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR12_Knob_Type5_04
				chosen_materials = {
					material1 = grey_3guitar
				}
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type1_Blk_3
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Mic = {
				desc_id = Punk
			}
			CAS_Mic_Stand = {
				desc_id = Glam
			}
			CAS_Bass_Highway = {
				desc_id = JohnnyHighway
			}
			CAS_Guitar_Highway = {
				desc_id = JohnnyHighway
			}
			CAS_Drums_Highway = {
				desc_id = JohnnyHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = Intro_Generic1
			}
			CAS_Male_Win_Anim = {
				desc_id = Win_Kick
			}
			CAS_Male_Lose_Anim = {
				desc_id = Lose_kick
			}
		}
	}
	{
		name = Lars
		fullname = qs("\LLars Umlaut")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Lars
		blurb = qs("After an overwhelmingly warm debut a year ago, Lars needed time to cool off.  Ready the longboats and crank up the metal.  Lars is prepared to reverse the effects of global warming with his icy world tour.")
		appearance = {
			genre = `Black Metal`
			$preset_musician_instrument_hack
			CAS_Body = {
				desc_id = GH4_CAR_Lars
				set_materials = {
					skin = {
						diffuse = [
							249
							247
							247
						]
					}
				}
				bones = {
					EyeAngle = 0.3
					EyebrowShape = 0.0
					EyebrowAngle = 1.0
					EyeShape = 0.7
					NoseWidth = 0.92099994
					HeadSize = -1.0
					NoseDepth = 1.0
					MouthDepth = 1.0
					NoseBridge = 1.0
					BrowDepth = 1.0
					EyeDepth = 1.0
					LowerLipThickness = 1.0
					LipShape = 0.9
					MouthAngle = 0.0
					UpperLipThickness = 0.8
					EyePosition = 1.0
					EyeScale = 0.267
					EyeDistance = 0.05
					CheekboneShape = 0.5
					JawScale = 1.0
					ChinWidth = 0.6
					FaceFullness = 1.0
					BrowPosition = 0.8
					ChinSize = 0.7
					EyebrowDistance = 0.7
					EyebrowSize = 0.5
					NoseTip = 1.0
					NoseAngle = 0.8
					MouthPosition = 0.4
					NoseSize = 0.7
					NosePosition = 0.1
				}
			}
			cas_physique = {
				desc_id = MalePhysique
				additional_bone_transforms = [
					{
						bone = Bone_Head
						scaling = {
							value = (0.1, 0.1, 0.1)
						}
					}
					{
						bone = Bone_Neck
						scaling = {
							value = (0.3, 0.3, 0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Chest
						scaling = {
							value = (0.0, 0.5, 0.35000002)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, 0.0)
							no_propagate
						}
					}
					{
						bone = Bone_Collar_R
						scaling = {
							value = (0.2, 0.2, 0.2)
							no_propagate
						}
						translation = {
							value = (0.0, -0.05, 0.0)
						}
					}
					{
						bone = Bone_Collar_L
						scaling = {
							value = (0.2, 0.2, 0.2)
							no_propagate
						}
						translation = {
							value = (0.0, -0.05, 0.0)
						}
					}
					{
						bone = Bone_Pelvis
						scaling = {
							value = (0.0, 0.5, 0.65000004)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, 0.0)
							no_propagate
						}
					}
					{
						bone = Bone_Split_Ass_L
						scaling = {
							value = (0.0, 0.6, 0.8)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, 0.0)
							no_propagate
						}
					}
					{
						bone = Bone_Split_Ass_R
						scaling = {
							value = (0.0, 0.6, 0.8)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, 0.0)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_R
						scaling = {
							value = (0.0, 1.0, 0.65000004)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_R
						scaling = {
							value = (0.0, 1.0, 0.8)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_R
						scaling = {
							value = (0.0, 0.8, 0.5)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_L
						scaling = {
							value = (0.0, 1.0, 0.65000004)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_L
						scaling = {
							value = (0.0, 1.0, 0.8)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_L
						scaling = {
							value = (0.0, 0.8, 0.5)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_L
						scaling = {
							value = (0.0, 0.7, 0.35000002)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_R
						scaling = {
							value = (0.0, 0.7, 0.35000002)
							no_propagate
						}
					}
					{
						bone = Bone_Palm_L
						scaling = {
							value = (0.1, 0.1, 0.1)
						}
					}
					{
						bone = Bone_Palm_R
						scaling = {
							value = (0.1, 0.1, 0.1)
						}
					}
					{
						bone = Bone_Twist_Thigh_R
						translation = {
							value = (0.0, 0.0, -0.027499998)
							no_propagate
						}
						scaling = {
							value = (0.0, 0.45000002, 0.35000002)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_L
						translation = {
							value = (0.0, 0.0, 0.027499998)
							no_propagate
						}
						scaling = {
							value = (0.0, 0.45000002, 0.35000002)
							no_propagate
						}
					}
					{
						bone = Bone_Ankle_L
						scaling = {
							value = (-0.1, -0.1, -0.1)
						}
					}
					{
						bone = Bone_Ankle_R
						scaling = {
							value = (-0.1, -0.1, -0.1)
						}
					}
					{
						bone = Bone_Stomach_Lower
						scaling = {
							value = (0.0, 0.5, 0.65000004)
							no_propagate
						}
						translation = {
							value = (-0.0, 0.0, 0.0)
						}
					}
					{
						bone = Bone_Stomach_Upper
						scaling = {
							value = (0.0, 0.5, 0.65000004)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, 0.0)
							no_propagate
						}
					}
				]
			}
			CAS_Eyes = {
				desc_id = CAR_Green_Eyes
			}
			CAS_Male_Hair = {
				desc_id = m_bmtl_hair_lars
			}
			CAS_Male_Hat = {
				desc_id = none
			}
			CAS_Male_Torso = {
				desc_id = m_bmtl_torso_lars
			}
			CAS_Male_Legs = {
				desc_id = m_bmtl_legs_lars
			}
			CAS_Male_Shoes = {
				desc_id = m_bmtl_shoes_lars
			}
			CAS_Male_Acc_Left = {
				desc_id = m_bmtl_acc_llars
			}
			CAS_Male_Acc_Right = {
				desc_id = M_Bmtl_Acc_RLars
			}
			CAS_Male_Acc_Face = {
				desc_id = none
			}
			CAS_Male_Acc_Ears = {
				desc_id = none
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body07
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style7_d_01.dds`
						material = Guitar_Body_Style_07_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style7_LD_01.img`
								flags = 4
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style7_DTL_01.img`
								flags = 4
								color = grey_3guitar
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck03
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_03.dds`
						material = Guitar_Neck3_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Skulls_D_21.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head09
				chosen_materials = {
					material1 = grey_3guitar
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock09_d_01.dds`
						material = Guitar_Head_09_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock09_LD_01.img`
								flags = 4
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock09_DTL_01.img`
								flags = 4
								color = grey_2guitar
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = GTR_Body7_PickG03
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
				chosen_materials = {
					material1 = grey_3guitar
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR7_Knob_Type4_03
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type1_Blk_3
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Prediktor
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\guitars\gtr_predikt_body01_d_mls.dds`
						material = Guitar_Body_Prediktor_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style16_LD_17.img`
								flags = 4
								color = teal_4
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style16_DTL_02.img`
								color = teal_3
								flags = 4
								a = 50
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon025.img`
								color = teal_2
								a = 20
								x_trans = 35
								x_scale = 25
								y_scale = 65
								flags = 3
								y_trans = 2
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal001.img`
								color = teal_2
								a = 100
								x_trans = -36
								y_trans = 35
								x_scale = 20
								y_scale = 35
								rot = 33
								flags = 3
								x_skew = 0
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BNEbony
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_nek_ebony01.dds`
						material = CAB_Neck_Ebony_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_barbwire.img`
								flags = 4
								color = teal_4
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH5A
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_bh5a.dds`
						material = CAB_Head_BH5A_Headstock
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH5A_WTfinish.img`
								flags = 4
								color = teal_3
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH5A_DTL_01.img`
								flags = 4
								color = Black_1guitar
							}
						]
					}
				]
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Bass_Pickguards = {
				desc_id = none
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickups_EMG03
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB1A
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Bass_Knobs = {
				desc_id = CAB_Knob_Phunq05
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Bass_Highway = {
				desc_id = LarsHighway
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_ds_48.img`
								flags = 32
								color = teal_3
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal001.img`
								color = Black_1guitar
								x_trans = -2
								x_scale = 60
								y_scale = 75
								flags = 3
								y_trans = 16
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal001.img`
								color = Black_1guitar
								x_trans = -20
								x_scale = 45
								y_scale = 55
								flags = 3
								y_trans = -10
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal001.img`
								color = Black_1guitar
								x_trans = 16
								x_scale = 35
								y_scale = 45
								flags = 3
								y_trans = -7
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal001.img`
								color = Black_1guitar
								x_trans = -2
								y_trans = -23
								x_scale = 25
								y_scale = 26
								flags = 3
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal001.img`
								color = Black_1guitar
								x_trans = 24
								y_trans = -23
								y_scale = 16
								flags = 3
								x_scale = 15
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal001.img`
								color = Black_1guitar
								x_trans = -23
								y_trans = -33
								x_scale = 15
								flags = 3
								y_scale = 16
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal001.img`
								color = Black_1guitar
								y_trans = -35
								x_scale = 10
								y_scale = 11
								flags = 3
								x_trans = 4
							}
						]
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_70.img`
								a = 55
								rot = 1750
								flags = 4
								color = teal_2
							}
						]
					}
				]
			}
			CAS_Mic = {
				desc_id = `Classic Rock`
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = LarsHighway
			}
			CAS_Guitar_Highway = {
				desc_id = LarsHighway
			}
			CAS_Drums_Highway = {
				desc_id = LarsHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = Intro_Scary
			}
			CAS_Male_Win_Anim = {
				desc_id = Win_Scary
			}
			CAS_Male_Lose_Anim = {
				desc_id = Lose_AngryAtCrowd
			}
		}
	}
	{
		name = Midori
		fullname = qs("\LMidori")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Midori
		blurb = qs("Hailing from Japan, Midori is both sweet and sour.  Classically trained on violin and performing at the age of 3, Midori dropped the bow, grabbed the axe, and never looked back.  School's out forever!")
		appearance = {
			CAS_Body = {
				desc_id = GH4_CAR_Midori
				bones = {
					NosePosition = 0.38200003
					NoseBridge = 0.6
					NoseSize = 0.3
					MouthPosition = 0.1
					MouthScale = 0.120000005
					LipShape = 0.0
					UpperLipThickness = 0.875
					LowerLipThickness = 0.447
					MouthAngle = 0.56700003
					MouthDepth = 0.4
					CheekboneShape = 0.8
					EyePosition = -0.3
					EyeDepth = 1.0
					EyebrowShape = 1.0
					EyebrowSize = 0.5
					EyebrowAngle = 0.3
					BrowPosition = 0.3
					BrowDepth = 0.0
					JawScale = 0.9
					ChinSize = 0.0
					FaceFullness = 0.4
					NoseWidth = 0.3
					NoseAngle = 0.4
					NoseTip = 0.9
					NoseDepth = 0.265
					EyeDistance = 0.2
					EyeScale = 0.5
					EyeShape = 0.7
					EyeAngle = 0.4
				}
				chosen_materials = {
					skin = yellow_orange_5
				}
			}
			cas_physique = {
				desc_id = FemalePhysique
				additional_bone_transforms = [
					{
						bone = Control_Root
						scaling = {
							value = (-0.075, -0.075, -0.075)
						}
					}
					{
						bone = Bone_Head
						scaling = {
							value = (0.05, 0.05, 0.05)
						}
					}
				]
			}
			CAS_Eyes = {
				desc_id = CAR_Green_Eyes
			}
			CAS_Female_Hair = {
				desc_id = F_Pop_Hair_Midori
			}
			CAS_Female_Torso = {
				desc_id = F_Pop_Torso_Midori
			}
			CAS_Female_Legs = {
				desc_id = f_pop_legs_skirt
			}
			CAS_Female_Shoes = {
				desc_id = F_Pop_Shoe_Platforms
			}
			CAS_Female_Acc_Left = {
				desc_id = none
			}
			CAS_Female_Acc_Right = {
				desc_id = none
			}
			CAS_Female_Acc_Ears = {
				desc_id = none
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body15
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style15_d_01.dds`
						material = Guitar_Body_Style_15_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style15_LD_01.img`
								flags = 4
								color = grey_5guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style15_DTL_03.img`
								flags = 4
								color = violet_1
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck02
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_02.dds`
						material = Guitar_Neck2_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Stars_D_02.img`
								flags = 4
								color = violet_5
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head10
				chosen_materials = {
					material1 = orange_4
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock10_d_01.dds`
						material = Guitar_Head_10_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock10_LD_01.img`
								flags = 4
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock10_DTL_01.img`
								flags = 4
								color = violet_3
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
				chosen_materials = {
					material1 = orange_4
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR15_Knob_Type3_03
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type2_04
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Bandera
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\guitars\gtr_body_style17_d.dds`
						material = Guitar_Body_Bandera_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Gtr_Body_Style17001_D.img`
								flags = 4
								color = green_2guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style17_DTL_Fout.img`
								flags = 4
								color = green_3guitar
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BFretlss02
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_nekf_ebony01.dds`
						material = CAB_Neck_Fretless02_neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_seahorse_F.img`
								flags = 4
								color = purple_blue_3
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BHPhnq01
				chosen_materials = {
					material1 = purple_blue_3
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_bh8a.dds`
						material = CAB_Head_Phunquie01_Headstock
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH8A_WTfinish.img`
								flags = 4
								color = purple_blue_1
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH8A_DTL_03.img`
								flags = 4
								color = green_3guitar
							}
						]
					}
				]
			}
			CAS_Bass_Pickguards = {
				desc_id = none
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_Bumbl_pickup_A2
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB2A
				chosen_materials = {
					material1 = purple_blue_3
				}
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_phunq10
				chosen_materials = {
					material1 = purple_blue_2
				}
			}
			CAS_Bass_Strings = {
				desc_id = Power_Slinky
			}
			CAS_Bass_Highway = {
				desc_id = AxelHighway
			}
			CAS_Drums = {
				desc_id = basic
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = MidoriHighway
			}
			CAS_Guitar_Highway = {
				desc_id = MidoriHighway
			}
			CAS_Drums_Highway = {
				desc_id = MidoriHighway
			}
			CAS_Female_Intro_Anim = {
				desc_id = Intro_Hype
			}
			CAS_Female_Win_Anim = {
				desc_id = Win_Hype
			}
			CAS_Female_Lose_Anim = {
				desc_id = Lose_AngryAtCrowd
			}
		}
	}
	{
		name = Clive
		fullname = qs("\LClive Winston")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Clive
		blurb = qs("Inspired by the 70's British guitar gods, Clive Winston is a precious session commodity - everything he plays on goes gold.  He's a virtuoso with a unique guitar style, and knows just how far you can bend a string before it breaks.")
		appearance = {
			CAS_Body = {
				desc_id = GH4_CAR_Male
				random_weight = 15.0
				bones = {
					NoseAngle = 0.9
					NoseTip = 0.6
					NoseSize = 0.5
					NosePosition = 0.405
					FaceFullness = 0.0
					JawScale = 0.5
					ChinWidth = -1.5
					CheekboneShape = 0.0
					MouthScale = 0.2
					EyeScale = 0.0
				}
			}
			cas_physique = {
				desc_id = MalePhysique
				additional_bone_transforms = [
					{
						bone = Bone_Head
						scaling = {
							value = (0.01, 0.01, 0.01)
							no_propagate
						}
					}
					{
						bone = Bone_Neck
						scaling = {
							value = (0.0, -0.5, -0.5)
							no_propagate
						}
					}
					{
						bone = Bone_Chest
						scaling = {
							value = (0.0, -0.2, -0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Upper
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Lower
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Pelvis
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_R
						scaling = {
							value = (0.0, -0.3, -0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_R
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_R
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_R
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Wrist_R
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_L
						scaling = {
							value = (0.0, -0.3, -0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_L
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_L
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_L
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Wrist_L
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Collar_R
						translation = {
							value = (0.0, 0.02, 0.0)
						}
					}
					{
						bone = Bone_Collar_L
						translation = {
							value = (0.0, 0.02, 0.0)
						}
					}
					{
						bone = Bone_Twist_Thigh_R
						scaling = {
							value = (0.0, -0.4, -0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_L
						scaling = {
							value = (0.0, -0.4, -0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_R
						scaling = {
							value = (0.0, -0.4, -0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_L
						scaling = {
							value = (0.0, -0.4, -0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Knee_R
						scaling = {
							value = (0.0, -0.15, -0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Knee_L
						scaling = {
							value = (0.0, -0.15, -0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Ankle_L
						scaling = {
							value = (0.0, 0.1, 0.2)
						}
					}
					{
						bone = Bone_Ankle_R
						scaling = {
							value = (0.0, 0.1, 0.2)
						}
					}
				]
			}
			CAS_Male_Hair = {
				desc_id = M_Clsc_Hair_Country
			}
			CAS_Male_Hat = {
				desc_id = none
			}
			CAS_Male_Facial_Hair = {
				desc_id = M_Clsc_Fhair_Stache04
				set_materials = {
					material1 = {
						diffuse = [
							51
							16
							5
						]
					}
				}
			}
			CAS_Male_Torso = {
				desc_id = m_clsc_torso_clrdjakt
				chosen_materials = {
					material1 = red_orange_3
				}
			}
			CAS_Male_Legs = {
				desc_id = M_Clsc_Legs_whtbells
				chosen_materials = {
					material1 = grey_1
				}
			}
			CAS_Male_Shoes = {
				desc_id = m_clsc_shoe_whtboot
			}
			CAS_Male_Acc_Face = {
				desc_id = M_Clsc_Glasses_Round2
			}
			CAS_Male_Acc_Ears = {
				desc_id = none
			}
			CAS_Male_Acc_Left = {
				desc_id = none
			}
			CAS_Male_Acc_Right = {
				desc_id = none
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body05
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style5_d_01.dds`
						material = Guitar_Body_Style_05_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style5_LD_41.img`
								flags = 4
								color = orange_4
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style5_DTL_03.img`
								color = red_1
								flags = 4
								a = 65
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck02
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head99
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
				chosen_materials = {
					material1 = grey_4guitar
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR4_Knob_Type10_04
				chosen_materials = {
					material1 = grey_4guitar
				}
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type4_02
				chosen_materials = {
					material1 = red_1
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_SixTease
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Bass\cab_body_sixtease01_d_mls.dds`
						material = CAB_Body_SixTease_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_SixteaseWHT_D_MLS.img`
								flags = 4
								color = yellow_2guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_6tease_DTL_Tri.img`
								color = violet_1
								flags = 4
								a = 90
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BNEbony
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_nek_ebony01.dds`
						material = CAB_Neck_Ebony_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_Moon.img`
								flags = 4
								color = blue_4
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_Grumbel01
				chosen_materials = {
					material1 = orange_3
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_grumbel01.dds`
						material = CAB_Head_Grumbel01_Headstock
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_Grumbel01_WTfinish.img`
								color = orange_2
								flags = 4
								a = 100
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_Grumbel01_DTL_04.img`
								flags = 4
								color = violet_2
							}
						]
					}
				]
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PG_6TZ004
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_pg_6tz008.dds`
						material = CAB_PG_6TZ008_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_PG_6TZ004C.img`
								flags = 4
								color = yellow_5
							}
						]
					}
				]
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickups_EMG02
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB3A
				chosen_materials = {
					material1 = orange_3
				}
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knobs_6tz01
				chosen_materials = {
					material1 = yellow_1guitar
				}
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/bass_skin_ds_01.img`
								flags = 4
								color = blue_4
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_002.img`
								a = 100
								x_scale = 120
								y_scale = 120
								flags = 3
								color = red_orange_2
							}
							{
								font = fontgrid_text_a8
								text = 'W'
								flags = 3
								x_trans = -31
							}
							{
								font = fontgrid_text_a8
								text = 'I'
								x_trans = -22
								flags = 3
								y_scale = 125
							}
							{
								font = fontgrid_text_a8
								text = 'N'
								color = grey_5
								flags = 3
								x_trans = -14
							}
							{
								font = fontgrid_text_a8
								text = 'S'
								x_trans = 0
								x_scale = 175
								flags = 3
								y_scale = 185
							}
							{
								font = fontgrid_text_a8
								text = 'T'
								flags = 3
								x_trans = 12
							}
							{
								font = fontgrid_text_a8
								text = 'O'
								y_scale = 125
								flags = 3
								x_trans = 21
							}
							{
								font = fontgrid_text_a8
								text = 'N'
								flags = 3
								x_trans = 30
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_elemental006.img`
								flags = 3
								a = 65
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_rm_03.img`
								flags = 32
								color = yellow_4guitar
							}
						]
					}
				]
			}
			CAS_Bass_Highway = {
				desc_id = WinstonHighway
			}
			CAS_Guitar_Highway = {
				desc_id = WinstonHighway
			}
			CAS_Drums_Highway = {
				desc_id = WinstonHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = Intro_Generic3
			}
			CAS_Male_Win_Anim = {
				desc_id = Win_Generic2
			}
			CAS_Male_Lose_Anim = {
				desc_id = Lose_Generic
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
		}
	}
	{
		name = Pandora
		fullname = qs("\LPandora")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Pandora
		blurb = qs("The girl scouts didn't want her, the ballet school couldn't handle her, but the world can't get enough of her.  The Dark Princess of Rock is back better than ever.")
		appearance = {
			CAS_Body = {
				desc_id = GH4_CAR_Pandora
				chosen_materials = {
					skin = skin_pandora
				}
				bones = {
					EyeAngle = 0.7
					EyeShape = 0.733
					EyeScale = 0.0
					NoseSize = 0.0
					MouthScale = 0.3
					LowerLipThickness = 0.147
					LipShape = 0.7
					CheekboneShape = 0.3
				}
			}
			cas_physique = {
				desc_id = FemalePhysique
				bones = {
					Physique = -1.0
				}
			}
			CAS_Female_Hair = {
				desc_id = f_goth_hair_updo
			}
			CAS_Female_Hat = {
				desc_id = none
			}
			CAS_Female_Torso = {
				desc_id = f_goth_torso_frillybodice
			}
			CAS_Female_Legs = {
				desc_id = f_goth_legs_frillydress
			}
			CAS_Female_Shoes = {
				desc_id = f_goth_shoes_maryjanes
			}
			CAS_Female_Acc_Left = {
				desc_id = none
			}
			CAS_Female_Acc_Right = {
				desc_id = none
			}
			CAS_Female_Acc_Face = {
				desc_id = none
			}
			CAS_Female_Acc_Ears = {
				desc_id = none
			}
			CAS_Bass_Highway = {
				desc_id = JudyHighway
			}
			CAS_Guitar_Highway = {
				desc_id = JudyHighway
			}
			CAS_Drums_Highway = {
				desc_id = JudyHighway
			}
			CAS_Female_Intro_Anim = {
				desc_id = Intro_Hype
			}
			CAS_Female_Win_Anim = {
				desc_id = Win_Hype
			}
			CAS_Female_Lose_Anim = {
				desc_id = Lose_AngryAtCrowd
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body08
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style8_d_01.dds`
						material = Guitar_Body_Style_08_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style8_LD_23.img`
								flags = 4
								color = grey_2guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style8_DTL_04.img`
								flags = 4
								color = purple_blue_1
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck03
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_03.dds`
						material = Guitar_Neck3_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Diamonds_D_16.img`
								flags = 4
								color = grey_2guitar
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head08
				chosen_materials = {
					material1 = Black_1guitar
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock08_d_01.dds`
						material = Guitar_Head_08_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock08_LD_01.img`
								flags = 4
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock08_DTL_04.img`
								flags = 4
								color = purple_blue_1
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
				chosen_materials = {
					material1 = Black_1guitar
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR8_Knob_Type1_03
				chosen_materials = {
					material1 = purple_blue_1
				}
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type5_03
				chosen_materials = {
					material1 = purple_blue_1
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Bandera
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\guitars\gtr_body_style17_d.dds`
						material = Guitar_Body_Bandera_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style17_LD_WalC.img`
								color = violet_5
								flags = 4
								a = 55
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style17_DTL_Tri.img`
								color = violet_2
								flags = 4
								a = 95
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeOutline_001.img`
								color = violet_3
								x_trans = -32
								y_trans = 22
								x_scale = 40
								y_scale = 200
								flags = 3
								a = 20
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_008.img`
								a = 40
								x_trans = -5
								y_trans = 14
								x_scale = 30
								y_scale = 70
								flags = 3
								color = violet_1
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_014.img`
								color = Black_1guitar
								x_trans = -33
								y_trans = -28
								x_scale = 20
								y_scale = 50
								flags = 3
								a = 45
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics102.img`
								x_trans = -32
								x_scale = 15
								y_scale = 35
								flags = 3
								y_trans = 15
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics035.img`
								x_trans = 21
								y_trans = -4
								x_scale = 30
								y_scale = 45
								flags = 3
								color = violet_2
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BNEbony
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_nek_ebony01.dds`
						material = CAB_Neck_Ebony_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_ornate2.img`
								flags = 4
								color = violet_1
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BHPhnq01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_bh8a.dds`
						material = CAB_Head_Phunquie01_Headstock
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH8A_WTfinish.img`
								flags = 4
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH8A_DTL_01.img`
								flags = 4
								color = violet_2
							}
						]
					}
				]
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Bass_Pickguards = {
				desc_id = none
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_Jbass_pickup_01
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_Hack
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_phunq02
				chosen_materials = {
					material1 = violet_1
				}
			}
			CAS_Bass_Strings = {
				desc_id = Power_Slinky
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_ds_41.img`
								flags = 32
								color = navy_2
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/bass_skin_ds_15.img`
								flags = 4
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_009.img`
								color = violet_1
								x_scale = 150
								flags = 3
								y_scale = 155
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_034.img`
								color = Black_1guitar
								flags = 3
								a = 15
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_013.img`
								color = violet_2
								x_trans = -2
								y_trans = 2
								x_scale = 40
								y_scale = 40
								rot = 250
								flags = 3
								a = 25
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_013.img`
								color = violet_2
								a = 25
								x_trans = -20
								x_scale = 40
								y_scale = 40
								rot = 250
								flags = 3
								y_trans = -24
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_013.img`
								color = violet_2
								x_trans = 26
								y_trans = -21
								x_scale = 40
								y_scale = 40
								rot = 250
								flags = 3
								a = 65
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_013.img`
								color = violet_2
								a = 25
								x_trans = -29
								y_trans = 2
								x_scale = 40
								y_scale = 40
								flags = 3
								rot = 5883
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_013.img`
								color = violet_2
								a = 25
								x_trans = -2
								x_scale = 40
								y_scale = 40
								rot = 250
								flags = 3
								y_trans = 21
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics050.img`
								y_trans = -4
								x_scale = 80
								y_scale = 80
								flags = 3
								x_trans = 2
							}
						]
					}
				]
			}
			CAS_Drums_Sticks = {
				desc_id = Drumsticks1
			}
			CAS_Mic = {
				desc_id = `Black Metal`
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
		}
	}
	{
		name = Eddie
		fullname = qs("\LEddie Knox")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Eddie
		blurb = qs("When he's not cruisin' in his '55 hot rod, Knox brings his hard-working rock to any stage he sets foot on. A real road dog, Knox claims that as long as he's got his hollow body and his pomade, he ain't too far from home.")
		appearance = {
			CAS_Body = {
				desc_id = GH4_CAR_Eddie
				bones = {
					FaceFullness = 0.33200002
					JawScale = 0.5
					ChinSize = 1.0
					CheekboneShape = 0.0
					EarTip = 0.2
					EarAngle = 0.44799998
					NoseAngle = 1.0
					NoseWidth = 0.0
					MouthScale = 0.1
					EyeDepth = 0.367
					EyeScale = 0.1
					EyeShape = 1.0
					HeadSize = -1.0
				}
			}
			cas_physique = {
				desc_id = MalePhysique
				bones = {
					Height = 1.0
				}
				additional_bone_transforms = [
					{
						bone = Bone_Chest
						scaling = {
							value = (0.075, 0.075, 0.075)
							no_propagate
						}
					}
					{
						bone = Bone_Collar_R
						scaling = {
							value = (0.2, 0.1, 0.1)
							no_propagate
						}
						translation = {
							value = (0.0, -0.015, 0.0)
						}
					}
					{
						bone = Bone_Collar_L
						scaling = {
							value = (0.2, 0.1, 0.1)
							no_propagate
						}
						translation = {
							value = (0.0, -0.015, 0.0)
						}
					}
					{
						bone = Bone_Pelvis
						scaling = {
							value = (-0.1, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Upper
						scaling = {
							value = (0.0, 0.0, 0.0)
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_R
						scaling = {
							value = (0.0, 0.2, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_R
						scaling = {
							value = (0.0, 0.2, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_R
						scaling = {
							value = (0.0, 0.2, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_L
						scaling = {
							value = (0.0, 0.2, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_L
						scaling = {
							value = (0.0, 0.2, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_L
						scaling = {
							value = (0.0, 0.2, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_R
						translation = {
							value = (0.0, 0.0, 0.0)
							no_propagate
						}
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_L
						translation = {
							value = (0.0, 0.0, 0.0)
							no_propagate
						}
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_R
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_L
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Knee_R
						scaling = {
							value = (0.0, -0.15, -0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Knee_L
						scaling = {
							value = (0.0, -0.15, -0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Lower
						scaling = {
							value = (-0.2, -0.2, -0.2)
							no_propagate
						}
						translation = {
							value = (-0.01, 0.0, 0.0)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Upper
						scaling = {
							value = (-0.1, -0.1, -0.1)
							no_propagate
						}
					}
				]
			}
			CAS_Male_Hair = {
				desc_id = M_Pop_Hair_EddieKnox
			}
			CAS_Male_Hat = {
				desc_id = none
			}
			CAS_Male_Facial_Hair = {
				desc_id = none
			}
			CAS_Male_Torso = {
				desc_id = m_punk_torso_bowling
				chosen_materials = {
					material2 = grey_5
				}
			}
			CAS_Male_Legs = {
				desc_id = M_Punk_Legs_Cuff
			}
			CAS_Male_Shoes = {
				desc_id = M_Punk_Shoes_Johnny1
			}
			CAS_Male_Acc_Left = {
				desc_id = m_pop_acc_lband
				chosen_materials = {
					material1 = grey_1
				}
			}
			CAS_Male_Acc_Right = {
				desc_id = M_Punk_Acc_RChain
			}
			CAS_Male_Acc_Face = {
				desc_id = none
			}
			CAS_Male_Acc_Ears = {
				desc_id = none
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body01
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds`
						material = Guitar_Neck1_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							}
						]
					}
				]
			}
			CAS_Bass_Highway = {
				desc_id = CaseyHighway
			}
			CAS_Guitar_Highway = {
				desc_id = CaseyHighway
			}
			CAS_Drums_Highway = {
				desc_id = CaseyHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = Intro_Elvis
			}
			CAS_Male_Win_Anim = {
				desc_id = Win_Elvis
			}
			CAS_Male_Lose_Anim = {
				desc_id = Lose_kick
			}
			CAS_Guitar_Body = {
				desc_id = Guitar_Body12
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style12_d_01.dds`
						material = Guitar_Body_Style_12_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style12_LD_01.img`
								color = red_1
								flags = 4
								a = 75
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style12_DTL_01.img`
								color = yellow_orange_4
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck02
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_02.dds`
						material = Guitar_Neck2_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Notes_D_09.img`
								flags = 4
								color = blue_5
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head13
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock13_d_01.dds`
						material = Guitar_Head_13_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock13_LD_01.img`
								color = red_2
								flags = 4
								a = 75
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock13_DTL_01.img`
								flags = 4
								color = yellow_orange_4
							}
						]
					}
				]
				chosen_materials = {
					material1 = orange_5
				}
			}
			CAS_Guitar_Pickguards = {
				desc_id = GTR_Body12_PickG01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body12_d_01.dds`
						material = Pckgrd_Body12_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body12_LD_04.img`
								flags = 4
								color = red_orange_1
							}
						]
					}
				]
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR12_Hardware_01
				chosen_materials = {
					material1 = orange_5
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR12_Knob_Type6_04
				chosen_materials = {
					material1 = grey_4guitar
				}
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type3b_02
				chosen_materials = {
					material1 = Black_1guitar
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Grmbl_A
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Bass\cab_body_grumbel01_d_mls.dds`
						material = CAB_Body_Grmbl_A_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_grumbel_WalC_GK.img`
								flags = 4
								color = grey_2guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_Grumbel_DTL_Pin.img`
								flags = 4
								color = yellow_3guitar
							}
						]
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_elemental003.img`
								x_trans = -23
								y_trans = 2
								y_skew = -9
								x_scale = 125
								y_scale = 70
								rot = 1500
								flags = 3
								x_skew = -36
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_StNek_Ebony
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_nek_ebony01.dds`
						material = CAB_StNek_Ebony_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_tribal.img`
								flags = 4
								color = red_orange_3
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH7A
				chosen_materials = {
					material1 = orange_3
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_bh7a.dds`
						material = CAB_Head_BH7A_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH7A_WTfinish.img`
								flags = 4
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH7A_DTL_05.img`
								flags = 4
								color = red_orange_2
							}
						]
					}
				]
			}
			CAS_Bass_Pickguards = {
				desc_id = none
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_JP_Pickup_A
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB3A
				chosen_materials = {
					material1 = orange_3
				}
			}
			CAS_Bass_Knobs = {
				desc_id = CAB_Knob_Grmbl09
				chosen_materials = {
					material1 = orange_3
				}
			}
			CAS_Bass_Highway = {
				desc_id = AxelHighway
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_ds_55.img`
								flags = 32
								color = yellow_4guitar
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics010.img`
								color = yellow_4guitar
								x_scale = 95
								y_scale = 90
								flags = 3
								rot = 5683
							}
						]
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/bass_skin_ds_11.img`
								flags = 4
								color = yellow_4guitar
							}
						]
					}
				]
			}
			CAS_Drums_Sticks = {
				desc_id = Drumsticks1
			}
			CAS_Mic = {
				desc_id = mic_standard
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
		}
	}
	{
		name = Drummer
		fullname = qs("\LMatty Cannz")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Drummer
		blurb = qs("Matty's a man of action and motion who has never wasted time saying in words what he can pound out on any one thing with any other thing. Drumming comes naturally, and beating and breaking things are a way of life. If you can beat it, he can beat it in time... better than you.")
		appearance = {
			genre = `Classic Rock`
			CAS_Body = {
				desc_id = GH4_CAR_Male
				bones = {
					EyeScale = 0.3
					EyeAngle = 0.29
					NosePosition = 0.0
					NoseWidth = 0.7
					EyePosition = -0.0
					EyeDepth = 1.0
					MouthPosition = 0.004
					MouthScale = 0.9
					MouthAngle = 0.5
					UpperLipThickness = 0.0
					LowerLipThickness = 0.0
					FaceFullness = 0.73199993
					EyebrowAngle = 0.08
					ChinSize = 1.0
					ChinWidth = 0.0
					JawScale = 0.2
					CheekboneShape = 1.0
					EarAngle = 0.44799998
					EarTip = 0.3
					EyeShape = 0.24200001
					EyeDistance = -0.83
					EyebrowShape = 0.0
					NoseAngle = 0.9
					NoseTip = 0.252
					BrowPosition = 0.004
					EyebrowDistance = 0.6
					BrowDepth = 0.0
					NoseBridge = 0.33900002
					NoseDepth = 0.565
				}
				additional_bone_transforms = [
					{
						bone = Bone_Head
					}
					{
						bone = Bone_Scale_Cheek_R
						translation = {
							value = (-0.001, 0.001, 0.0)
						}
					}
					{
						bone = Bone_Scale_Cheek_L
						translation = {
							value = (0.001, 0.001, 0.0)
						}
					}
					{
						bone = Bone_Trans_Chin
						translation = {
							value = (0.0, 0.005, 0.0)
						}
					}
					{
						bone = Bone_Trans_Mouth
						scaling = {
							value = (0.155, 0.0, 0.0)
						}
					}
					{
						bone = Bone_Scale_Nostrils
						translation = {
							value = (0.0, 0.003, 0.0)
						}
					}
				]
			}
			cas_physique = {
				desc_id = MalePhysique
				bones = {
					Height = 1.0
				}
				additional_bone_transforms = [
					{
						bone = Control_Root
						scaling = {
							value = (-0.01, -0.01, -0.01)
						}
					}
					{
						bone = Bone_Pelvis
						scaling = {
							value = (0.0, 0.1, 0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Lower
						scaling = {
							value = (0.1, 0.1, 0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Upper
						scaling = {
							value = (0.1, 0.2, 0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Neck
						scaling = {
							value = (0.0, 0.4, 0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Head
						scaling = {
							value = (0.05, 0.05, 0.05)
						}
					}
					{
						bone = Bone_Chest
						scaling = {
							value = (0.1, 0.3, 0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Collar_R
						scaling = {
							value = (0.0, 0.15, 0.3)
							no_propagate
						}
						rotation = {
							value = (0.0, -6.0, 0.0)
							no_propagate
						}
						translation = {
							value = (0.0, -0.05, 0.0)
						}
					}
					{
						bone = Bone_Collar_L
						scaling = {
							value = (0.0, 0.15, 0.3)
							no_propagate
						}
						rotation = {
							value = (0.0, 6.0, 0.0)
							no_propagate
						}
						translation = {
							value = (0.0, -0.05, 0.0)
						}
					}
					{
						bone = Bone_Bicep_R
						scaling = {
							value = (0.0, -0.3, -0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_R
						scaling = {
							value = (0.0, 0.3, 0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Wrist_R
						scaling = {
							value = (0.0, 0.5, 0.5)
							no_propagate
						}
					}
					{
						bone = Bone_Palm_R
						scaling = {
							value = (0.0, 0.25, 0.25)
						}
					}
					{
						bone = Bone_Hand_Thumb_Base_R
						scaling = {
							value = (0.0, 0.3, 0.3)
						}
					}
					{
						bone = Bone_Hand_Index_Base_R
						scaling = {
							value = (0.0, 0.3, 0.3)
						}
					}
					{
						bone = Bone_Hand_Middle_Base_R
						scaling = {
							value = (0.0, 0.3, 0.3)
						}
					}
					{
						bone = Bone_Hand_Ring_Base_R
						scaling = {
							value = (0.0, 0.3, 0.3)
						}
					}
					{
						bone = Bone_Hand_Pinkey_Base_R
						scaling = {
							value = (0.0, 0.3, 0.3)
						}
					}
					{
						bone = Bone_Bicep_L
						scaling = {
							value = (0.0, -0.3, -0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_L
						scaling = {
							value = (0.0, 0.3, 0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Wrist_L
						scaling = {
							value = (0.0, 0.5, 0.5)
							no_propagate
						}
					}
					{
						bone = Bone_Palm_L
						scaling = {
							value = (0.0, 0.25, 0.25)
						}
					}
					{
						bone = Bone_Hand_Thumb_Base_L
						scaling = {
							value = (0.0, 0.3, 0.3)
						}
					}
					{
						bone = Bone_Hand_Index_Base_L
						scaling = {
							value = (0.0, 0.3, 0.3)
						}
					}
					{
						bone = Bone_Hand_Middle_Base_L
						scaling = {
							value = (0.0, 0.3, 0.3)
						}
					}
					{
						bone = Bone_Hand_Ring_Base_L
						scaling = {
							value = (0.0, 0.3, 0.3)
						}
					}
					{
						bone = Bone_Hand_Pinkey_Base_L
						scaling = {
							value = (0.0, 0.3, 0.3)
						}
					}
					{
						bone = Bone_Split_Ass_R
						translation = {
							value = (0.0, 0.0, 0.05)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_R
						translation = {
							value = (0.0, 0.0, -0.025)
							no_propagate
						}
					}
					{
						bone = Bone_Split_Ass_L
						translation = {
							value = (0.0, 0.0, -0.05)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_L
						translation = {
							value = (0.0, 0.0, 0.025)
							no_propagate
						}
					}
				]
			}
			CAS_Male_Hair = {
				desc_id = M_Rock_Hair_Drummer
			}
			CAS_Male_Torso = {
				desc_id = M_Rock_Torso_RipShirt
			}
			CAS_Male_Legs = {
				desc_id = M_Clsc_Legs_Ltjeans
			}
			CAS_Male_Shoes = {
				desc_id = M_Punk_Shoe_BuckleB
			}
			CAS_Male_Acc_Left = {
				desc_id = M_Metl_Acc_LZakk
			}
			CAS_Male_Acc_Right = {
				desc_id = M_Metl_Acc_RZakk
			}
			CAS_Male_Acc_Ears = {
				desc_id = none
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body01
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds`
						material = Guitar_Neck1_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head01
			}
			CAS_Guitar_Pickguards = {
				desc_id = Guitar_PickG01
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR_Knobs_Style_01a
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickups_Style_01a
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Prediktor
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\guitars\gtr_predikt_body01_d_mls.dds`
						material = Guitar_Body_Prediktor_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style16_LD_Zeb.img`
								flags = 4
								color = red_orange_4
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style16_DTL_01b.img`
								flags = 4
								color = yellow_4guitar
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BNEbony
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_nek_ebony01.dds`
						material = CAB_Neck_Ebony_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/cab_nek_lyrmpl_blk_wht.img`
								flags = 4
								color = blue_4
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH1A
				chosen_materials = {
					material1 = yellow_4guitar
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds`
						material = CAB_Head_BH2A_Headstock
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_Gedulus_WTfinish.img`
								color = orange_1
								flags = 4
								a = 100
							}
						]
					}
				]
			}
			CAS_Bass_Pickguards = {
				desc_id = none
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_PBass_Pickup_A
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB2A
				chosen_materials = {
					material1 = yellow_4guitar
				}
			}
			CAS_Bass_Knobs = {
				desc_id = CAB_Knob_Phunq05
				chosen_materials = {
					material1 = yellow_4guitar
				}
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/Drumshell_DS_02.img`
								flags = 32
								color = red_orange_4
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						layers = [
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_023.img`
								flags = 3
								color = blue_5
							}
							{
								texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_001.img`
								x_trans = 6
								x_scale = 50
								y_scale = 50
								flags = 3
								color = violet_1
							}
						]
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_47.img`
								flags = 4
								color = violet_1
							}
						]
					}
				]
			}
			CAS_Mic = {
				desc_id = `Classic Rock`
			}
			CAS_Mic_Stand = {
				desc_id = `Classic Rock`
			}
			CAS_Bass_Highway = {
				desc_id = AxelHighway
			}
			CAS_Guitar_Highway = {
				desc_id = AxelHighway
			}
			CAS_Drums_Highway = {
				desc_id = AxelHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = Intro_Waving
			}
			CAS_Male_Win_Anim = {
				desc_id = Win_Generic2
			}
			CAS_Male_Lose_Anim = {
				desc_id = Lose_Generic
			}
		}
	}
	{
		name = bassist
		fullname = qs("\LShirley Crowley")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Bassist
		blurb = qs("Shirley's not a simple gal. She likes fancy teas and espresso, aromatherapy, hydrotherapy , meditation and wild flowers. She also likes to do all this with Lacuna Coil blasting a hole in her ear drums. She's a tough gal with a soft side, but don't take that for weakness. As one of the most motivated and talented people in her field, she's currently recording her debut solo album in which she plays all the instruments. Shirts with skulls are also awesome.")
		appearance = {
			genre = `Classic Rock`
			CAS_Body = {
				desc_id = GH4_CAR_Female
				random_weight = 2.0
				cap = [
					{
						base_tex = `tex/models/Characters/Global/Global_Blank_Head_dnc.dds`
						material = CAR_female_head
						Cas_1
						post_layer = [
							{
								texture = `tex/models/Characters/Layers/CAR/Female/Makeup/CAR_female_Makeup02.img`
								flags = 4
							}
							{
								texture = `tex/models/Characters/Layers/CAR/female/Makeup/CAR_female_Makeup_lip03.img`
								flags = 4
								color = red_3
							}
						]
					}
				]
				chosen_materials = {
					skin = grey_5
				}
				bones = {
					MouthScale = 0.2
					LipShape = 0.1
					UpperLipThickness = 0.4
					MouthPosition = 0.8
					EyeScale = 0.9
					EyeShape = 0.8
					EyeAngle = 0.9
					EyePosition = -0.3
					NoseSize = 0.2
					NosePosition = 0.8
					MouthDepth = 0.0
					FaceFullness = 0.5
					EyebrowShape = 1.0
					EyebrowAngle = 0.0
					HeadSize = 1.0
				}
			}
			cas_physique = {
				desc_id = FemalePhysique
				bones = {
					Physique = -1.0
					Height = -1.0
				}
				additional_bone_transforms = [
					{
						bone = Control_Root
						scaling = {
							value = (-0.05, -0.05, -0.05)
						}
					}
					{
						bone = Bone_Head
						scaling = {
							value = (0.025, 0.025, 0.025)
						}
					}
					{
						bone = Bone_Chest
						scaling = {
							value = (0.02, 0.02, 0.15)
							no_propagate
						}
						translation = {
							value = (-0.015, 0.0, 0.0)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Upper
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_R
						scaling = {
							value = (0.05, 0.05, 0.05)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, -0.015)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_L
						scaling = {
							value = (0.05, 0.05, 0.05)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, 0.015)
							no_propagate
						}
					}
					{
						bone = Bone_Palm_R
						scaling = {
							value = (0.15, 0.15, 0.15)
						}
					}
					{
						bone = Bone_Palm_L
						scaling = {
							value = (0.15, 0.15, 0.15)
						}
					}
					{
						bone = Bone_Forearm_R
						scaling = {
							value = (0.0, 0.15, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_L
						scaling = {
							value = (0.0, 0.15, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Collar_R
						scaling = {
							value = (0.1, 0.1, 0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Collar_L
						scaling = {
							value = (0.1, 0.1, 0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Pelvis
						scaling = {
							value = (0.15, 0.25, 0.25)
							no_propagate
						}
						translation = {
							value = (0.015, 0.0, 0.0)
							no_propagate
						}
					}
					{
						bone = Bone_Split_Ass_R
						scaling = {
							value = (0.0, 0.15, 0.15)
							no_propagate
						}
						translation = {
							value = (0.015, 0.0, 0.0)
							no_propagate
						}
					}
					{
						bone = Bone_Split_Ass_L
						scaling = {
							value = (0.0, 0.15, 0.15)
							no_propagate
						}
						translation = {
							value = (0.015, 0.0, 0.0)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_R
						scaling = {
							value = (0.0, 0.1, 0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_L
						scaling = {
							value = (0.0, 0.1, 0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_R
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_L
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Toe_L
						scaling = {
							value = (0.1, 0.0, 0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Toe_R
						scaling = {
							value = (0.1, 0.0, 0.2)
							no_propagate
						}
					}
				]
			}
			CAS_Eyes = {
				desc_id = CAR_Brown_Eyes
			}
			CAS_Female_Hair = {
				desc_id = F_Rock_Hair_Bass
			}
			CAS_Female_Hat = {
				desc_id = none
			}
			CAS_Female_Facial_Hair = {
				desc_id = none
			}
			CAS_Female_Torso = {
				desc_id = f_rock_torso_bass
			}
			CAS_Female_Legs = {
				desc_id = f_rock_legs_jeans
			}
			CAS_Female_Shoes = {
				desc_id = F_Rock_Shoe_Canvas
			}
			CAS_Female_Acc_Left = {
				desc_id = f_punk_acc_lbands
			}
			CAS_Female_Acc_Right = {
				desc_id = none
			}
			CAS_Female_Acc_Face = {
				desc_id = none
			}
			CAS_Female_Acc_Ears = {
				desc_id = none
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body06
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style6_d_01.dds`
						material = Guitar_Body_Style_06_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style6_LD_62.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck02
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_02.dds`
						material = Guitar_Neck2_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Dragons_D_18.img`
								flags = 4
								color = blue_5
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head13
				chosen_materials = {
					material1 = orange_4
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock13_d_01.dds`
						material = Guitar_Head_13_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock13_LD_01.img`
								color = teal_1
								flags = 4
								a = 55
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock13_DTL_01.img`
								color = teal_2
								flags = 4
								a = 50
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
				chosen_materials = {
					material1 = orange_4
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR6_Knob_Type1_03
				chosen_materials = {
					material1 = yellow_green_1guitar
				}
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type2_03
				chosen_materials = {
					material1 = yellow_green_1guitar
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Chunder01
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Bass\cab_body_chndra_d_mls.dds`
						material = CAB_Body_Chunder01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_Chndr_WHT_D_MLS.img`
								flags = 4
								color = Black_1guitar
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01_maple_d_mls.dds`
						material = CAB_NECK_BN1A_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/cab_nek_lyrmpl_blk_wht.img`
								flags = 4
								color = grey_1
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6B
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PGuardChndr04
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_JP_Pickup_A
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB3A
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_chndr09
				chosen_materials = {
					material1 = orange_3
				}
			}
			CAS_Drums = {
				desc_id = basic
				CAS_Mic = {
					desc_id = `Black Metal`
				}
				CAS_Mic_Stand = {
					desc_id = `Classic Rock`
				}
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_ds_28.img`
								flags = 32
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/bass_skin_ds_81.img`
								flags = 4
								rot = 700
							}
						]
					}
				]
			}
			CAS_Drums_Sticks = {
				desc_id = Drumsticks1
			}
			CAS_Mic = {
				desc_id = mic_standard
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = JudyHighway
			}
			CAS_Guitar_Highway = {
				desc_id = JudyHighway
			}
			CAS_Drums_Highway = {
				desc_id = JudyHighway
			}
			CAS_Female_Win_Anim = {
				desc_id = Win_Waving
			}
			CAS_Female_Lose_Anim = {
				desc_id = Lose_Generic
			}
			CAS_Female_Intro_Anim = {
				desc_id = Intro_Generic1
			}
		}
	}
	{
		name = Guitarist
		fullname = qs("\LMarcus Fretshreder")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Guitarist
		blurb = qs("Born Marcus Fjorn Frettenshredder to Swedish Hippies, Marcus moved to the US as a young kid. His journey into the world of rock 'n' roll came as a vision to him after a fall from a tree - As he lay there, he saw spirited visions of stages and exotic locations, followed by the image of a white and gold glowing guitar. Since then he's studied the more metaphysical and hypernatural aspects of music and guitar playing in particular. It's been his life's pursuit to attain the status of Rock God.")
		appearance = {
			genre = `Classic Rock`
			CAS_Body = {
				desc_id = GH4_CAR_Male
				bones = {
					EyeShape = 1.0
					EyeAngle = 0.9
					EyebrowDistance = 0.2
					BrowPosition = 0.2
					EyebrowAngle = 0.0
					EyebrowShape = 0.0
					BrowDepth = 0.0
					CheekboneShape = 0.0
					JawScale = 0.5
					FaceFullness = 0.4
				}
			}
			cas_physique = {
				desc_id = MalePhysique
				bones = {
				}
				additional_bone_transforms = [
					{
						bone = Control_Root
						scaling = {
							value = (0.01, 0.01, 0.01)
						}
					}
					{
						bone = Bone_Pelvis
						scaling = {
							value = (0.0, 0.1, 0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Upper
						scaling = {
							value = (0.0, 0.025, 0.025)
							no_propagate
						}
					}
					{
						bone = Bone_Neck
						scaling = {
							value = (0.0, 0.25, 0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Head
						scaling = {
							value = (0.0, 0.0, 0.0)
							no_propagate
						}
					}
					{
						bone = Bone_Chest
						scaling = {
							value = (0.0, 0.25, 0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Collar_R
						scaling = {
							value = (0.0, 0.15, 0.3)
							no_propagate
						}
						translation = {
							value = (0.0, -0.02, 0.0)
						}
					}
					{
						bone = Bone_Collar_L
						scaling = {
							value = (0.0, 0.15, 0.3)
							no_propagate
						}
						translation = {
							value = (0.0, -0.02, 0.0)
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_R
						scaling = {
							value = (0.0, 0.05, 0.05)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_L
						scaling = {
							value = (0.0, 0.05, 0.05)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_R
						scaling = {
							value = (0.0, 0.05, 0.05)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_L
						scaling = {
							value = (0.0, 0.05, 0.05)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_R
						scaling = {
							value = (0.0, -0.3, -0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_R
						scaling = {
							value = (0.0, 0.3, 0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Wrist_R
						scaling = {
							value = (0.0, 0.4, 0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Palm_R
						scaling = {
							value = (0.0, 0.2, 0.2)
						}
					}
					{
						bone = Bone_Hand_Thumb_Base_R
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Index_Base_R
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Middle_Base_R
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Ring_Base_R
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Pinkey_Base_R
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Bicep_L
						scaling = {
							value = (0.0, -0.3, -0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_L
						scaling = {
							value = (0.0, 0.3, 0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Wrist_L
						scaling = {
							value = (0.0, 0.4, 0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Palm_L
						scaling = {
							value = (0.0, 0.2, 0.2)
						}
					}
					{
						bone = Bone_Hand_Thumb_Base_L
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Index_Base_L
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Middle_Base_L
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Ring_Base_L
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Pinkey_Base_L
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Split_Ass_R
						translation = {
							value = (0.0, 0.0, 0.03)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_R
						scaling = {
							value = (0.0, -0.35000002, -0.35000002)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, -0.035)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_R
						scaling = {
							value = (0.0, -0.5, -0.5)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, -0.01)
							no_propagate
						}
					}
					{
						bone = Bone_Toe_R
						scaling = {
							value = (0.4, 0.4, 0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Split_Ass_L
						translation = {
							value = (0.0, 0.0, -0.03)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_L
						scaling = {
							value = (0.0, -0.35000002, -0.35000002)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, 0.035)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_L
						scaling = {
							value = (0.0, -0.5, -0.5)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, 0.01)
							no_propagate
						}
					}
					{
						bone = Bone_Toe_L
						scaling = {
							value = (0.4, 0.4, 0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Lower
						scaling = {
							value = (0.0, -0.2, 0.01)
							no_propagate
						}
					}
				]
			}
			CAS_Male_Hair = {
				desc_id = M_Rock_Hair_Guitarist
			}
			CAS_Male_Torso = {
				desc_id = M_Rock_Torso_RolledSlvs
			}
			CAS_Male_Legs = {
				desc_id = M_Bmtl_Legs_Plate
			}
			CAS_Male_Shoes = {
				desc_id = M_Punk_Shoe_BuckleB
			}
			CAS_Male_Acc_Left = {
				desc_id = M_Metl_Acc_LZakk
			}
			CAS_Male_Acc_Right = {
				desc_id = M_Bmtl_Acc_RLars
			}
			CAS_Male_Acc_Ears = {
				desc_id = none
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body09
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style9_d_01.dds`
						material = Guitar_Body_Style_09_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style9_LD_01.img`
								flags = 4
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style9_DTL_01.img`
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck03
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_03.dds`
						material = Guitar_Neck3_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Tribal_D_17.img`
								flags = 4
								color = grey_2guitar
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head10
				chosen_materials = {
					material1 = grey_4guitar
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock10_d_01.dds`
						material = Guitar_Head_10_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock10_LD_01.img`
								flags = 4
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock10_DTL_01.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
				chosen_materials = {
					material1 = grey_4guitar
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR9_Knob_Type2_03
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type1_Blk_3
				chosen_materials = {
					material1 = grey_4guitar
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Prediktor
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\guitars\gtr_predikt_body01_d_mls.dds`
						material = Guitar_Body_Prediktor_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style16_LD_11.img`
								flags = 4
								color = purple_blue_2
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style16_DTL_04.img`
								color = blue_3
								flags = 4
								a = 65
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BNEbony
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_nek_ebony01.dds`
						material = CAB_Neck_Ebony_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_Lyr_Axess.img`
								flags = 4
								color = yellow_4guitar
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_Guppy
				chosen_materials = {
					material1 = orange_3
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_guppy_d.dds`
						material = CAB_Head_Guppy_Headstock
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_Guppy_WT.img`
								flags = 4
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_guppy_DTL_01.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Bass_Pickguards = {
				desc_id = none
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_Pickups_BP1A
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB1A
				chosen_materials = {
					material1 = orange_3
				}
			}
			CAS_Bass_Knobs = {
				desc_id = CAB_Knob_Phunq08
				chosen_materials = {
					material1 = orange_4
				}
			}
			CAS_Bass_Strings = {
				desc_id = Hybrid_SLINKY
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_ds_40.img`
								flags = 32
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_56.img`
								flags = 4
								color = navy_4
							}
						]
					}
				]
			}
			CAS_Mic = {
				desc_id = `Black Metal`
			}
			CAS_Mic_Stand = {
				desc_id = `Classic Rock`
			}
			CAS_Bass_Highway = {
				desc_id = CaseyHighway
			}
			CAS_Guitar_Highway = {
				desc_id = CaseyHighway
			}
			CAS_Drums_Highway = {
				desc_id = CaseyHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = Intro_Waving
			}
			CAS_Male_Win_Anim = {
				desc_id = Win_Waving
			}
			CAS_Male_Lose_Anim = {
				desc_id = Lose_Fearful
			}
		}
	}
	{
		name = singer
		fullname = qs("\LRiki Lee")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Singer
		blurb = qs("Formerly known as child star Riki Lee Landslide, Riki's foray into the world of music began as a 10 year old boy in the family singing group, The Dodsons. After a few hard years which he often refers to as his 'Black Years' Riki Lee Landslide emerged simply as Riki Lee, with a style all his own and a voice that could shatter glass... at will.")
		appearance = {
			genre = `Classic Rock`
			CAS_Body = {
				desc_id = GH4_CAR_Male
				bones = {
					CheekboneShape = 1.0
					NoseSize = 0.1
					NoseAngle = 0.87700003
					LipShape = 0.9
					LowerLipThickness = 0.0
					UpperLipThickness = 0.5
					MouthScale = 0.8
					NosePosition = 0.7
					MouthPosition = 0.7
					FaceFullness = 0.1
					JawScale = 0.1
					ChinSize = 1.0
				}
			}
			cas_physique = {
				desc_id = MalePhysique
				bones = {
					Height = 0.1
					Physique = -1.0
				}
				additional_bone_transforms = [
					{
						bone = Bone_Head
						scaling = {
							value = (0.1, 0.1, 0.1)
						}
					}
					{
						bone = Bone_Stomach_Lower
						scaling = {
							value = (-0.05, -0.05, -0.05)
							stop_propagate
						}
					}
					{
						bone = Bone_Pelvis
						scaling = {
							value = (-0.25, -0.15, -0.125)
							no_propagate
						}
					}
					{
						bone = Bone_Split_Ass_R
						translation = {
							value = (0.0, 0.0, 0.01)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_R
						scaling = {
							value = (0.0, -0.45000002, -0.45000002)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, -0.025)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_R
						scaling = {
							value = (0.0, -0.5, -0.5)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, -0.01)
							no_propagate
						}
					}
					{
						bone = Bone_Knee_R
						scaling = {
							value = (0.0, -0.25, -0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Toe_R
						scaling = {
							value = (0.4, 0.4, 0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Split_Ass_L
						translation = {
							value = (0.0, 0.0, -0.01)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Thigh_L
						scaling = {
							value = (0.0, -0.45000002, -0.45000002)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, 0.025)
							no_propagate
						}
					}
					{
						bone = Bone_Thigh_L
						scaling = {
							value = (0.0, -0.5, -0.5)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, 0.01)
							no_propagate
						}
					}
					{
						bone = Bone_Knee_L
						scaling = {
							value = (0.0, -0.25, -0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Toe_L
						scaling = {
							value = (0.4, 0.4, 0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Palm_R
						scaling = {
							value = (0.01, 0.01, 0.01)
							stop_propagate
						}
					}
					{
						bone = Bone_Hand_Thumb_Base_R
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Index_Base_R
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Middle_Base_R
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Ring_Base_R
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Pinkey_Base_R
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Palm_L
						scaling = {
							value = (0.01, 0.01, 0.01)
							stop_propagate
						}
					}
					{
						bone = Bone_Hand_Thumb_Base_L
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Index_Base_L
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Middle_Base_L
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Ring_Base_L
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Hand_Pinkey_Base_L
						scaling = {
							value = (0.0, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Collar_L
						scaling = {
							value = (0.15, 0.15, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Collar_R
						scaling = {
							value = (0.15, 0.15, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_R
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_L
						scaling = {
							value = (0.0, -0.2, -0.2)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_L
						scaling = {
							value = (0.0, -0.3, -0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Mid_R
						scaling = {
							value = (0.0, -0.3, -0.3)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_L
						scaling = {
							value = (0.0, -0.4, -0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_R
						scaling = {
							value = (0.0, -0.4, -0.4)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_L
						scaling = {
							value = (0.0, -0.25, -0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_R
						scaling = {
							value = (0.0, -0.25, -0.25)
							no_propagate
						}
					}
				]
			}
			CAS_Male_Hair = {
				desc_id = M_Glam_Hair_Seagull
			}
			CAS_Male_Hat = {
				desc_id = none
			}
			CAS_Male_Facial_Hair = {
				desc_id = none
			}
			CAS_Male_Torso = {
				desc_id = M_Torso_TasselVest
			}
			CAS_Male_Legs = {
				desc_id = m_glam_legs_spandex
			}
			CAS_Male_Shoes = {
				desc_id = M_Clsc_shoe_drkboot
			}
			CAS_Male_Acc_Left = {
				desc_id = m_pop_acc_lband
			}
			CAS_Male_Acc_Right = {
				desc_id = M_Rock_Acc_RBracelet
			}
			CAS_Male_Acc_Face = {
				desc_id = M_Clsc_Glasses_Avtr
			}
			CAS_Male_Acc_Ears = {
				desc_id = none
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body11
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style11_d_01.dds`
						material = Guitar_Body_Style_11_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_LD_13.img`
								flags = 4
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_DTL_03.img`
								color = red_1
								flags = 4
								a = 40
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck04
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_04.dds`
						material = Guitar_Neck4_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Shards_D_12.img`
								flags = 4
								color = blue_5
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head12
				chosen_materials = {
					material1 = grey_3guitar
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds`
						material = Guitar_Head_12_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock12_LD_01.img`
								flags = 4
								color = red_orange_2
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock12_DTL_01.img`
								flags = 4
								color = Black_1guitar
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
				chosen_materials = {
					material1 = grey_3guitar
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR11_Knob_Type4_03
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type1_Blktan_2
				chosen_materials = {
					material1 = orange_2
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_B2A
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Bass\cab_body_b1a_d_mls.dds`
						material = CAB_Body_Arcos_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_ARKS_Pale.img`
								color = red_1
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1B
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01b_rosewood_d_mls.dds`
						material = CAB_NECK_BN1B_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_Blocks2.img`
								flags = 4
								color = blue_4
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH4A
				chosen_materials = {
					material1 = orange_4
				}
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PickG_BP1
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_pickg_dark001.dds`
						material = CAB_PickG_Unos03_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_PGard_Splatter01.img`
								flags = 4
								color = blue_4
							}
						]
					}
				]
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_Bumbl_pickup_A2
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB1A
				chosen_materials = {
					material1 = orange_4
				}
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_unos03
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_ds_09.img`
								flags = 32
								color = red_1
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_46.img`
								flags = 4
								color = grey_5guitar
							}
						]
					}
				]
			}
			CAS_Drums_Sticks = {
				desc_id = Drumsticks1
			}
			CAS_Mic = {
				desc_id = `Classic Rock`
			}
			CAS_Mic_Stand = {
				desc_id = `Classic Rock`
			}
			CAS_Bass_Highway = {
				desc_id = IzzyHighway
			}
			CAS_Guitar_Highway = {
				desc_id = IzzyHighway
			}
			CAS_Drums_Highway = {
				desc_id = IzzyHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = Intro_Pretentious
			}
			CAS_Male_Win_Anim = {
				desc_id = Win_Pretentious
			}
			CAS_Male_Lose_Anim = {
				desc_id = Lose_Pretentious
			}
		}
	}
]
Preset_Musician_Profiles_Locked = [
	{
		name = NickArnold
		fullname = qs("\LNick")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_BestBuyKid
		blurb = qs("Nick")
		locked
		appearance = {
			genre = `Glam Rock`
			CAS_Body = {
				desc_id = `BestBuy Kid`
				random_weight = 1.5
				bones = {
					ChinWidth = 0.0
					ChinSize = 0.5
					CheekboneShape = 1.0
					EarAngle = 0.3
					HeadSize = 0.2
					NoseWidth = 0.621
					NoseAngle = 0.1
					NoseDepth = 0.365
					NosePosition = 0.505
					NoseBridge = 0.4
					NoseBroken = 0.5
					LipShape = 0.2
					UpperLipThickness = 0.775
					LowerLipThickness = 0.2
					EyePosition = -0.967
					EyeDepth = 1.0
					EyeScale = 0.4
					EyebrowShape = 1.0
					EyebrowSize = 0.0
					EyebrowAngle = 0.5
					BrowPosition = 0.5
					BrowDepth = 0.0
					MouthAngle = 0.2
					EyeAngle = 0.7
					EyeShape = 0.9
					MouthScale = 0.067
					FaceFullness = 0.0
					JawScale = -0.0
					NoseTip = 0.8
				}
			}
			cas_physique = {
				desc_id = MalePhysique
				additional_bone_transforms = [
					{
						bone = Bone_Twist_Bicep_Top_L
						scaling = {
							value = (-0.1, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_R
						scaling = {
							value = (-0.1, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_L
						scaling = {
							value = (-0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_R
						scaling = {
							value = (-0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_R
						scaling = {
							value = (0.0, -0.25, -0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_L
						scaling = {
							value = (0.0, -0.25, -0.25)
							no_propagate
						}
					}
				]
				bones = {
					Height = -1.0
				}
			}
			CAS_Eyes = {
				desc_id = CAR_Blue_Eyes
			}
			CAS_Male_Hair = {
				desc_id = M_BBKid_Hair_Beanie
			}
			CAS_Male_Hat = {
				desc_id = none
			}
			CAS_Male_Facial_Hair = {
				desc_id = none
			}
			CAS_Male_Torso = {
				desc_id = M_Torso_TShirt
			}
			CAS_Male_Legs = {
				desc_id = M_Pop_Legs_Pants
			}
			CAS_Male_Shoes = {
				desc_id = m_rock_shoe_skulls
			}
			CAS_Male_Acc_Left = {
				desc_id = none
			}
			CAS_Male_Acc_Right = {
				desc_id = none
			}
			CAS_Male_Acc_Face = {
				desc_id = none
			}
			CAS_Male_Acc_Ears = {
				desc_id = none
			}
			CAS_Male_Age = {
				desc_id = CAR_Male_Teen
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body03
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style3_d_01.dds`
						material = Guitar_Body_Style_03_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style3_LD_12.img`
								flags = 4
								color = blue_3
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck03
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_03.dds`
						material = Guitar_Neck3_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Block2_D_26.img`
								flags = 4
								color = grey_4guitar
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head12
				chosen_materials = {
					material1 = blue_5
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds`
						material = Guitar_Head_12_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock12_LD_01.img`
								flags = 4
								color = navy_1
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock12_DTL_01.img`
								flags = 4
								color = Black_1guitar
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
				chosen_materials = {
					material1 = blue_5
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR3_Knob_Type2_03
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type2_04
				chosen_materials = {
					material1 = navy_1
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Chunder01
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Bass\cab_body_chndra_d_mls.dds`
						material = CAB_Body_Chunder01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_Chndr_LD_12.img`
								flags = 4
								color = blue_3
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_chndr_DTL_Fin.img`
								flags = 4
								color = navy_1
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1B
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01b_rosewood_d_mls.dds`
						material = CAB_NECK_BN1B_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_stars.img`
								flags = 4
								color = navy_4
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6A
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_bh6a.dds`
						material = CAB_Head_Chunder02_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH6A_WTfinish.img`
								flags = 4
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH6A_DTL_05.img`
								flags = 4
								color = blue_4
							}
						]
					}
				]
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Bass_Pickguards = {
				desc_id = none
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_JP_Pickup_B
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB1A
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_chndr01
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/drumshell_ds_46.img`
								flags = 32
								color = yellow_3guitar
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_09.img`
								flags = 4
								color = yellow_2guitar
							}
						]
					}
				]
			}
			CAS_Drums_Sticks = {
				desc_id = Drumsticks1
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = AxelHighway
			}
			CAS_Guitar_Highway = {
				desc_id = AxelHighway
			}
			CAS_Drums_Highway = {
				desc_id = AxelHighway
			}
		}
	}
	{
		name = `Aaron Steele`
		fullname = qs("\LAaron Steele")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Steele
		blurb = qs("Aaron Steele")
		locked
		appearance = {
			genre = Rock
			CAS_Body = {
				desc_id = AaronSteele
				chosen_materials = {
					skin = skin_tan_2
				}
				bones = {
					NoseSize = 0.3
					NoseWidth = 0.621
					EyeScale = 0.267
					HeadSize = 0.2
					ChinWidth = 0.2
					JawScale = -2.0
					FaceFullness = 0.2
					CheekboneShape = -4.0
					EarAngle = 0.5
					NoseAngle = 0.077
					NoseDepth = 0.5
					NosePosition = 0.0
					NoseBridge = 0.294
					NoseTip = 0.9
					EyeAngle = 0.7
					EyeShape = 0.9
					EyeDepth = 1.0
					EyeDistance = -0.7
					EyebrowShape = 0.6
					EyebrowDistance = 0.0
					BrowDepth = 0.0
					MouthPosition = 0.4
					MouthScale = -0.0
					MouthAngle = 0.7
					LowerLipThickness = 0.5
					LipShape = 0.5
					ChinSize = 0.0
				}
			}
			cas_physique = {
				desc_id = MalePhysique
				additional_bone_transforms = [
					{
						bone = Control_Root
						scaling = {
							value = (-0.07, -0.07, -0.07)
						}
					}
					{
						bone = Bone_Head
						scaling = {
							value = (0.02, 0.02, 0.02)
							no_propagate
						}
					}
					{
						bone = Bone_Collar_L
						translation = {
							value = (0.0, 0.02, 0.0)
						}
					}
					{
						bone = Bone_Collar_R
						translation = {
							value = (0.0, 0.02, 0.0)
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_L
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Twist_Bicep_Top_R
						scaling = {
							value = (0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_L
						scaling = {
							value = (-0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Bicep_R
						scaling = {
							value = (-0.0, -0.1, -0.1)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_R
						scaling = {
							value = (0.0, -0.25, -0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Forearm_L
						scaling = {
							value = (0.0, -0.25, -0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Chest
						scaling = {
							value = (0.0, 0.0, 0.0)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Upper
						scaling = {
							value = (0.0, 0.0, 0.15)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Lower
						scaling = {
							value = (0.0, 0.0, 0.0)
							no_propagate
						}
					}
				]
			}
			CAS_Male_Hair = {
				desc_id = M_Clsc_Hair_Contest
				chosen_materials = {
					material1 = yellow_orange_1
				}
			}
			CAS_Male_Hat = {
				desc_id = none
			}
			CAS_Male_Facial_Hair = {
				desc_id = none
			}
			CAS_Male_Torso = {
				desc_id = M_Torso_Layered
				chosen_materials = {
					material1 = red_1
					material2 = grey_5
				}
			}
			CAS_Male_Legs = {
				desc_id = M_Pop_Legs_Jeans
				chosen_materials = {
					material1 = grey_3
					material2 = grey_3
				}
			}
			CAS_Male_Shoes = {
				desc_id = m_punk_shoe_canvas
			}
			CAS_Male_Acc_Left = {
				desc_id = none
			}
			CAS_Male_Acc_Right = {
				desc_id = none
			}
			CAS_Male_Acc_Face = {
				desc_id = none
			}
			CAS_Male_Acc_Ears = {
				desc_id = none
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body01
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds`
						material = Guitar_Neck1_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head01
			}
			CAS_Guitar_Pickguards = {
				desc_id = Guitar_PickG01
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR_Knobs_Style_01a
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickups_Style_01a
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_B2A
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6A
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PickG_E1
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB3A
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_chndr05
			}
			CAS_Drums = {
				desc_id = basic
			}
			CAS_Mic = {
				desc_id = mic_standard
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Highway = {
				desc_id = AxelHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = Intro_Hype
			}
			CAS_Male_Win_Anim = {
				desc_id = Win_KungFu
			}
			CAS_Male_Lose_Anim = {
				desc_id = Lose_kick
			}
		}
	}
	{
		name = rina
		fullname = qs("\LRina")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Rina
		blurb = qs("Rina")
		locked
		appearance = {
			genre = Rock
			CAS_Body = {
				desc_id = GH4_CAR_Female
				chosen_materials = {
					skin = skin_tan_1
				}
				cap = [
					{
						base_tex = `tex/models/Characters/Global/Global_Blank_Head_dnc.dds`
						material = CAR_female_head
						Cas_1
						post_layer = [
							{
								texture = `tex/models/Characters/Layers/CAR/Female/Makeup/CAR_female_Makeup03.img`
								flags = 4
							}
						]
					}
				]
				bones = {
					EyePosition = -0.433
					HeadSize = 0.167
					FaceFullness = 0.5
					NoseBridge = 0.7
					NoseTip = 0.9
					MouthPosition = 0.3
					NosePosition = -3.0
					EyeAngle = 0.69
					EyeScale = 0.0
					EyeDistance = 0.48600003
					EyeShape = 0.6
					UpperLipThickness = 0.675
					LowerLipThickness = 0.54700005
					NoseAngle = 0.3
					EyebrowShape = 0.6
					MouthScale = -0.5
					ChinSize = 0.2
					ChinWidth = 0.8
					NoseWidth = -2.0
					MouthDepth = -0.5
					NoseSize = 0.4
					NoseDepth = 0.25
				}
			}
			cas_physique = {
				desc_id = FemalePhysique
				additional_bone_transforms = [
					{
						bone = Control_Root
						scaling = {
							value = (-0.075, -0.075, -0.075)
						}
					}
					{
						bone = Bone_Chest
						scaling = {
							value = (0.0, 0.0, 0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Upper
						scaling = {
							value = (0.0, 0.0, 0.25)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Lower
						scaling = {
							value = (0.0, 0.0, 0.2)
							no_propagate
						}
					}
				]
			}
			CAS_Eyes = {
				desc_id = CAR_Brown_Eyes
			}
			CAS_Female_Hair = {
				desc_id = F_Metl_Hair_Pony
				chosen_materials = {
					material1 = orange_1
				}
			}
			CAS_Female_Hat = {
				desc_id = none
			}
			CAS_Female_Facial_Hair = {
				desc_id = none
			}
			CAS_Female_Torso = {
				desc_id = F_Rock_Torso_Bass_Contest
				chosen_materials = {
					material1 = blue_4
				}
			}
			CAS_Female_Legs = {
				desc_id = f_rock_legs_jeans
				chosen_materials = {
					material1 = grey_3
				}
			}
			CAS_Female_Shoes = {
				desc_id = f_pop_shoes_hayleyshoes
			}
			CAS_Female_Acc_Left = {
				desc_id = F_Rock_Acc_LChainStud
			}
			CAS_Female_Acc_Right = {
				desc_id = F_Goth_Acc_RGlove
				chosen_materials = {
					material1 = grey_1
				}
			}
			CAS_Female_Acc_Face = {
				desc_id = none
			}
			CAS_Female_Acc_Ears = {
				desc_id = none
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body01
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds`
						material = Guitar_Neck1_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head01
			}
			CAS_Guitar_Pickguards = {
				desc_id = Guitar_PickG01
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR_Knobs_Style_01a
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickups_Style_01a
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Bandera
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\guitars\gtr_body_style17_d.dds`
						material = Guitar_Body_Bandera_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style17_LD_MplSb.img`
								color = red_orange_3
								flags = 4
								a = 50
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style17_DTL_Tri.img`
								color = teal_1
								flags = 4
								a = 80
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BNEbony
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_nek_ebony01.dds`
						material = CAB_Neck_Ebony_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_Arrows01.img`
								color = yellow_green_2guitar
								flags = 4
								a = 45
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH4A
				chosen_materials = {
					material1 = red_orange_5
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_flay001.dds`
						material = CAB_Head_BH1A_Headstock
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_Flay001_WTfinish.img`
								flags = 4
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAB/All_Clear02.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_Phnq_PG002
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_Jbass_pickup_01
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB1A
				chosen_materials = {
					material1 = red_orange_5
				}
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_phunq06
			}
			CAS_Bass_Strings = {
				desc_id = Regular_Slinky
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/Drumshell_DS_32.img`
								flags = 32
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/bass_skin_ds_78.img`
							}
						]
					}
				]
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/Drumshell_DS_32.img`
								flags = 32
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/characters/layers/cadrm/bass_skin_ds_78.img`
							}
						]
					}
				]
			}
			CAS_Drums_Sticks = {
				desc_id = Drumsticks1
			}
			CAS_Mic = {
				desc_id = mic_standard
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Highway = {
				desc_id = JudyHighway
			}
		}
	}
	{
		name = GH4_CAR_Winner
		fullname = qs("\LJohnny Viper Thorne")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_GH4_CAR_Winner
		blurb = qs("22 year old Johnny Viper Thorne hails from Wiltshire England and was chosen by Motörhead's Lemmy & Neversoft's Joel as Winner of the 2008 Rock Icon Contest.  An avid Guitar Hero fan, this postman by day, rockstar by night joins the veteran Guitar Heroes and intends to make an impact!")
		locked
		appearance = {
			genre = Rock
			CAS_Body = {
				desc_id = GH4_CAR_Winner
				chosen_materials = {
					skin = skin_tan_2
				}
				bones = {
					LowerLipThickness = 0.1
					CheekboneShape = 0.7
					NoseWidth = 1.0
					FaceFullness = 0.6
					HeadSize = -0.2
					EyeDistance = 0.07
					EyebrowDistance = 0.61
					EyebrowShape = 0.2
					EyebrowAngle = 0.0
					EyeAngle = 0.9
					MouthAngle = 0.3
					MouthDepth = 0.6
					NosePosition = 0.0
					NoseTip = 0.9
					NoseSize = 0.3
					MouthPosition = 0.3
					BrowPosition = 1.0
					NoseAngle = 0.1
					NoseDepth = 0.765
					EyebrowSize = 0.4
					JawScale = 0.2
					ChinSize = 0.6
					ChinWidth = 0.3
					NoseBridge = 0.9
					EyeScale = 0.7
					MouthScale = 0.3
					EyeShape = 0.342
				}
			}
			cas_physique = {
				desc_id = MalePhysique
				bones = {
					Height = 0.2
				}
				additional_bone_transforms = [
				]
			}
			CAS_Eyes = {
				desc_id = CAR_Brown_Eyes
			}
			CAS_Male_Hair = {
				desc_id = m_rock_hair_slash
			}
			CAS_Male_Hat = {
				desc_id = none
			}
			CAS_Male_Facial_Hair = {
				desc_id = none
			}
			CAS_Male_Torso = {
				desc_id = m_metl_torso_lthrjkt
				chosen_materials = {
					material2 = grey_2
					material1 = grey_2
				}
			}
			CAS_Male_Legs = {
				desc_id = m_glam_legs_spandex
			}
			CAS_Male_Shoes = {
				desc_id = M_Punk_Shoe_BuckleB
			}
			CAS_Male_Acc_Left = {
				desc_id = m_pop_acc_lband
			}
			CAS_Male_Acc_Right = {
				desc_id = M_Metl_Acc_RZakk
			}
			CAS_Male_Acc_Face = {
				desc_id = none
			}
			CAS_Male_Acc_Ears = {
				desc_id = none
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body04
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style4_d_01.dds`
						material = Guitar_Body_Style_04_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style4_LD_01.img`
								flags = 4
								color = orange_3
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style4_DTL_81.img`
								flags = 4
								color = Black_1guitar
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck03
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_03.dds`
						material = Guitar_Neck3_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Wedge2_D_11.img`
								flags = 4
								color = grey_2guitar
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head05
				chosen_materials = {
					material1 = orange_4
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds`
						material = Guitar_Head_05_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock05_LD_01.img`
								flags = 4
								color = orange_1
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock05_Dtl_06.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
				chosen_materials = {
					material1 = orange_4
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR4_Knob_Type7_04
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type1_Blk_3
				chosen_materials = {
					material1 = Black_1guitar
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_B2A
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Bass\cab_body_b1a_d_mls.dds`
						material = CAB_Body_Arcos_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_ARKS_Pale.img`
								color = Black_1guitar
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Body_Unos_Ray02.img`
								flags = 4
								color = orange_2
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1B
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01b_rosewood_d_mls.dds`
						material = CAB_NECK_BN1B_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_wedgehigh.img`
								flags = 4
								color = orange_3
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_Grumbel01
				chosen_materials = {
					material1 = grey_2guitar
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_head_grumbel01.dds`
						material = CAB_Head_Grumbel01_Headstock
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_Grumbel01_WTfinish.img`
								flags = 4
								color = orange_2
							}
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Head_Grumbel01_DTL_05.img`
								flags = 4
								color = Black_1guitar
							}
						]
					}
				]
			}
			CAS_Bass_Pickguards = {
				desc_id = none
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_JP_Pickup_B
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB1A
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_unos05
				chosen_materials = {
					material1 = grey_2guitar
				}
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/Drumshell_DS_14.img`
								flags = 32
								color = orange_2
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_17.img`
								flags = 4
								color = orange_2
							}
						]
					}
				]
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = AxelHighway
			}
			CAS_Guitar_Highway = {
				desc_id = AxelHighway
			}
			CAS_Drums_Highway = {
				desc_id = AxelHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = Intro_Generic1
			}
			CAS_Male_Win_Anim = {
				desc_id = Win_Generic3
			}
			CAS_Male_Lose_Anim = {
				desc_id = Lose_AngryAtCrowd
			}
		}
	}
	{
		name = Jimi
		fullname = qs("\LJimi Hendrix")
		allowed_parts = [
			guitar
		]
		preset_icon = photo_Jimi
		blurb = qs("Jimi Hendrix is one of the greatest and most influential rock guitarists in music history.  He pioneered many innovations on the electric guitar such as his artistic use of feedback and phase effects.")
		locked
		price = 500000
		appearance = {
			genre = `Classic Rock`
			CAS_Full_Body = {
				desc_id = Jimi
			}
			cas_physique = {
				desc_id = MalePhysique
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body06
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style6_d_01.dds`
						material = Guitar_Body_Style_06_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style6_LD_01.img`
								color = grey_5guitar
								flags = 4
								a = 75
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style6_DTL_22.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck04
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_04.dds`
						material = Guitar_Neck4_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
								flags = 4
								color = yellow_orange_1
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds`
						material = Guitar_Head_Headstock
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock01_LD_01.img`
								color = orange_3
								flags = 4
								a = 60
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = GTR_Body6_PickG01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_Body6_d_01.dds`
						material = Pckgrd_Body6_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body6_LD_01.img`
								flags = 4
								color = yellow_5
							}
						]
					}
				]
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware06
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR6_Knob_Type9_03
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type2_03
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_B2A
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6A
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PickG_E1
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB3A
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_unos05
			}
			CAS_Drums = {
				desc_id = basic
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = HendrixHighway
			}
			CAS_Guitar_Highway = {
				desc_id = HendrixHighway
			}
			CAS_Drums_Highway = {
				desc_id = HendrixHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = G_Jimi_intro
			}
			CAS_Male_Win_Anim = {
				desc_id = G_Jimi_win
			}
			CAS_Male_Lose_Anim = {
				desc_id = G_Jimi_lose
			}
		}
	}
	{
		name = Hayley
		fullname = qs("\LHayley Williams")
		allowed_parts = [
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Hayley
		blurb = qs("As the high energy front woman of the band Paramore, Hayley Williams has been touring the globe for years now.  Paramore's engaging stage performances have helped the band take it to the next level.")
		locked
		polaroid = Star_Hayley
		price = 5000
		appearance = {
			genre = Rock
			CAS_Full_Body = {
				desc_id = Hayley
			}
			cas_physique = {
				desc_id = FemalePhysique
				additional_bone_transforms = [
					{
						bone = Control_Root
						scaling = {
							value = (-0.1, -0.1, -0.1)
						}
					}
					{
						bone = Bone_Pelvis
						scaling = {
							value = (0.0, 0.125, 0.125)
							no_propagate
						}
					}
				]
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body01
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds`
						material = Guitar_Neck1_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head01
			}
			CAS_Guitar_Pickguards = {
				desc_id = Guitar_PickG01
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR_Knobs_Style_01a
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickups_Style_01a
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_B2A
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6A
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PickG_E1
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB3A
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_unos05
			}
			CAS_Drums = {
				desc_id = basic
			}
			CAS_Mic = {
				desc_id = Paramore
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = AxelHighway
			}
			CAS_Guitar_Highway = {
				desc_id = AxelHighway
			}
			CAS_Drums_Highway = {
				desc_id = AxelHighway
			}
			CAS_Female_Intro_Anim = {
				desc_id = s_haley_intro
			}
			CAS_Female_Win_Anim = {
				desc_id = s_haley_win
			}
			CAS_Female_Lose_Anim = {
				desc_id = s_haley_lose
			}
		}
	}
	{
		name = TedNugent
		fullname = qs("\LTed Nugent")
		allowed_parts = [
			guitar
			Bass
		]
		preset_icon = photo_TedNugent
		blurb = qs("The Motor City Madman, Great White Buffalo, and his many other nicknames can hardly describe the intensity The 'Nuge brings when he comes to town.  Wanna believe?  Pick up a vinyl copy of 'Double Live Gonzo', and you will.")
		locked
		polaroid = Star_Nugent
		price = 10000
		appearance = {
			genre = `Heavy Metal`
			CAS_Full_Body = {
				desc_id = TedNugent
			}
			cas_physique = {
				desc_id = MalePhysique
			}
			CAS_Guitar_Body = {
				desc_id = Guitar_Body12
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style12_d_01.dds`
						material = Guitar_Body_Style_12_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style12_LD_01.img`
								color = black_1
								flags = 4
								a = 100
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = guitar_neck_nugent
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head99
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock099.dds`
						material = Guitar_Head_99_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock098.img`
								flags = 4
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock99__DTL_01.img`
								flags = 4
							}
						]
					}
				]
				chosen_materials = {
					material1 = grey_5
				}
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR12_Hardware_01
				chosen_materials = {
					material1 = grey_5
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR12_Knob_Type9_04
				chosen_materials = {
					material1 = grey_1
				}
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type3_02
				chosen_materials = {
					material1 = grey_1
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_B2A
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6A
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PickG_E1
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_unos05
			}
			CAS_Drums = {
				desc_id = basic
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = NugentHighway
			}
			CAS_Guitar_Highway = {
				desc_id = NugentHighway
			}
			CAS_Drums_Highway = {
				desc_id = NugentHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = g_ted_intro
			}
			CAS_Male_Win_Anim = {
				desc_id = g_ted_win
			}
			CAS_Male_Lose_Anim = {
				desc_id = g_ted_lose
			}
		}
	}
	{
		name = skeleton
		fullname = qs("\LSkeleton")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Skeleton
		blurb = qs("Boo! HAHA! Gotcha!")
		locked
		polaroid = M_Fun_Skeleton
		price = 6000
		appearance = {
			genre = `Heavy Metal`
			CAS_Full_Body = {
				desc_id = skeleton
			}
			cas_physique = {
				desc_id = MalePhysique
				additional_bone_transforms = [
					{
						bone = Bone_Palm_L
						scaling = {
							value = (0.5, 0.5, 0.5)
						}
					}
					{
						bone = Bone_Palm_R
						scaling = {
							value = (0.5, 0.5, 0.5)
						}
					}
				]
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body01
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds`
						material = Guitar_Neck1_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head01
			}
			CAS_Guitar_Pickguards = {
				desc_id = Guitar_PickG01
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR_Knobs_Style_01a
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickups_Style_01a
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_B2A
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6A
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PickG_E1
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB3A
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_unos05
			}
			CAS_Drums = {
				desc_id = basic
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = SkeletonHighway
			}
			CAS_Guitar_Highway = {
				desc_id = SkeletonHighway
			}
			CAS_Drums_Highway = {
				desc_id = SkeletonHighway
			}
		}
	}
	{
		name = travis
		fullname = qs("\LTravis Barker")
		allowed_parts = [
			drum
		]
		preset_icon = photo_Travis
		blurb = qs("Travis gained fame as drummer for Blink-182, but he's also displayed his expert drumming technique in bands such as +44, Box Car Racer, Transplants, and The Aquabats! to name a few.  He also founded the Famous Stars and Straps clothing company in 1999.")
		locked
		polaroid = Star_Travis
		price = 5000
		appearance = {
			genre = `Heavy Metal`
			CAS_Full_Body = {
				desc_id = travis
			}
			cas_physique = {
				desc_id = MalePhysique
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body01
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds`
						material = Guitar_Neck1_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head01
			}
			CAS_Guitar_Pickguards = {
				desc_id = Guitar_PickG01
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR_Knobs_Style_01a
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickups_Style_01a
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_B2A
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6A
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PickG_E1
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB3A
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_unos05
			}
			CAS_Drums = {
				desc_id = Monster
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = BarkerHighway
			}
			CAS_Guitar_Highway = {
				desc_id = BarkerHighway
			}
			CAS_Drums_Highway = {
				desc_id = BarkerHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = d_travis_intro
			}
			CAS_Male_Win_Anim = {
				desc_id = d_travis_win
			}
			CAS_Male_Lose_Anim = {
				desc_id = d_travis_lose
			}
		}
	}
	{
		name = Sting
		fullname = qs("\LSting")
		allowed_parts = [
			Vocals
			Bass
			guitar
		]
		preset_icon = photo_Sting
		icon_off = character_mug_axel_a
		icon_on = character_mug_axel_b
		blurb = qs("Prior to becoming an Academy Award nominated and Grammy Award winning solo artist, Sting made a name for himself as the principal songwriter, lead singer and bassist of the rock band The Police.")
		locked
		polaroid = Star_Sting
		price = 10000
		appearance = {
			genre = `Heavy Metal`
			CAS_Full_Body = {
				desc_id = Sting
			}
			cas_physique = {
				desc_id = MalePhysique
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body01
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds`
						material = Guitar_Neck1_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head01
			}
			CAS_Guitar_Pickguards = {
				desc_id = Guitar_PickG01
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR_Knobs_Style_01a
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickups_Style_01a
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_Chunder01
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Bass\cab_body_chndra_d_mls.dds`
						material = CAB_Body_Chunder01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/cab_body_sting_d_mls.img`
								flags = 4
								color = yellow_orange_4
							}
						]
					}
				]
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01_maple_d_mls.dds`
						material = CAB_NECK_BN1A_Neck
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAB/CAB_Nek_LyrMpl_Wht_Dot.img`
								flags = 4
								color = grey_2guitar
							}
						]
					}
				]
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6B
			}
			CAS_Bass_Pickguards = {
				desc_id = cab_pguard_sting
			}
			CAS_Bass_Pickups = {
				desc_id = cab_pickup_sting
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB3A
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_sting
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = StingHighway
			}
			CAS_Guitar_Highway = {
				desc_id = StingHighway
			}
			CAS_Drums_Highway = {
				desc_id = StingHighway
			}
			CAS_Drums = {
				desc_id = basic
				cap = [
					{
						base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
						material = CAD_Drums_01_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/Drumshell_DS_33.img`
								flags = 32
								color = blue_2
							}
						]
					}
					{
						base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
						material = CAD_Drums_01_Bassdrum
						diffuse
						layers = [
							{
								font = fontgrid_text_a6
								text = 'A'
								x_trans = -18
								y_trans = 15
								rot = 5333
								flags = 3
								color = navy_2
							}
							{
								font = fontgrid_text_a6
								text = 'X'
								x_trans = -8
								y_trans = 2
								rot = 5283
								flags = 3
								color = navy_2
							}
							{
								font = fontgrid_text_a6
								text = 'E'
								color = navy_2
								x_trans = 0
								y_trans = -11
								flags = 3
								rot = 5283
							}
							{
								font = fontgrid_text_a6
								text = 'L'
								color = navy_2
								y_trans = -24
								rot = 5133
								flags = 3
								x_trans = 8
							}
							{
								font = fontgrid_text_a6
								text = '!'
								color = navy_2
								y_trans = -34
								rot = 5033
								flags = 3
								x_trans = 14
							}
						]
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_35.img`
								rot = 950
								flags = 4
								color = navy_3
							}
						]
					}
				]
			}
		}
		CAS_Male_Intro_Anim = {
			desc_id = s_sting_intro
		}
		CAS_Male_Win_Anim = {
			desc_id = s_sting_win
		}
		CAS_Male_Lose_Anim = {
			desc_id = s_sting_lose
		}
	}
	{
		name = ZakkWylde
		fullname = qs("\LZakk Wylde")
		allowed_parts = [
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_ZakkWylde
		blurb = qs("Best known as the guitarist for Ozzy Osbourne for over 20 years and as the founder of Black Label Society, Zakk Wylde is one of the premiere guitar gods of the modern age.  His blistering guitar playing is characterized by his signature use of pinch harmonics, and his distinctive guitars are instantly recognizable from the 'bulls eye' finish.")
		locked
		polaroid = Star_Zakk
		price = 5000
		appearance = {
			genre = `Heavy Metal`
			CAS_Full_Body = {
				desc_id = ZakkWylde
			}
			cas_physique = {
				desc_id = MalePhysique
				additional_bone_transforms = [
					{
						bone = Control_Root
						scaling = {
							value = (0.05, 0.05, 0.05)
						}
					}
					{
						bone = Bone_Collar_R
						scaling = {
							value = (0.0, 0.05, 0.05)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, -0.03)
						}
					}
					{
						bone = Bone_Collar_L
						scaling = {
							value = (0.0, 0.05, 0.05)
							no_propagate
						}
						translation = {
							value = (0.0, 0.0, 0.03)
						}
					}
					{
						bone = Bone_Chest
						scaling = {
							value = (0.0, 0.03, 0.03)
							no_propagate
						}
					}
					{
						bone = Bone_Stomach_Upper
						scaling = {
							value = (0.0, 0.015, 0.015)
							no_propagate
						}
					}
				]
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body05
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style5_d_01.dds`
						material = Guitar_Body_Style_05_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/Gtr_Body_Style5_LD_99_WYLDE.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck03
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_03.dds`
						material = Guitar_Neck3_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Nek_Binding_DTL.img`
								flags = 4
								color = yellow_orange_5
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head99
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock099.dds`
						material = Guitar_Head_99_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock099_Wylde.img`
								flags = 4
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock99__DTL_01.img`
								flags = 4
								color = yellow_orange_5
							}
						]
					}
				]
				chosen_materials = {
					material1 = yellow_4
				}
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
				chosen_materials = {
					material1 = yellow_4
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR4_Knob_Type4_04
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type6_TKD_02
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_B2A
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6A
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PickG_E1
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_unos05
			}
			CAS_Drums = {
				desc_id = basic
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = WyldeHighway
			}
			CAS_Guitar_Highway = {
				desc_id = WyldeHighway
			}
			CAS_Drums_Highway = {
				desc_id = WyldeHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = g_zakk_intro
			}
			CAS_Male_Win_Anim = {
				desc_id = g_zakk_win
			}
			CAS_Male_Lose_Anim = {
				desc_id = g_zakk_lose
			}
		}
	}
	{
		name = Ozzy
		fullname = qs("\LOzzy Osbourne")
		allowed_parts = [
			Vocals
		]
		preset_icon = photo_Ozzy
		blurb = qs("The 'Prince of Darkness' helped invent the music genre known as 'Heavy Metal' as the lead vocalist of metal gods Black Sabbath.  And as a solo artist, Ozzy continues to tear up the globe with his own tour 'Ozzfest'.")
		locked
		polaroid = Star_Ozzy
		price = 10000
		appearance = {
			genre = `Heavy Metal`
			CAS_Full_Body = {
				desc_id = Ozzy
			}
			cas_physique = {
				desc_id = MalePhysique
				bones = {
					Height = 1
				}
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body01
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds`
						material = Guitar_Neck1_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head01
			}
			CAS_Guitar_Pickguards = {
				desc_id = Guitar_PickG01
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR_Knobs_Style_01a
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickups_Style_01a
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_B2A
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6A
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PickG_E1
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB3A
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_unos05
			}
			CAS_Drums = {
				desc_id = basic
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = AxelHighway
			}
			CAS_Guitar_Highway = {
				desc_id = AxelHighway
			}
			CAS_Drums_Highway = {
				desc_id = AxelHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = s_ozzy_intro
			}
			CAS_Male_Win_Anim = {
				desc_id = s_ozzy_win
			}
			CAS_Male_Lose_Anim = {
				desc_id = s_ozzy_lose
			}
		}
	}
	{
		name = Billy
		fullname = qs("\LBilly Corgan")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_BILLY
		blurb = qs("As the vocalist and guitarist for the alternative rock band The Smashing Pumpkins, Billy has helped push the limits of modern rock music with his complex and layered songwriting.")
		locked
		polaroid = Star_Billy
		appearance = {
			genre = Rock
			CAS_Full_Body = {
				desc_id = Billy
			}
			cas_physique = {
				desc_id = MalePhysique
				bones = {
					Height = 1.0
				}
				additional_bone_transforms = [
					{
						bone = Control_Root
						scaling = {
							value = (0.05, 0.05, 0.05)
						}
					}
				]
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body06
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style6_d_01.dds`
						material = Guitar_Body_Style_06_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style6_LD_01.img`
								flags = 4
								color = black_1
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style6_DTL_01.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Guitar_Neck = {
				desc_id = guitar_neck_corgan
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head31
				chosen_materials = {
					material1 = grey_3
				}
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds`
						material = Guitar_Head_31_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock31_Black.img`
								flags = 4
							}
							{
								texture = `tex/models/Characters/Layers/CAG/GTR_Headtock31_DTL_01.img`
								flags = 4
							}
						]
					}
				]
			}
			CAS_Guitar_Pickguards = {
				desc_id = none
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware06
				chosen_materials = {
					material1 = grey_3
				}
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR6_Knob_Type4_03
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickup_Type1_Blk_2
				chosen_materials = {
					material1 = black_1
				}
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_B2A
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6A
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PickG_E1
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB3A
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_unos05
			}
			CAS_Drums = {
				desc_id = basic
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = CorganHighway
			}
			CAS_Guitar_Highway = {
				desc_id = CorganHighway
			}
			CAS_Drums_Highway = {
				desc_id = CorganHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = s_billy_intro
			}
			CAS_Male_Win_Anim = {
				desc_id = s_billy_win
			}
			CAS_Male_Lose_Anim = {
				desc_id = s_billy_lose
			}
		}
	}
	{
		name = Rockbot
		fullname = qs("\LRockubot")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		preset_icon = photo_Rockbot
		blurb = qs("Rockubot's origins are shrouded in mystery. Some say that it was created by a master guitarist to perform as a substitute when he couldn't find the motivation to get on stage, and others say it comes from a planet of android shredders. Whatever Rockubot is, he's fast, he's furious, and he's unstoppable!")
		locked
		polaroid = M_Fun_Rockbot
		price = 15000
		appearance = {
			genre = Rock
			CAS_Full_Body = {
				desc_id = Rockbot
			}
			cas_physique = {
				desc_id = MalePhysique
				bones = {
					Height = 1.0
				}
				additional_bone_transforms = [
					{
						bone = Control_Root
						scaling = {
							value = (0.05, 0.05, 0.05)
						}
					}
				]
			}
			CAS_Guitar_Body = {
				desc_id = guitar_body01
			}
			CAS_Guitar_Neck = {
				desc_id = Guitar_Neck01
				cap = [
					{
						base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds`
						material = Guitar_Neck1_Primary
						diffuse
						pre_layer = [
							{
								texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							}
						]
					}
				]
			}
			CAS_Guitar_Head = {
				desc_id = Guitar_Head01
			}
			CAS_Guitar_Pickguards = {
				desc_id = Guitar_PickG01
			}
			CAS_Guitar_Bridges = {
				desc_id = GTR_Hardware01a
			}
			CAS_Guitar_Knobs = {
				desc_id = GTR_Knobs_Style_01a
			}
			CAS_Guitar_Pickups = {
				desc_id = GTR_Pickups_Style_01a
			}
			CAS_Bass_Body = {
				desc_id = CAB_Body_B2A
			}
			CAS_Bass_Neck = {
				desc_id = CAB_Neck_BN1A
			}
			CAS_Bass_Head = {
				desc_id = CAB_Head_BH6A
			}
			CAS_Bass_Pickguards = {
				desc_id = CAB_PickG_E1
			}
			CAS_Bass_Pickups = {
				desc_id = CAB_pickup_Hack02
			}
			CAS_Bass_Bridges = {
				desc_id = CAB_Bridge_BB3A
			}
			CAS_Bass_Knobs = {
				desc_id = cab_knob_unos05
			}
			CAS_Drums = {
				desc_id = basic
			}
			CAS_Mic = {
				desc_id = Rock
			}
			CAS_Mic_Stand = {
				desc_id = Rock
			}
			CAS_Bass_Highway = {
				desc_id = RockbotHighway
			}
			CAS_Guitar_Highway = {
				desc_id = RockbotHighway
			}
			CAS_Drums_Highway = {
				desc_id = RockbotHighway
			}
			CAS_Male_Intro_Anim = {
				desc_id = Intro_Robot
			}
			CAS_Male_Win_Anim = {
				desc_id = Win_Robot
			}
			CAS_Male_Lose_Anim = {
				desc_id = Lose_Fearful
			}
		}
	}
	{
		name = RandomAppearance0
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		random_appearance_lookup
		appearance = {
		}
	}
	{
		name = RandomAppearance1
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		random_appearance_lookup
		appearance = {
		}
	}
	{
		name = RandomAppearance2
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		random_appearance_lookup
		appearance = {
		}
	}
	{
		name = RandomAppearance3
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		random_appearance_lookup
		appearance = {
		}
	}
	{
		name = WorstFemaleVocalist
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
			$worst_female_vocals_appearance
			$worst_female_appearance_hack
		}
	}
	{
		name = WorstFemaleDrummer
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
			$worst_female_drum_appearance
			$worst_female_appearance_hack
		}
	}
	{
		name = WorstFemaleGuitarist
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
			$worst_female_guitar_appearance
			$worst_female_appearance_hack
		}
	}
	{
		name = WorstFemaleBassist
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
			$worst_female_bass_appearance
			$worst_female_appearance_hack
		}
	}
	{
		name = WorstmaleVocalist
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
			$worst_male_vocals_appearance
			$worst_male_appearance_hack
		}
	}
	{
		name = WorstmaleDrummer
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
			$worst_male_drum_appearance
			$worst_male_appearance_hack
		}
	}
	{
		name = WorstmaleGuitarist
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
			$worst_male_guitar_appearance
			$worst_male_appearance_hack
		}
	}
	{
		name = WorstmaleBassist
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
			$worst_male_bass_appearance
			$worst_male_appearance_hack
		}
	}
	{
		name = EmptyGuy
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
			CAS_Body = {
				desc_id = NoBody
			}
			CAS_Bass_Highway = {
				desc_id = AxelHighway
			}
			CAS_Guitar_Highway = {
				desc_id = AxelHighway
			}
			CAS_Drums_Highway = {
				desc_id = AxelHighway
			}
			CAS_Female_Win_Anim = {
				desc_id = Win_Hype
			}
			CAS_Female_Lose_Anim = {
				desc_id = Lose_AngryAtCrowd
			}
			CAS_Female_Intro_Anim = {
				desc_id = Intro_Hype
			}
		}
	}
]
