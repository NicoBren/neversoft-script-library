cas_female_hair_random_colors = [
	{
		color = carblack_1
		random_weight = 1.0
	}
	{
		color = hairorange_3
		random_weight = 1.0
		genre = [
			Rock
			Pop
			`Glam Rock`
			`Classic Rock`
		]
	}
	{
		color = hairred_orange_3
		random_weight = 1.0
		genre = [
			Rock
			Pop
			`Glam Rock`
			`Classic Rock`
		]
	}
	{
		color = yellow_4
		random_weight = 1.0
		genre = [
			Punk
			`Heavy Metal`
			`Glam Rock`
			Pop
			Rock
			`Classic Rock`
			`Black Metal`
		]
	}
	{
		color = yellow_2
		random_weight = 1.0
		genre = [
			Punk
			`Heavy Metal`
			`Glam Rock`
			Pop
			Rock
			`Classic Rock`
		]
	}
	{
		color = red_2
		random_weight = 1.0
		genre = [
			Punk
			Goth
			Rock
		]
	}
	{
		color = brown_4
		random_weight = 1.0
		genre = [
			Punk
			`Heavy Metal`
			`Glam Rock`
			Pop
			Rock
			`Classic Rock`
		]
	}
	{
		color = brown_3
		random_weight = 1.0
		genre = [
			Punk
			`Heavy Metal`
			`Glam Rock`
			Pop
			Rock
			`Classic Rock`
		]
	}
	{
		color = brown_2
		random_weight = 1.0
		genre = [
			Punk
			`Heavy Metal`
			`Glam Rock`
			Pop
			Rock
			`Classic Rock`
		]
	}
	{
		color = blue_3
		random_weight = 1.0
		genre = [
			Punk
			Goth
		]
	}
	{
		color = blue_1
		random_weight = 1.0
		genre = [
			Punk
			Goth
		]
	}
	{
		color = teal_3
		random_weight = 0.5
		genre = [
			Punk
			Goth
		]
	}
	{
		color = green_1
		random_weight = 0.5
		genre = [
			Punk
			Goth
		]
	}
	{
		color = grey_5
		random_weight = 0.5
		genre = [
			`Black Metal`
		]
	}
	{
		color = pink_3
		random_weight = 0.5
		genre = [
			Punk
			Goth
			Pop
		]
	}
	{
		color = purple_1
		random_weight = 0.5
		genre = [
			Punk
			Goth
		]
	}
]
CAS_Female_Hair_Common_Settings = {
	modify_all_materials
	shader = $cas_shader_hair
	random_colors = $cas_female_hair_random_colors
}
CAS_Female_Hair_Common_Settings_SkinShader = {
	modify_all_materials
	shader = $cas_shader_skin
	random_colors = $cas_female_hair_random_colors
}
CAS_Female_Hair = [
	{
		desc_id = none
		frontend_desc = qs("None")
		random_weight = 0.0
	}
	{
		desc_id = f_bmtl_hair_overeyes
		frontend_desc = qs("\LLovely Samara")
		mesh = 'models/CAR/Female/F_Bmtl_Hair_OverEyes.skin'
		mesh1 = 'models/CAR/Female/F_Bmtl_Hair_OverEyesLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Bmtl_Hair_OverEyes_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_bmtl_hathair_overeyes
		materials = [
			F_Bmtl_Hair_OverEyes_Primary
		]
		acc_skeleton = Skel_F_Bmtl_Hair_OverEyes
		acc_ragdoll = Rag_F_Bmtl_Hair_OverEyes
		acc_bones = [
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			`Black Metal`
		]
	}
	{
		desc_id = F_Bmtl_Hair_Straight
		frontend_desc = qs("\LIroned Out")
		mesh = 'models/CAR/Female/F_Bmtl_Hair_Straight.skin'
		mesh1 = 'models/CAR/Female/F_Bmtl_Hair_StraightLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Bmtl_Hair_Straight_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = F_Bmtl_HatHair_Straight
		materials = [
			F_Bmtl_Hair_Straight_Primary
		]
		acc_skeleton = Skel_F_Bmtl_Hair_Straight
		acc_ragdoll = Rag_F_Bmtl_Hair_Straight
		acc_bones = [
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			`Black Metal`
			`Heavy Metal`
		]
	}
	{
		desc_id = f_clsc_hair_blfro
		frontend_desc = qs("\LBird's Nest")
		mesh = 'models/CAR/Female/F_Clsc_Hair_BlFro.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_Hair_BlFroLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Clsc_Hair_BlFro_def.skin'
		$CAS_Female_Hair_Common_Settings_SkinShader
		hat_hair = f_clsc_hathair_blfro
		acc_skeleton = Skel_F_Clsc_Hair_BlFro
		acc_ragdoll = Rag_F_Clsc_Hair_BlFro
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			`Classic Rock`
		]
		random_weight = 0.0
	}
	{
		desc_id = f_clsc_hair_farah
		frontend_desc = qs("\LAngel")
		mesh = 'models/CAR/Female/F_Clsc_Hair_Farah.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_Hair_FarahLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Clsc_Hair_Farah_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_clsc_hathair_farah
		acc_skeleton = Skel_F_Clsc_Hair_Farah
		acc_ragdoll = Rag_F_Clsc_Hair_Farah
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			`Classic Rock`
		]
	}
	{
		desc_id = f_clsc_hair_joplin
		frontend_desc = qs("\LShaggy")
		mesh = 'models/CAR/Female/F_Clsc_Hair_Joplin.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_Hair_JoplinLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Clsc_Hair_Joplin_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_clsc_hathair_joplin
		acc_skeleton = Skel_F_Clsc_Hair_Joplin
		acc_ragdoll = Rag_F_Clsc_Hair_Joplin
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			`Classic Rock`
		]
	}
	{
		desc_id = f_clsc_hair_sblack
		frontend_desc = qs("\LLow Maintenance")
		mesh = 'models/CAR/Female/F_Clsc_Hair_SBlack.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_Hair_SBlackLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Clsc_Hair_SBlack_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_clsc_hathair_sblack
		acc_skeleton = Skel_F_Clsc_Hair_SBlack
		acc_ragdoll = Rag_F_Clsc_Hair_SBlack
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
		]
		genre = [
			`Classic Rock`
			Pop
			Rock
		]
	}
	{
		desc_id = f_glam_hair_bighair
		frontend_desc = qs("\LCountry Tease")
		mesh = 'models/CAR/Female/F_Glam_Hair_BigHair.skin'
		mesh1 = 'models/CAR/Female/F_Glam_Hair_BigHairLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Glam_Hair_BigHair_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_glam_hathair_bighair
		acc_skeleton = Skel_F_Glam_Hair_BigHair
		acc_ragdoll = Rag_F_Glam_Hair_BigHair
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			`Glam Rock`
		]
		random_weight = 0.0
	}
	{
		desc_id = f_glam_hair_palmtree
		frontend_desc = qs("\LPalm Fronds")
		mesh = 'models/CAR/Female/F_Glam_Hair_PalmTree.skin'
		mesh1 = 'models/CAR/Female/F_Glam_Hair_PalmTreeLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Glam_Hair_PalmTree_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_glam_hathair_palmtree
		acc_skeleton = Skel_F_Glam_Hair_PalmTree
		acc_ragdoll = Rag_F_Glam_Hair_PalmTree
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
		]
		genre = [
			`Glam Rock`
		]
	}
	{
		desc_id = f_glam_hair_seagull
		frontend_desc = qs("\LToo Much Mousse")
		mesh = 'models/CAR/Female/F_Glam_Hair_Seagull.skin'
		mesh1 = 'models/CAR/Female/F_Glam_Hair_SeagullLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Glam_Hair_Seagull_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_glam_hathair_seagull
		acc_skeleton = Skel_F_Glam_Hair_Seagull
		acc_ragdoll = Rag_F_Glam_Hair_Seagull
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			`Glam Rock`
		]
	}
	{
		desc_id = f_goth_hair_bangslong
		frontend_desc = qs("\LBetty")
		mesh = 'models/CAR/Female/F_GOTH_Hair_BangsLong.skin'
		mesh1 = 'models/CAR/Female/F_GOTH_Hair_BangsLongLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Goth_Hair_BangsLong_Def.skin'
		$CAS_Female_Hair_Common_Settings
		materials = [
			F_Goth_Hair01_Primary
			F_Goth_Hair01_Secondary
		]
		hat_hair = f_goth_hathair_bangslong
		acc_skeleton = Skel_F_Goth_Hair_BangsLong
		acc_ragdoll = Rag_F_Goth_Hair_BangsLong
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			Goth
		]
	}
	{
		desc_id = f_goth_hair_dreads
		frontend_desc = qs("\LRing-a-lings")
		mesh = 'models/CAR/Female/F_Goth_Hair_Dreads.skin'
		mesh1 = 'models/CAR/Female/F_Goth_Hair_DreadsLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Goth_Hair_Dreads_def.skin'
		$CAS_Female_Hair_Common_Settings_SkinShader
		hat_hair = f_goth_hathair_dreads
		acc_skeleton = Skel_F_Goth_Hair_Dreads
		acc_ragdoll = Rag_F_Goth_Hair_Dreads
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			Goth
		]
	}
	{
		desc_id = f_goth_hair_updo
		frontend_desc = qs("\LGoth Bride")
		mesh = 'models/CAR/Female/F_Goth_Hair_UpDo.skin'
		mesh1 = 'models/CAR/Female/F_Goth_Hair_UpDoLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Goth_Hair_UpDo_Def.skin'
		material_groups = [
			{
				materials = [
					F_Goth_Hair_Updo_hair
				]
				shader = $cas_shader_hair
			}
			{
				materials = [
					F_Goth_Hair_Updo_vale
				]
				shader = $cas_shader_skin
			}
		]
		hat_hair = f_goth_hathair_updo
		acc_skeleton = Skel_F_Goth_Hair_UpDo
		acc_ragdoll = Rag_F_Goth_Hair_UpDo
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
		]
		genre = [
			Goth
		]
	}
	{
		desc_id = F_Metl_Hair_MidStrt
		frontend_desc = qs("\LFree Spirit")
		mesh = 'models/CAR/Female/F_Metl_Hair_MidStrt.skin'
		mesh1 = 'models/CAR/Female/F_Metl_Hair_MidStraightLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Metl_Hair_MidStrt_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = F_Metl_HatHair_MidStrt
		acc_skeleton = Skel_F_Metl_Hair_MidStrt
		acc_ragdoll = Rag_F_Metl_Hair_MidStrt
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			`Heavy Metal`
		]
	}
	{
		desc_id = F_Metl_Hair_Pony
		frontend_desc = qs("\LPwnytail")
		mesh = 'models/CAR/Female/F_Metl_Hair_Pony.skin'
		mesh1 = 'models/CAR/Female/F_Metl_Hair_PonyLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Metl_Hair_Pony_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = F_Metl_HatHair_Pony
		materials = [
			F_Metl_Hair_Ponytail_Primary
			F_Metl_Hair_Ponytail_Secondary
		]
		acc_skeleton = Skel_F_Metl_Hair_Pony
		acc_ragdoll = Rag_F_Metl_Hair_Pony
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
		]
		genre = [
			`Heavy Metal`
		]
	}
	{
		desc_id = f_metl_hair_skunk
		frontend_desc = qs("\LSkunk")
		mesh = 'models/CAR/Female/F_Metl_Hair_Skunk.skin'
		mesh1 = 'models/CAR/Female/F_Metl_Hair_SkunkLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Metl_Hair_Skunk_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_metl_hathair_skunk
		materials = [
			F_Metl_Hair_Skunk_Primary
			F_Metl_Hair_Skunk_Secondary
		]
		acc_skeleton = Skel_F_Metl_Hair_Skunk
		acc_ragdoll = Rag_F_Metl_Hair_Skunk
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
		]
		genre = [
			`Heavy Metal`
		]
	}
	{
		desc_id = f_pop_hair_fergie
		frontend_desc = qs("\LHeidi Braids")
		mesh = 'models/CAR/Female/F_Pop_Hair_Fergie.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Hair_FergieLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Pop_Hair_Fergie_Def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_pop_hathair_fergie
		acc_skeleton = Skel_F_Pop_Hair_Fergie
		acc_ragdoll = Rag_F_Pop_Hair_Fergie
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			Pop
		]
	}
	{
		desc_id = F_Pop_Hair_Midori
		frontend_desc = qs("\LMidori")
		mesh = 'models/CAR/Female/F_Pop_Hair_Midori.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Hair_MidoriLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Pop_Hair_Midori_Def.skin'
		material_groups = [
			{
				materials = [
					Pop_MidoriHair_Primary
				]
				shader = $cas_shader_hair
			}
			{
				materials = [
					Pop_MidoriHair_Secondary
				]
				shader = $cas_shader_skin
			}
		]
		hat_hair = f_pop_hathair_midori
		acc_skeleton = Skel_F_Pop_Hair_Midori
		acc_ragdoll = Rag_F_Pop_Hair_Midori
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			Pop
		]
		random_weight = 0.0
	}
	{
		desc_id = f_pop_hair_hayley
		frontend_desc = qs("\LHayley")
		mesh = 'models/CAR/Female/F_Pop_Hair_Hayley.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Hair_HayleyLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Pop_Hair_Hayley_Def.skin'
		materials = [
			F_Pop_Hair_Hayley_Primary
		]
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_pop_hathair_hayley
		acc_skeleton = Skel_F_Pop_Hair_Hayley
		acc_ragdoll = Rag_F_Pop_Hair_Hayley
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			Pop
			Rock
		]
	}
	{
		desc_id = f_punk_hair_downhawk
		frontend_desc = qs("\LDownhawk")
		mesh = 'models/CAR/Female/F_Punk_Hair_Downhawk.skin'
		mesh1 = 'models/CAR/Female/F_Punk_Hair_DownhawkLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Punk_Hair_Downhawk_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_punk_hathair_downhawk
		acc_skeleton = Skel_F_Punk_Hair_Downhawk
		acc_ragdoll = Rag_F_Punk_Hair_Downhawk
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
		]
		genre = [
			Punk
		]
	}
	{
		desc_id = f_punk_hair_hawk
		frontend_desc = qs("\LMohawk")
		mesh = 'models/CAR/Female/F_Punk_Hair_Hawk.skin'
		mesh1 = 'models/CAR/Female/F_Punk_Hair_HawkLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Punk_Hair_Hawk_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = none
		acc_skeleton = Skel_F_Punk_Hair_Hawk
		acc_ragdoll = Rag_F_Punk_Hair_Hawk
		acc_bones = [
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			Punk
		]
	}
	{
		desc_id = F_Punk_Hair_JudyNails1
		frontend_desc = qs("\LSassy Judy")
		mesh = 'models/CAR/Female/F_Punk_Hair_JudyNails1.skin'
		mesh1 = 'models/CAR/Female/F_Punk_Hair_JudyNails1LOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Punk_Hair_JudyNails1_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_punk_hathair_judynails1
		acc_skeleton = Skel_F_Punk_Hair_JudyNails1
		acc_ragdoll = Rag_F_Punk_Hair_JudyNails1
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		materials = [
			F_Punk_Hair_JudyNails1_Primary
			F_Punk_Hair_JudyNails1_Secondary
		]
		chosen_materials = {
			material1 = red_1
			material2 = purple_blue_1
		}
		genre = [
			Punk
		]
	}
	{
		desc_id = f_punk_hair_ponytail
		frontend_desc = qs("\LMake It Work")
		mesh = 'models/CAR/Female/F_Punk_Hair_Ponytail.skin'
		mesh1 = 'models/CAR/Female/F_Punk_Hair_PonytailLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Punk_Hair_Ponytail_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_punk_hathair_ponytail
		acc_skeleton = Skel_F_Punk_Hair_Ponytail
		acc_ragdoll = Rag_F_Punk_Hair_Ponytail
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
		]
		genre = [
			Punk
		]
	}
	{
		desc_id = f_rock_hair_emo
		frontend_desc = qs("\LIngrid")
		mesh = 'models/CAR/Female/F_Rock_Hair_Emo.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Hair_EmoLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Rock_Hair_Emo_def.skin'
		$CAS_Female_Hair_Common_Settings
		materials = [
			F_Rock_Hair_Emo_Primary
			F_Rock_Hair_Emo_Secondary
		]
		hat_hair = f_rock_hathair_emo
		acc_skeleton = Skel_F_Rock_Hair_Emo
		acc_ragdoll = Rag_F_Rock_Hair_Emo
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
		]
		genre = [
			Rock
		]
	}
	{
		desc_id = f_rock_hair_short
		frontend_desc = qs("\LShort and Spunky")
		mesh = 'models/CAR/Female/F_Rock_Hair_Short.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Hair_ShortLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Rock_Hair_Short_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_rock_hathair_short
		acc_skeleton = Skel_F_Rock_Head_Hair_Short
		acc_ragdoll = Rag_F_Rock_Head_Hair_Short
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
		]
		genre = [
			Rock
		]
	}
	{
		desc_id = F_Rock_Hair_Wavy
		frontend_desc = qs("\LBella")
		mesh = 'models/CAR/Female/F_Rock_Hair_Wavy.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Hair_WavyLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Rock_Hair_Wavy_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_rock_hathair_wavy
		acc_skeleton = Skel_F_Rock_Hair_Wavy
		acc_ragdoll = Rag_F_Rock_Hair_Wavy
		acc_bones = [
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			Rock
		]
	}
	{
		desc_id = F_Rock_Hair_Bass
		frontend_desc = qs("\LSakura")
		mesh = 'models/CAR/Female/F_Rock_Hair_Bass.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Hair_BassLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Rock_Hair_Bass_def.skin'
		$CAS_Female_Hair_Common_Settings
		hat_hair = f_rock_hathair_bass
		acc_skeleton = Skel_F_Rock_Hair_Bass
		acc_ragdoll = Rag_F_Rock_Hair_Bass
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			Rock
			Pop
		]
	}
]
CAS_Female_Hat_Hair_Common_Settings = {
	modify_all_materials
	shader = $cas_shader_hair
}
CAS_Female_Hat_Hair_Common_Settings_SkinShader = {
	modify_all_materials
	shader = $cas_shader_skin
}
CAS_Female_Hat_Hair = [
	{
		desc_id = none
		frontend_desc = qs("None")
	}
	{
		desc_id = f_bmtl_hathair_overeyes
		mesh = 'models/CAR/Female/F_Bmtl_HatHair_OverEyes.skin'
		mesh1 = 'models/CAR/Female/F_Bmtl_HatHair_OverEyesLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Bmtl_HatHair_OverEyes_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Bmtl_Hair_OverEyes
		acc_ragdoll = Rag_F_Bmtl_Hair_OverEyes
		acc_bones = [
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = F_Bmtl_HatHair_Straight
		mesh = 'models/CAR/Female/F_Bmtl_HatHair_Straight.skin'
		mesh1 = 'models/CAR/Female/F_Bmtl_HatHair_StraightLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Bmtl_HatHair_Straight_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Bmtl_Hair_Straight
		acc_ragdoll = Rag_F_Bmtl_Hair_Straight
		acc_bones = [
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = f_clsc_hathair_blfro
		mesh = 'models/CAR/Female/F_Clsc_HatHair_BlFro.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_HatHair_BlFroLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Clsc_HatHair_BlFro_def.skin'
		$CAS_Female_Hair_Common_Settings_SkinShader
		acc_skeleton = Skel_F_Clsc_Hair_BlFro
		acc_ragdoll = Rag_F_Clsc_Hair_BlFro
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = f_clsc_hathair_farah
		mesh = 'models/CAR/Female/F_Clsc_HatHair_Farah.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_HatHair_FarahLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Clsc_HatHair_Farah_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Clsc_Hair_Farah
		acc_ragdoll = Rag_F_Clsc_Hair_Farah
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = f_clsc_hathair_joplin
		mesh = 'models/CAR/Female/F_Clsc_HatHair_Joplin.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_HatHair_JoplinLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Clsc_HatHair_Joplin_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Clsc_Hair_Joplin
		acc_ragdoll = Rag_F_Clsc_Hair_Joplin
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = f_clsc_hathair_sblack
		mesh = 'models/CAR/Female/F_Clsc_HatHair_SBlack.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_HatHair_SBlackLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Clsc_HatHair_SBlack_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Clsc_Hair_SBlack
		acc_ragdoll = Rag_F_Clsc_Hair_SBlack
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
		]
	}
	{
		desc_id = f_glam_hathair_bighair
		mesh = 'models/CAR/Female/F_Glam_HatHair_BigHair.skin'
		mesh1 = 'models/CAR/Female/F_Glam_HatHair_BigHairLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Glam_HatHair_BigHair_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Glam_Hair_BigHair
		acc_ragdoll = Rag_F_Glam_Hair_BigHair
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = f_glam_hathair_palmtree
		mesh = 'models/CAR/Female/F_Glam_HatHair_PalmTree.skin'
		mesh1 = 'models/CAR/Female/F_Glam_HatHair_PalmTreeLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Glam_HatHair_PalmTree_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Glam_Hair_PalmTree
		acc_ragdoll = Rag_F_Glam_Hair_PalmTree
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
		]
	}
	{
		desc_id = f_glam_hathair_seagull
		mesh = 'models/CAR/Female/F_Glam_HatHair_Seagull.skin'
		mesh1 = 'models/CAR/Female/F_Glam_HatHair_SeagullLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Glam_HatHair_Seagull_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Glam_Hair_Seagull
		acc_ragdoll = Rag_F_Glam_Hair_Seagull
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = f_goth_hathair_bangslong
		mesh = 'models/CAR/Female/F_Goth_HatHair_BangsLong.skin'
		mesh1 = 'models/CAR/Female/F_Goth_HatHair_BangsLongLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Goth_HatHair_BangsLong_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Goth_Hair_BangsLong
		acc_ragdoll = Rag_F_Goth_Hair_BangsLong
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = f_goth_hathair_dreads
		mesh = 'models/CAR/Female/F_Goth_HatHair_Dreads.skin'
		mesh1 = 'models/CAR/Female/F_Goth_HatHair_DreadsLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Goth_HatHair_Dreads_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings_SkinShader
		acc_skeleton = Skel_F_Goth_Hair_Dreads
		acc_ragdoll = Rag_F_Goth_Hair_Dreads
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = f_goth_hathair_updo
		mesh = 'models/CAR/Female/F_Goth_HatHair_UpDo.skin'
		mesh1 = 'models/CAR/Female/F_Goth_HatHair_UpDoLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Goth_HatHair_UpDo_def.skin'
		material_groups = [
			{
				materials = [
					F_Goth_Hair_Updo_hair
				]
				shader = $cas_shader_hair
			}
			{
				materials = [
					F_Goth_Hair_Updo_vale
				]
				shader = $cas_shader_skin
			}
		]
		acc_skeleton = Skel_F_Goth_Hair_UpDo
		acc_ragdoll = Rag_F_Goth_Hair_UpDo
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
		]
	}
	{
		desc_id = F_Metl_HatHair_MidStrt
		mesh = 'models/CAR/Female/F_Metl_HatHair_MidStrt.skin'
		mesh1 = 'models/CAR/Female/F_Metl_HatHair_MidStrtLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Metl_HatHair_MidStrt_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Metl_Hair_MidStrt
		acc_ragdoll = Rag_F_Metl_Hair_MidStrt
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = F_Metl_HatHair_Pony
		mesh = 'models/CAR/Female/F_Metl_HatHair_Pony.skin'
		mesh1 = 'models/CAR/Female/F_Metl_HatHair_PonyLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Metl_HatHair_Pony_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Metl_Hair_Pony
		acc_ragdoll = Rag_F_Metl_Hair_Pony
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
		]
	}
	{
		desc_id = f_metl_hathair_skunk
		mesh = 'models/CAR/Female/F_Metl_HatHair_Skunk.skin'
		mesh1 = 'models/CAR/Female/F_Metl_HatHair_SkunkLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Metl_HatHair_Skunk_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Metl_Hair_Skunk
		acc_ragdoll = Rag_F_Metl_Hair_Skunk
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
		]
	}
	{
		desc_id = f_pop_hathair_hayley
		mesh = 'models/CAR/Female/F_Pop_HatHair_Hayley.skin'
		mesh1 = 'models/CAR/Female/F_Pop_HatHair_HayleyLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Pop_HatHair_Hayley_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Pop_Hair_Hayley
		acc_ragdoll = Rag_F_Pop_Hair_Hayley
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = f_pop_hathair_fergie
		mesh = 'models/CAR/Female/F_Pop_HatHair_Fergie.skin'
		mesh1 = 'models/CAR/Female/F_Pop_HatHair_FergieLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Pop_HatHair_Fergie_Def.skin'
		$CAS_Female_Hair_Common_Settings
		acc_skeleton = Skel_F_Pop_Hair_Fergie
		acc_ragdoll = Rag_F_Pop_Hair_Fergie
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = f_pop_hathair_midori
		mesh = 'models/CAR/Female/F_Pop_HatHair_Midori.skin'
		mesh1 = 'models/CAR/Female/F_Pop_HatHair_MidoriLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Pop_HatHair_Midori_Def.skin'
		material_groups = [
			{
				materials = [
					Pop_MidoriHair_Primary
				]
				shader = $cas_shader_hair
			}
			{
				materials = [
					Pop_MidoriHair_Secondary
				]
				shader = $cas_shader_skin
			}
		]
		acc_skeleton = Skel_F_Pop_Hair_Midori
		acc_ragdoll = Rag_F_Pop_Hair_Midori
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = f_punk_hathair_downhawk
		mesh = 'models/CAR/Female/F_Punk_HatHair_Downhawk.skin'
		mesh1 = 'models/CAR/Female/F_Punk_HatHair_DownhawkLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Punk_HatHair_Downhawk_def.skin'
		$CAS_Female_Hair_Common_Settings
		acc_skeleton = Skel_F_Punk_Hair_Downhawk
		acc_ragdoll = Rag_F_Punk_Hair_Downhawk
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
		]
	}
	{
		desc_id = f_punk_hathair_judynails1
		mesh = 'models/CAR/Female/F_Punk_HatHair_JudyNails1.skin'
		mesh1 = 'models/CAR/Female/F_Punk_HatHair_JudyNails1LOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Punk_HatHair_JudyNails1_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Punk_Hair_JudyNails1
		acc_ragdoll = Rag_F_Punk_Hair_JudyNails1
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		materials = [
			F_Punk_Hair_JudyNails1_Primary
			F_Punk_Hair_JudyNails1_Secondary
		]
	}
	{
		desc_id = f_punk_hathair_ponytail
		mesh = 'models/CAR/Female/F_Punk_HatHair_Ponytail.skin'
		mesh1 = 'models/CAR/Female/F_Punk_HatHair_PonytailLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Punk_HatHair_Ponytail_def.skin'
		$CAS_Female_Hair_Common_Settings
		acc_skeleton = Skel_F_Punk_Hair_Ponytail
		acc_ragdoll = Rag_F_Punk_Hair_Ponytail
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
		]
	}
	{
		desc_id = f_rock_hathair_emo
		mesh = 'models/CAR/Female/F_Rock_HatHair_Emo.skin'
		mesh1 = 'models/CAR/Female/F_Rock_HatHair_EmoLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Rock_HatHair_Emo_def.skin'
		$CAS_Female_Hair_Common_Settings
		materials = [
			F_Rock_Hair_Emo_Primary
			F_Rock_Hair_Emo_Secondary
		]
		acc_skeleton = Skel_F_Rock_Hair_Emo
		acc_ragdoll = Rag_F_Rock_Hair_Emo
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
		]
	}
	{
		desc_id = f_rock_hathair_short
		mesh = 'models/CAR/Female/F_Rock_HatHair_Short.skin'
		mesh1 = 'models/CAR/Female/F_Rock_HatHair_ShortLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Rock_HatHair_Short_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Rock_Head_Hair_Short
		acc_ragdoll = Rag_F_Rock_Head_Hair_Short
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
		]
	}
	{
		desc_id = f_rock_hathair_wavy
		mesh = 'models/CAR/Female/F_Rock_HatHair_Wavy.skin'
		mesh1 = 'models/CAR/Female/F_Rock_HatHair_WavyLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Rock_HatHair_Wavy_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Rock_Hair_Wavy
		acc_ragdoll = Rag_F_Rock_Hair_Wavy
		acc_bones = [
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = f_rock_hathair_bass
		mesh = 'models/CAR/Female/F_Rock_HatHair_Bass.skin'
		mesh1 = 'models/CAR/Female/F_Rock_HatHair_BassLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Rock_HatHair_Bass_def.skin'
		$CAS_Female_Hat_Hair_Common_Settings
		acc_skeleton = Skel_F_Rock_Hair_Bass
		acc_ragdoll = Rag_F_Rock_Hair_Bass
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
			Bone_ACC_Head_06
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
]
CAS_Female_Hat = [
	{
		desc_id = none
		frontend_desc = qs("None")
		random_weight = 10.0
	}
	{
		desc_id = F_Bmtl_Hat_SkullHelmet
		frontend_desc = qs("\LSkullHelmet")
		mesh = 'models/CAR/Female/F_Bmtl_Hat_SkullHelmet.skin'
		mesh1 = 'models/CAR/Female/F_Bmtl_Hat_SkullHelmetLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Bmtl_Hat_SkullHelmet_def.skin'
		materials = [
			F_Bmtl_Hat_SkullHelmet_Primary
			F_Bmtl_Hat_SkullHelmet_Secondary
		]
		hat_hair = none
		genre = [
			`Black Metal`
		]
		price = 6066
		locked
		polaroid = P_M_Bmtl_Hat_SkullHelmet
		random_weight = 0.05
	}
	{
		desc_id = F_Metl_Head_HatStuds01
		frontend_desc = qs("\LBlue Oyster Top")
		mesh = 'models/CAR/Female/F_Metl_Head_HatStuds01.skin'
		mesh1 = 'models/CAR/Female/F_Metl_Head_HatStuds01LOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Metl_Head_HatStuds01_def.skin'
		genre = [
			`Black Metal`
		]
		price = 150
		random_weight = 0.025
		locked
		polaroid = P_F_Metl_Head_HatStuds01
	}
	{
		desc_id = f_pop_hat_bucket
		frontend_desc = qs("\LFedora Spunk")
		mesh = 'models/CAR/Female/F_Pop_Hat_Bucket.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Hat_BucketLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Pop_Hat_Bucket_def.skin'
		materials = [
			M_Pop_Hat_Bucket_Primary
			M_Pop_Hat_Bucket_Secondary
		]
		genre = [
			Pop
		]
		price = 75
		random_weight = 0.05
	}
	{
		desc_id = F_Pop_Head_WW2Helm
		frontend_desc = qs("\LCorporal Rawkette")
		mesh = 'models/CAR/Female/F_Pop_Head_WW2Helm.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Head_WW2HelmLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Pop_Head_WW2Helm_def.skin'
		genre = [
			Punk
			`Heavy Metal`
			Goth
		]
		price = 400
		random_weight = 0.025
		locked
		polaroid = P_M_Pop_Hat_WW2Helm
	}
	{
		desc_id = F_Pop_Head_WoolHat
		frontend_desc = qs("\LSW Cap")
		mesh = 'models/CAR/Female/F_Pop_Head_WoolHat.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Head_WoolHatLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Pop_Head_WoolHat_def.skin'
		materials = [
			F_Pop_WoolHat_WoolHat
		]
		genre = [
			Pop
		]
		price = 75
		random_weight = 0.025
	}
	{
		desc_id = F_Pop_Acc_Catears
		frontend_desc = qs("\LKat Babe")
		mesh = 'models/CAR/Female/F_Pop_Acc_Catears.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Acc_CatearsLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Pop_Acc_Catears_def.skin'
		materials = [
			F_Pop_Acc_Catears_Primary
			F_Pop_Acc_Catears_Secondary
		]
		hat_hair = original_hair
		genre = [
			Pop
		]
		price = 3000
		polaroid = P_F_Pop_Acc_CatEars
		locked
		random_weight = 0.0
	}
	{
		desc_id = f_rock_hat_cowboy
		frontend_desc = qs("\LCowgirly")
		mesh = 'models/CAR/Female/F_Rock_Hat_Cowboy.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Hat_CowboyLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Rock_Hat_Cowboy_def.skin'
		materials = [
			F_Rock_Hat_Cowboy_Primary
			F_Rock_Hat_Cowboy_Secondary
		]
		genre = [
			Rock
		]
		price = 100
		random_weight = 0.025
		locked
		polaroid = P_F_Rock_Hat_Cowboy
	}
	{
		desc_id = f_rock_hat_starpin
		frontend_desc = qs("\LSheriff Of Rock")
		mesh = 'models/CAR/Female/F_Rock_Hat_Starpin.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Hat_StarpinLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Rock_Hat_Starpin_def.skin'
		materials = [
			F_Rock_Hat_Starpin_Primary
		]
		genre = [
			Rock
		]
		price = 150
		random_weight = 0.025
		locked
		polaroid = P_F_Rock_Hat_Starpin
	}
	{
		desc_id = f_clsc_hat_cptn
		frontend_desc = qs("\LEl Mariachi Capitan")
		mesh = 'models/CAR/Female/F_Clsc_Hat_Cptn.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_Hat_CptnLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Clsc_Hat_Cptn_def.skin'
		genre = [
			`Classic Rock`
		]
		price = 300
		random_weight = 0.0
		locked
		polaroid = P_F_Clsc_Hat_Cptn
	}
	{
		desc_id = f_clsc_hat_cowboy
		frontend_desc = qs("\LOutback Hat")
		mesh = 'models/CAR/Female/F_Clsc_Hat_Cowboy.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_Hat_CowboyLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Clsc_Hat_Cowboy_def.skin'
		genre = [
			`Classic Rock`
		]
		price = 150
		random_weight = 0.025
	}
	{
		desc_id = f_clsc_hat_triangle
		frontend_desc = qs("\LPirate Hat")
		mesh = 'models/CAR/Female/F_Clsc_Hat_Triangle.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_Hat_TriangleLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Clsc_Hat_Triangle_def.skin'
		genre = [
			`Classic Rock`
		]
		price = 500
		locked
		random_weight = 0.025
		polaroid = P_M_Clsc_Hat_Triangle
	}
	{
		desc_id = f_goth_hat_tophat
		frontend_desc = qs("\LTop Hat")
		mesh = 'models/CAR/Female/F_Goth_Hat_TopHat.skin'
		mesh1 = 'models/CAR/Female/F_Goth_Hat_TopHatLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Goth_Hat_TopHat_def.skin'
		genre = [
			Goth
		]
		price = 500
		locked
		polaroid = P_M_Goth_Hat_TopHat
		random_weight = 0.025
	}
	{
		desc_id = F_Pop_Head_GasMask
		frontend_desc = qs("\LGas Mask")
		mesh = 'models/CAR/Female/F_Pop_Head_GasMask.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Head_GasMaskLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Pop_Head_GasMask_def.skin'
		materials = [
			M_Pop_Head_Gasmask_Mask
		]
		hat_hair = none
		price = 5000
		polaroid = P_F_Pop_Head_GasMask
		locked
		random_weight = 0.0
	}
	{
		desc_id = F_Bmtl_Head_Viking
		frontend_desc = qs("\LFriedrich's Helm")
		mesh = 'models/CAR/Female/F_Bmtl_Hat_Viking.skin'
		mesh1 = 'models/CAR/Female/F_Bmtl_Hat_VikingLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Bmtl_Hat_Viking_def.skin'
		genre = [
			`Black Metal`
		]
		hat_hair = none
		price = 25000
		random_weight = 0.0
		locked
		polaroid = P_F_Bmtl_Hat_Viking
	}
	{
		desc_id = F_Fun_Hat_EyeBall
		frontend_desc = qs("\LEyeball")
		mesh = 'models/CAR/Female/F_Fun_Hat_EyeBall.skin'
		deform_mesh = 'models/CAR/Female/F_Fun_Hat_EyeBall_def.skin'
		genre = [
			Goth
		]
		hat_hair = none
		locked
		polaroid = P_F_Fun_Hat_EyeBall
		price = 150000
		random_weight = 0.0
	}
	{
		desc_id = f_bmtl_hat_chicken
		frontend_desc = qs("\LChicken Hat")
		mesh = 'models/CAR/Female/F_Bmtl_Hat_Chicken.skin'
		mesh1 = 'models/CAR/Female/F_Bmtl_Hat_ChickenLOD.skin'
		mesh_lod = 1
		materials = [
			F_Bmtl_Hat_Chicken_Primary
			F_Bmtl_Hat_Chicken_Secondary
		]
		genre = [
			`Black Metal`
		]
		hat_hair = none
		price = 500000
		polaroid = P_F_Bmtl_Hat_Chicken
		locked
		random_weight = 0.0
	}
	{
		desc_id = F_Metl_Acc_Horn
		frontend_desc = qs("\LSuccubus")
		mesh = 'models/CAR/Female/F_Metl_Acc_Horn.skin'
		mesh1 = 'models/CAR/Female/F_Metl_Acc_HornLOD.skin'
		mesh_lod = 1
		deform_mesh = 'models/CAR/Female/F_Metl_Acc_Horn_def.skin'
		materials = [
			F_Metl_Acc_Horn_Primary
		]
		genre = [
			`Heavy Metal`
		]
		hat_hair = original_hair
		price = 667
		random_weight = 0.0
		locked
		polaroid = P_F_Metl_Acc_Horn
	}
]
CAS_Female_Facial_Hair = [
	{
		desc_id = none
		frontend_desc = qs("None")
	}
]
CAS_Female_Age = [
	{
		desc_id = CAR_Female_Teen
		frontend_desc = qs("Teen")
	}
	{
		desc_id = CAR_Female_Mature
		random_weight = 0.0
		replace = 'tex/models/Characters/car/female/car_female_head_n.dds'
		with = 'tex/models/Characters/Layers/CAR/Female/Age/CAR_Female_Age03_N.dds'
		replace2 = 'tex/models/Characters/car/female/car_female_head_d.dds'
		with2 = 'tex/models/Characters/Layers/CAR/Female/Age/CAR_Female_Age03_D.dds'
		frontend_desc = qs("Mature")
		in = CAS_Body
		in2 = CAS_Body
	}
	{
		desc_id = CAR_Female_Aged
		random_weight = 0.0
		replace = 'tex/models/Characters/car/female/car_female_head_n.dds'
		with = 'tex/models/Characters/Layers/CAR/Female/Age/CAR_Female_Age04_N.dds'
		replace2 = 'tex/models/Characters/car/female/car_female_head_d.dds'
		with2 = 'tex/models/Characters/Layers/CAR/Female/Age/CAR_Female_Age04_D.dds'
		frontend_desc = qs("Middle Aged")
		in = CAS_Body
		in2 = CAS_Body
	}
	{
		desc_id = CAR_Female_Old
		random_weight = 0.0
		replace = 'tex/models/Characters/car/female/car_female_head_n.dds'
		with = 'tex/models/Characters/Layers/CAR/Female/Age/CAR_Female_Age05_N.dds'
		replace2 = 'tex/models/Characters/car/female/car_female_head_d.dds'
		with2 = 'tex/models/Characters/Layers/CAR/Female/Age/CAR_Female_Age05_D.dds'
		frontend_desc = qs("Old")
		in = CAS_Body
		in2 = CAS_Body
	}
]
