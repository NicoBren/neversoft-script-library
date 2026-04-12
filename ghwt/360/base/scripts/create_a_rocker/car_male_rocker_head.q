cas_male_hair_random_colors = [
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
]
CAS_Male_Hair_Common_Settings = {
	modify_all_materials
	shader = $cas_shader_hair
	random_colors = $cas_male_hair_random_colors
}
CAS_Male_Hair_Common_Settings_SkinShader = {
	modify_all_materials
	shader = $cas_shader_skin
	random_colors = $cas_male_hair_random_colors
}
CAS_Male_Hair = [
	{
		desc_id = none
		frontend_desc = qs("None")
		random_weight = 0.0
	}
	{
		desc_id = m_clsc_hair_george
		frontend_desc = qs("\LNo Fuss")
		mesh = 'models/CAR/Male/M_Clsc_Hair_George.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_Hair_George_Def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_clsc_hathair_george
		acc_skeleton = Skel_M_Clsc_Hair_George
		acc_ragdoll = Rag_M_Clsc_Hair_George
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
			Rock
			Pop
		]
	}
	{
		desc_id = M_Clsc_Hair_Contest
		frontend_desc = qs("\LContest Winner")
		mesh = 'models/CAR/Male/M_Clsc_Hair_Contest.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_Hair_Contest_Def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = M_Clsc_HatHair_Contest
		random_weight = 0.0
		hidden
	}
	{
		desc_id = m_bmtl_hair_lars
		frontend_desc = qs("\LStraight Comb")
		mesh = 'models/CAR/Male/M_Bmtl_Hair_Lars.skin'
		deform_mesh = 'models/CAR/Male/M_Bmtl_Hair_Lars_Def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_bmtl_hathair_lars
		acc_skeleton = Skel_M_Bmtl_Hair_Lars
		acc_ragdoll = Rag_M_Bmtl_Hair_Lars
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
		desc_id = m_bmtl_hair_dread
		frontend_desc = qs("\LDreads")
		mesh = 'models/CAR/Male/M_Bmtl_Hair_Dread.skin'
		deform_mesh = 'models/CAR/Male/M_Bmtl_Hair_Dread_Def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_bmtl_hathair_dread
		acc_skeleton = Skel_M_Bmtl_Hair_Dread
		acc_ragdoll = Rag_M_Bmtl_Hair_Dread
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
		desc_id = M_Clsc_Hair_Country
		frontend_desc = qs("\LSeattle's Finest")
		mesh = 'models/CAR/Male/M_Clsc_hair_Country.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_hair_Country_def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_clsc_hathair_country
		materials = [
			M_Clsc_Hair_Country_hair
		]
		acc_skeleton = Skel_M_Clsc_hair_Country
		acc_ragdoll = Rag_M_Clsc_hair_Country
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
			`Classic Rock`
			Rock
		]
	}
	{
		desc_id = m_clsc_hair_messy
		frontend_desc = qs("\LHansel")
		mesh = 'models/CAR/Male/M_Clsc_Hair_Messy.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_Hair_Messy_Def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_clsc_hathair_messy
		acc_skeleton = Skel_M_Clsc_Hair_Messy
		acc_ragdoll = Rag_M_Clsc_Hair_Messy
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
		desc_id = m_clsc_hair_afro
		frontend_desc = qs("\LBig Cloud")
		mesh = 'models/CAR/Male/M_Clsc_Hair_Afro.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_Hair_Afro_def.skin'
		CAS_Male_Hair_Common_Settings_SkinShader
		hat_hair = m_clsc_hathair_afro
		materials = [
			M_Clsc_Hair_Afro_Primary
		]
		acc_skeleton = Skel_M_Clsc_Hair_Afro
		acc_ragdoll = Rag_M_Clsc_Hair_Afro
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
		desc_id = m_clsc_hair_jimi
		frontend_desc = qs("\LLove Child")
		mesh = 'models/CAR/Male/M_Clsc_Hair_Jimi.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_Hair_Jimi_Def.skin'
		CAS_Male_Hair_Common_Settings_SkinShader
		hat_hair = m_clsc_hathair_jimi
		acc_skeleton = Skel_M_Clsc_Hair_Jimi
		acc_ragdoll = Rag_M_Clsc_Hair_Jimi
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
			M_Clsc_Hair_Jimi_Primary
			M_Clsc_Hair_Jimi_Secondary
		]
		genre = [
			`Classic Rock`
		]
		random_weight = 0.25
	}
	{
		desc_id = M_Glam_Hair_LaPalms
		frontend_desc = qs("\LPalmae")
		mesh = 'models/CAR/Male/M_Glam_Hair_LaPalms.skin'
		deform_mesh = 'models/CAR/Male/M_Glam_Hair_LaPalms_Def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_glam_hathair_lapalms
		acc_skeleton = Skel_M_Glam_Hair_LaPalms
		acc_ragdoll = Rag_M_Glam_Hair_LaPalms
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
			`Glam Rock`
		]
		random_weight = 0.25
	}
	{
		desc_id = M_Glam_Hair_Seagull
		frontend_desc = qs("\LSeagull")
		mesh = 'models/CAR/Male/M_Glam_Hair_Seagull.skin'
		deform_mesh = 'models/CAR/Male/M_Glam_Hair_Seagull_Def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_glam_hathair_seagull
		acc_skeleton = Skel_M_Glam_Hair_Seagull
		acc_ragdoll = Rag_M_Glam_Hair_Seagull
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
		desc_id = m_glam_hair_gold
		frontend_desc = qs("\LLate 70's")
		mesh = 'models/CAR/Male/M_Glam_Hair_Gold.skin'
		deform_mesh = 'models/CAR/Male/M_Glam_Hair_Gold_Def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_glam_hathair_gold
		acc_skeleton = Skel_M_Glam_Hair_Gold
		acc_ragdoll = Rag_M_Glam_Hair_Gold
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
		desc_id = M_Goth_Hair_Remedy
		frontend_desc = qs("\LThe Remedy")
		mesh = 'models/CAR/Male/M_Goth_Hair_Remedy.skin'
		deform_mesh = 'models/CAR/Male/M_Goth_Hair_Remedy_def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_goth_hathair_remedy
		acc_skeleton = Skel_M_Goth_Hair_Remedy
		acc_ragdoll = Rag_M_Goth_Hair_Remedy
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
			Goth
		]
	}
	{
		desc_id = m_goth_hair_dreads
		frontend_desc = qs("\LGoth Dreads")
		mesh = 'models/CAR/Male/M_Goth_Hair_Dreads.skin'
		deform_mesh = 'models/CAR/Male/M_Goth_Hair_Dreads_def.skin'
		CAS_Male_Hair_Common_Settings_SkinShader
		hat_hair = m_goth_hathair_dreads
		materials = [
			M_Goth_Hair_Dreads_Primary
		]
		acc_skeleton = Skel_M_Goth_Hair_Dreads
		acc_ragdoll = Rag_M_Goth_Hair_Dreads
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
		desc_id = m_goth_hair_devilock
		frontend_desc = qs("\LDevilock")
		mesh = 'models/CAR/Male/M_Goth_Hair_Devilock.skin'
		deform_mesh = 'models/CAR/Male/M_Goth_Hair_Devilock_def.skin'
		CAS_Male_Hair_Common_Settings
		hat_hair = m_goth_hathair_devilock
		acc_skeleton = Skel_M_Goth_Hair_Devilock
		acc_ragdoll = Rag_M_Goth_Hair_Devilock
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_03
			Bone_ACC_Head_05
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
		genre = [
			Goth
			Punk
		]
		material_groups = [
			{
				materials = [
					M_Goth_Hair_Devilock_hair
					M_Goth_Hair_Devilock_hairtop
				]
				shader = $cas_shader_hair
			}
		]
	}
	{
		desc_id = M_Metl_Hair_Axel
		frontend_desc = qs("\LHeadbanger's Mop")
		mesh = 'models/CAR/Male/M_Metl_Hair_Axel.skin'
		deform_mesh = 'models/CAR/Male/M_Metl_Hair_Axel_def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_metl_hathair_axel
		acc_skeleton = Skel_M_Metl_Hair_Axel
		acc_ragdoll = Rag_M_Metl_Hair_Axel
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
			Rock
		]
	}
	{
		desc_id = M_Metl_Hair_MidHigh
		frontend_desc = qs("\LSix Gun")
		mesh = 'models/CAR/Male/M_Metl_Hair_MidHigh.skin'
		deform_mesh = 'models/CAR/Male/M_Metl_Hair_MidHigh_def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_metl_hathair_midhigh
		acc_skeleton = Skel_M_Metl_Hair_MidHigh
		acc_ragdoll = Rag_M_Metl_Hair_MidHigh
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
			`Glam Rock`
		]
	}
	{
		desc_id = M_Pop_Hair_Buzz
		frontend_desc = qs("\LBuzz Saw")
		mesh = 'models/CAR/Male/M_Pop_Hair_Buzz.skin'
		deform_mesh = 'models/CAR/Male/M_Pop_Hair_Buzz_def.skin'
		$CAS_Male_Hair_Common_Settings_SkinShader
		hat_hair = m_pop_hathair_buzz
		genre = [
			Pop
		]
		random_weight = 0.25
	}
	{
		desc_id = M_Pop_Hair_Emo1
		frontend_desc = qs("\LEmodoo")
		mesh = 'models/CAR/Male/M_Pop_Hair_Emo1.skin'
		deform_mesh = 'models/CAR/Male/M_Pop_Hair_Emo1_def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_pop_hathair_emo1
		acc_skeleton = Skel_M_Pop_Hair_Emo1
		acc_ragdoll = Rag_M_Pop_Hair_Emo1
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
		]
		genre = [
			Pop
			Rock
		]
	}
	{
		desc_id = M_Pop_Hair_Pomp
		frontend_desc = qs("\LPompadour")
		mesh = 'models/CAR/Male/M_Pop_Hair_Pomp.skin'
		deform_mesh = 'models/CAR/Male/M_Pop_Hair_Pomp_def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_pop_hathair_pomp
		acc_skeleton = Skel_M_Pop_Hair_Pomp
		acc_ragdoll = Rag_M_Pop_Hair_Pomp
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
			Pop
			Rock
		]
	}
	{
		desc_id = M_Pop_Hair_EddieKnox
		frontend_desc = qs("\LEddieKnox")
		mesh = 'models/CAR/Male/M_Pop_Hair_EddieKnox.skin'
		deform_mesh = 'models/CAR/Male/M_Pop_Hair_EddieKnox_def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_pop_hathair_pomp
		acc_skeleton = Skel_M_Pop_Hair_Pomp
		acc_ragdoll = Rag_M_Pop_Hair_Pomp
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
		hidden
	}
	{
		desc_id = M_BBKid_Hair_Beanie
		frontend_desc = qs("\LBBKid_Hair_Beanie")
		mesh = 'models/CAR/Male/M_BBKid_Hair_Beanie.skin'
		deform_mesh = 'models/CAR/Male/M_BBKid_Hair_Beanie_def.skin'
		hat_hair = none
		hidden
		random_weight = 0.0
		acc_skeleton = Skel_M_Clsc_hair_Country
		acc_ragdoll = Rag_M_Clsc_hair_Country
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
			Bone_ACC_Head_05
		]
	}
	{
		desc_id = m_punk_hair_hawk
		frontend_desc = qs("\LMohawk")
		mesh = 'models/CAR/Male/M_Punk_Hair_Hawk.skin'
		deform_mesh = 'models/CAR/Male/M_Punk_Hair_Hawk_Def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = none
		acc_skeleton = Skel_M_Punk_Hair_Hawk
		acc_ragdoll = Rag_M_Punk_Hair_Hawk
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
		desc_id = M_Punk_Hair_LSpike
		frontend_desc = qs("\LLiberty Spikes")
		mesh = 'models/CAR/Male/M_Punk_Hair_LSpike.skin'
		deform_mesh = 'models/CAR/Male/M_Punk_Hair_LSpike_Def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = none
		acc_skeleton = Skel_M_Punk_Hair_LSpike
		acc_ragdoll = Rag_M_Punk_Hair_LSpike
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
			Punk
		]
	}
	{
		desc_id = m_punk_hair_spike
		frontend_desc = qs("\LEggs Whites n Suga")
		mesh = 'models/CAR/Male/M_Punk_Hair_Spike.skin'
		deform_mesh = 'models/CAR/Male/M_Punk_Hair_Spike_Def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_punk_hathair_spike
		acc_skeleton = Skel_M_Punk_Hair_Spike
		acc_ragdoll = Rag_M_Punk_Hair_Spike
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
			Punk
		]
		random_weight = 0.25
	}
	{
		desc_id = M_Rock_Hair_Drummer
		frontend_desc = qs("\LWind Tunnel Tested")
		mesh = 'models/CAR/Male/M_Rock_Hair_Drummer.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_Hair_Drummer_def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_rock_hathair_drummer
		acc_skeleton = Skel_M_Rock_Hair_Drummer
		acc_ragdoll = Rag_M_Rock_Hair_Drummer
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_03
			Bone_ACC_Head_05
			Bone_ACC_Head_07
		]
		genre = [
			Rock
		]
	}
	{
		desc_id = M_Rock_Hair_Guitarist
		frontend_desc = qs("\LKingsley")
		mesh = 'models/CAR/Male/M_Rock_Hair_Guitarist.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_Hair_Guitarist_def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_rock_hathair_guitarist
		acc_skeleton = Skel_M_Rock_Hair_Guitarist
		acc_ragdoll = Rag_M_Rock_Hair_Guitarist
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
			`Heavy Metal`
		]
		random_weight = 0.1
	}
	{
		desc_id = M_Rock_Hair_MidPart
		frontend_desc = qs("\LWhoa!")
		mesh = 'models/CAR/Male/M_Rock_Hair_MidPart.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_Hair_MidPart_def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_rock_hathair_midpart
		acc_skeleton = Skel_M_Rock_Hair_MidPart
		acc_ragdoll = Rag_M_Rock_Hair_MidPart
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
			Rock
		]
	}
	{
		desc_id = m_rock_hair_slash
		frontend_desc = qs("\LCurly Cue")
		mesh = 'models/CAR/Male/M_Rock_Hair_Slash.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_Hair_Slash_def.skin'
		$CAS_Male_Hair_Common_Settings
		hat_hair = m_rock_hathair_slash
		acc_skeleton = Skel_M_Rock_Hair_Slash
		acc_ragdoll = Rag_M_Rock_Hair_Slash
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
			`Heavy Metal`
		]
		random_weight = 0.0
	}
]
CAS_Male_Hat_Hair_Common_Settings = {
	modify_all_materials
	shader = $cas_shader_hair
}
CAS_Male_Hat_Hair_Common_Settings_SkinShader = {
	modify_all_materials
	shader = $cas_shader_skin
}
CAS_Male_Hat_Hair = [
	{
		desc_id = none
		frontend_desc = qs("None")
	}
	{
		desc_id = m_bmtl_hathair_lars
		mesh = 'models/CAR/Male/M_Bmtl_HatHair_Lars.skin'
		deform_mesh = 'models/CAR/Male/M_Bmtl_HatHair_Lars_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Bmtl_Hair_Lars
		acc_ragdoll = Rag_M_Bmtl_Hair_Lars
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
		desc_id = m_bmtl_hathair_dread
		mesh = 'models/CAR/Male/M_Bmtl_HatHair_Dread.skin'
		deform_mesh = 'models/CAR/Male/M_Bmtl_HatHair_Dread_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Bmtl_Hair_Dread
		acc_ragdoll = Rag_M_Bmtl_Hair_Dread
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
		desc_id = m_clsc_hathair_messy
		mesh = 'models/CAR/Male/M_Clsc_HatHair_Messy.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_HatHair_Messy_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Clsc_Hair_Messy
		acc_ragdoll = Rag_M_Clsc_Hair_Messy
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
		desc_id = m_clsc_hathair_country
		mesh = 'models/CAR/Male/M_Clsc_Hathair_Country.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_Hathair_Country_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		materials = [
			M_Clsc_Hair_Country_hair
		]
		acc_skeleton = Skel_M_Clsc_Hair_Messy
		acc_ragdoll = Rag_M_Clsc_Hair_Messy
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
		desc_id = m_clsc_hathair_george
		mesh = 'models/CAR/Male/M_Clsc_HatHair_George.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_HatHair_George_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Clsc_Hair_George
		acc_ragdoll = Rag_M_Clsc_Hair_George
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
		desc_id = M_Clsc_HatHair_Contest
		mesh = 'models/CAR/Male/M_Clsc_HatHair_Contest.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_HatHair_Contest_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
	}
	{
		desc_id = m_clsc_hathair_jimi
		mesh = 'models/CAR/Male/M_Clsc_HatHair_Jimi.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_HatHair_Jimi_def.skin'
		CAS_Male_Hair_Common_Settings_SkinShader
		materials = [
			M_Clsc_Hair_Jimi_Primary
			M_Clsc_Hair_Jimi_Secondary
		]
		acc_skeleton = Skel_M_Clsc_Hair_George
		acc_ragdoll = Rag_M_Clsc_Hair_George
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
		desc_id = m_clsc_hathair_afro
		mesh = 'models/CAR/Male/M_Clsc_HatHair_Afro.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_HatHair_Afro_def.skin'
		CAS_Male_Hair_Common_Settings_SkinShader
		materials = [
			M_Clsc_Hair_Afro_Primary
		]
		acc_skeleton = Skel_M_Clsc_Hair_Afro
		acc_ragdoll = Rag_M_Clsc_Hair_Afro
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
		desc_id = m_glam_hathair_lapalms
		mesh = 'models/CAR/Male/M_Glam_HatHair_LaPalms.skin'
		deform_mesh = 'models/CAR/Male/M_Glam_HatHair_LaPalms_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Glam_Hair_LaPalms
		acc_ragdoll = Rag_M_Glam_Hair_LaPalms
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
		desc_id = m_glam_hathair_seagull
		mesh = 'models/CAR/Male/M_Glam_HatHair_Seagull.skin'
		deform_mesh = 'models/CAR/Male/M_Glam_HatHair_Seagull_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Glam_Hair_Seagull
		acc_ragdoll = Rag_M_Glam_Hair_Seagull
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
		desc_id = m_glam_hathair_gold
		mesh = 'models/CAR/Male/M_Glam_HatHair_Gold.skin'
		deform_mesh = 'models/CAR/Male/M_Glam_HatHair_Gold_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Glam_Hair_Gold
		acc_ragdoll = Rag_M_Glam_Hair_Gold
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
		desc_id = m_metl_hathair_axel
		mesh = 'models/CAR/Male/M_Metl_HatHair_Axel.skin'
		deform_mesh = 'models/CAR/Male/M_Metl_HatHair_Axel_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Metl_Hair_Axel
		acc_ragdoll = Rag_M_Metl_Hair_Axel
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
		desc_id = m_metl_hathair_midhigh
		mesh = 'models/CAR/Male/M_Metl_HatHair_MidHigh.skin'
		deform_mesh = 'models/CAR/Male/M_Metl_HatHair_MidHigh_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Metl_Hair_MidHigh
		acc_ragdoll = Rag_M_Metl_Hair_MidHigh
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
		desc_id = m_pop_hathair_buzz
		mesh = 'models/CAR/Male/M_Pop_HatHair_Buzz.skin'
		deform_mesh = 'models/CAR/Male/M_Pop_HatHair_Buzz_def.skin'
		$CAS_Male_Hair_Common_Settings_SkinShader
	}
	{
		desc_id = m_pop_hathair_pomp
		mesh = 'models/CAR/Male/M_Pop_HatHair_Pomp.skin'
		deform_mesh = 'models/CAR/Male/M_Pop_HatHair_Pomp_def.skin'
		$CAS_Male_Hair_Common_Settings
		acc_skeleton = Skel_M_Pop_Hair_Pomp
		acc_ragdoll = Rag_M_Pop_Hair_Pomp
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
		desc_id = m_pop_hathair_emo1
		mesh = 'models/CAR/Male/M_Pop_HatHair_Emo1.skin'
		deform_mesh = 'models/CAR/Male/M_Pop_HatHair_Emo1_def.skin'
		$CAS_Male_Hair_Common_Settings
		acc_skeleton = Skel_M_Pop_Hair_Emo1
		acc_ragdoll = Rag_M_Pop_Hair_Emo1
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_02
			Bone_ACC_Head_03
			Bone_ACC_Head_04
		]
	}
	{
		desc_id = m_punk_hathair_spike
		mesh = 'models/CAR/Male/M_Punk_Hathair_Spike.skin'
		deform_mesh = 'models/CAR/Male/M_Punk_Hathair_Spike_Def.skin'
		$CAS_Male_Hair_Common_Settings
		acc_skeleton = Skel_M_Punk_Hair_Spike
		acc_ragdoll = Rag_M_Punk_Hair_Spike
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
		desc_id = m_rock_hathair_drummer
		mesh = 'models/CAR/Male/M_Rock_HatHair_Drummer.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_HatHair_Drummer_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Rock_Hair_Drummer
		acc_ragdoll = Rag_M_Rock_Hair_Drummer
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_03
			Bone_ACC_Head_05
			Bone_ACC_Head_07
		]
	}
	{
		desc_id = m_rock_hathair_midpart
		mesh = 'models/CAR/Male/M_Rock_HatHair_MidPart.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_HatHair_MidPart_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Rock_Hair_MidPart
		acc_ragdoll = Rag_M_Rock_Hair_MidPart
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
		desc_id = m_rock_hathair_slash
		mesh = 'models/CAR/Male/M_Rock_HatHair_Slash.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Rock_Hair_Slash
		acc_ragdoll = Rag_M_Rock_Hair_Slash
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
		desc_id = m_rock_hathair_guitarist
		mesh = 'models/CAR/Male/M_Rock_HatHair_Guitarist.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_HatHair_Guitarist_def.skin'
		$CAS_Male_Hair_Common_Settings
		acc_skeleton = Skel_M_Rock_Hair_Guitarist
		acc_ragdoll = Rag_M_Rock_Hair_Guitarist
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
		desc_id = m_goth_hathair_devilock
		mesh = 'models/CAR/Male/M_Goth_HatHair_Devilock.skin'
		deform_mesh = 'models/CAR/Male/M_Goth_HatHair_Devilock_def.skin'
		$CAS_Male_Hat_Hair_Common_Settings
		acc_skeleton = Skel_M_Goth_Hair_Devilock
		acc_ragdoll = Rag_M_Goth_Hair_Devilock
		acc_bones = [
			Bone_ACC_Head_01
			Bone_ACC_Head_03
			Bone_ACC_Head_05
			Bone_ACC_Head_07
			Bone_ACC_Head_08
			Bone_ACC_Head_09
		]
	}
	{
		desc_id = m_goth_hathair_dreads
		mesh = 'models/CAR/Male/M_Goth_HatHair_Dreads.skin'
		deform_mesh = 'models/CAR/Male/M_Goth_HatHair_Dreads_def.skin'
		CAS_Male_Hair_Common_Settings_SkinShader
		materials = [
			M_Goth_Hair_Dreads_Primary
		]
		acc_skeleton = Skel_M_Goth_Hair_Dreads
		acc_ragdoll = Rag_M_Goth_Hair_Dreads
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
		desc_id = m_goth_hathair_remedy
		mesh = 'models/CAR/Male/M_Goth_HatHair_Remedy.skin'
		deform_mesh = 'models/CAR/Male/M_Goth_HatHair_Remedy_def.skin'
		$CAS_Male_Hair_Common_Settings
		acc_skeleton = Skel_M_Goth_Hair_Remedy
		acc_ragdoll = Rag_M_Goth_Hair_Remedy
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
]
CAS_Male_Hat = [
	{
		desc_id = none
		frontend_desc = qs("None")
		random_weight = 4.0
	}
	{
		desc_id = m_clsc_hat_cowboy
		frontend_desc = qs("\LColton")
		mesh = 'models/CAR/Male/M_Clsc_Hat_Cowboy.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_Hat_Cowboy_def.skin'
		genre = [
			`Classic Rock`
		]
		price = 200
		random_weight = 0.25
		locked
		polaroid = p_m_clsc_hat_cowboy
	}
	{
		desc_id = m_punk_hat_helmet
		frontend_desc = qs("\LRoad Fury")
		mesh = 'models/CAR/Male/M_Punk_Hat_Helmet.skin'
		deform_mesh = 'models/CAR/Male/M_Punk_Hat_Helmet_def.skin'
		genre = [
			Punk
		]
		random_weight = 0.8
		price = 450
	}
	{
		desc_id = m_clsc_hat_cptn
		frontend_desc = qs("\LCaptain Nemo")
		mesh = 'models/CAR/Male/M_Clsc_Hat_Cptn.skin'
		materials = [
			m_clsc_hat_cptn_primary
		]
		deform_mesh = 'models/CAR/Male/M_Clsc_Hat_Cptn_def.skin'
		genre = [
			`Classic Rock`
		]
		price = 300
		random_weight = 0.1
		locked
		polaroid = p_m_clsc_hat_cptn
	}
	{
		desc_id = m_punk_hat_kfc
		frontend_desc = qs("\LI Can't See")
		mesh = 'models/CAR/Male/M_Punk_Hat_KFC.skin'
		deform_mesh = 'models/CAR/Male/M_Punk_Hat_KFC_def.skin'
		hat_hair = none
		price = 800
		locked
		random_weight = 0.0
	}
	{
		desc_id = M_Fun_Hat_EyeBall
		frontend_desc = qs("\LEyeball")
		mesh = 'models/CAR/Male/M_Fun_Hat_EyeBall.skin'
		deform_mesh = 'models/CAR/Male/M_Fun_Hat_EyeBall_def.skin'
		hat_hair = none
		price = 150000
		polaroid = P_M_Fun_Hat_EyeBall
		locked
		random_weight = 0.0
	}
	{
		desc_id = m_clsc_hat_triangle
		frontend_desc = qs("\LArr Me Matey")
		mesh = 'models/CAR/Male/M_Clsc_Hat_Triangle.skin'
		materials = [
			M_Clsc_Hat_Triangle_Primary
			M_Clsc_Hat_Triangle_Secondary
		]
		genre = [
			`Classic Rock`
		]
		price = 500
		random_weight = 0.0
		locked
		polaroid = P_M_Clsc_Hat_Triangle
	}
	{
		desc_id = m_pop_hat_bucket
		frontend_desc = qs("\LFedora Spunk")
		mesh = 'models/CAR/Male/M_Pop_Hat_Bucket.skin'
		deform_mesh = 'models/CAR/Male/M_Pop_Hat_Bucket_def.skin'
		materials = [
			M_Pop_Hat_Bucket_Primary
			M_Pop_Hat_Bucket_Secondary
		]
		genre = [
			Pop
		]
		price = 125
		random_weight = 0.5
	}
	{
		desc_id = m_pop_hat_bucket2
		frontend_desc = qs("\LGoin' Fishin'")
		mesh = 'models/CAR/Male/M_Pop_Hat_Bucket2.skin'
		deform_mesh = 'models/CAR/Male/M_Pop_Hat_Bucket2_def.skin'
		materials = [
			M_Pop_Hat_Bucket2_Primary
			M_Pop_Hat_Bucket2_Secondary
		]
		genre = [
			Pop
		]
		price = 125
		random_weight = 0.5
	}
	{
		desc_id = M_Pop_Head_GasMask
		frontend_desc = qs("\LGas Mask")
		mesh = 'models/CAR/Male/M_Pop_Head_GasMask.skin'
		deform_mesh = 'models/CAR/Male/M_Pop_Head_GasMask_def.skin'
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
		desc_id = M_Pop_Head_WW2Helm
		frontend_desc = qs("\LCorporal Rawk")
		mesh = 'models/CAR/Male/M_Pop_Head_WW2Helm.skin'
		deform_mesh = 'models/CAR/Male/M_Pop_Head_WW2Helm_def.skin'
		price = 800
		random_weight = 0.0
		locked
		polaroid = P_M_Pop_Hat_WW2Helm
	}
	{
		desc_id = m_rock_hat_starpin
		frontend_desc = qs("\LStar Pin")
		mesh = 'models/CAR/Male/M_Rock_Hat_Starpin.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_Hat_Starpin_def.skin'
		materials = [
			M_Rock_Hat_Starpin_Primary
		]
		genre = [
			Rock
		]
		price = 175
		random_weight = 0.25
		locked
		polaroid = p_m_rock_hat_starpin
	}
	{
		desc_id = m_rock_hat_cowboy
		frontend_desc = qs("\LStinking Bandana")
		mesh = 'models/CAR/Male/M_Rock_Hat_Cowboy.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_Hat_Cowboy_def.skin'
		materials = [
			M_Rock_Hat_Cowboy_Primary
			M_Rock_Hat_Cowboy_Secondary
		]
		genre = [
			Rock
		]
		price = 250
		random_weight = 0.25
	}
	{
		desc_id = m_metl_hat_zakk
		frontend_desc = qs("\LOC")
		mesh = 'models/CAR/Male/M_Metl_Hat_Zakk.skin'
		deform_mesh = 'models/CAR/Male/M_Metl_Hat_Zakk_def.skin'
		genre = [
			`Heavy Metal`
		]
		price = 400
		random_weight = 0.25
	}
	{
		desc_id = m_metl_hat_axel2
		frontend_desc = qs("\LPride")
		mesh = 'models/CAR/Male/M_Metl_Hat_Axel2.skin'
		deform_mesh = 'models/CAR/Male/M_Metl_Hat_Axel2_def.skin'
		genre = [
			`Heavy Metal`
		]
		price = 150
		random_weight = 0.4
	}
	{
		desc_id = M_Metl_Hat_Studs
		frontend_desc = qs("\LBiker Cruise")
		mesh = 'models/CAR/Male/M_Metl_Hat_Studs.skin'
		deform_mesh = 'models/CAR/Male/M_Metl_Hat_Studs_def.skin'
		genre = [
			`Heavy Metal`
		]
		price = 400
		locked
		random_weight = 0.0
	}
	{
		desc_id = M_Metl_Horn
		frontend_desc = qs("\LLonghorns")
		mesh = 'models/CAR/Male/M_Metl_acc_Horn.skin'
		deform_mesh = 'models/CAR/Male/M_Metl_acc_Horn_def.skin'
		materials = [
			m_metl_acc_horn_primary
			m_metl_acc_horn_hornbase
		]
		hat_hair = original_hair
		genre = [
			`Heavy Metal`
		]
		random_weight = 0.0
		locked
		polaroid = p_m_metl_acc_horn
	}
	{
		desc_id = m_bmtl_hat_chicken
		frontend_desc = qs("\LOver Easy")
		mesh = 'models/CAR/Male/M_Bmtl_Hat_Chicken.skin'
		materials = [
			M_Bmtl_Hat_Chicken_Primary
			M_Bmtl_Hat_Chicken_Secondary
		]
		hat_hair = none
		price = 500000
		polaroid = P_M_Bmtl_Hat_Chicken
		locked
		random_weight = 0.0
	}
	{
		desc_id = M_Bmtl_Hat_Viking
		frontend_desc = qs("\LFriedrich's Helm")
		mesh = 'models/CAR/Male/M_Bmtl_Hat_Viking.skin'
		deform_mesh = 'models/CAR/Male/M_Bmtl_Hat_Viking_def.skin'
		genre = [
			`Black Metal`
		]
		hat_hair = none
		price = 25000
		random_weight = 0.25
		random_weight_cpu = 0.0
		locked
		polaroid = P_F_Bmtl_Hat_Viking
	}
	{
		desc_id = M_Bmtl_Hat_SkullHelmet
		frontend_desc = qs("\LSkullgorth")
		mesh = 'models/CAR/Male/M_Bmtl_Hat_SkullHelmet.skin'
		materials = [
			m_bmtl_hat_skullhelmet_primary
			m_bmtl_hat_skullhelmet_secondary
		]
		deform_mesh = 'models/CAR/Male/M_Bmtl_Hat_SkullHelmet_def.skin'
		genre = [
			`Black Metal`
		]
		hat_hair = none
		price = 6066
		random_weight = 0.5
		random_weight_cpu = 0.1
		locked
		polaroid = P_M_Bmtl_Hat_SkullHelmet
	}
	{
		desc_id = M_Bmtl_Hat_Brain
		frontend_desc = qs("\LCortex")
		mesh = 'models/CAR/Male/M_Bmtl_Hat_Brain.skin'
		deform_mesh = 'models/CAR/Male/M_Bmtl_Hat_Brain_def.skin'
		genre = [
			`Black Metal`
		]
		material_groups = [
			{
				materials = [
					m_bmtl_hat_brain_primary
				]
				shader = $cas_shader_skin
			}
			{
				materials = [
					M_Bmtl_Hat_Brain_Secondary
				]
				shader = $cas_shader_skin
			}
		]
		hat_hair = none
		price = 100000
		random_weight = 0.0
	}
	{
		desc_id = m_goth_hat_tophat
		frontend_desc = qs("\LTop Hat")
		mesh = 'models/CAR/Male/M_Goth_Hat_TopHat.skin'
		deform_mesh = 'models/CAR/Male/M_Goth_Hat_TopHat_def.skin'
		$CAS_Male_Hair_Common_Settings
		material_groups = [
			{
				materials = [
					M_Goth_Acc_TopHat_Primary
				]
				shader = $cas_shader_hair
			}
			{
				materials = [
					M_Goth_Acc_TopHat_Secondary
				]
				shader = $cas_shader_skin
			}
		]
		genre = [
			Goth
		]
		price = 450
		random_weight = 0.25
		random_weight_cpu = 0.0
		locked
		polaroid = P_M_Goth_Hat_TopHat
	}
	{
		desc_id = M_Hat_Ninja_c1
		frontend_desc = qs("\LNinja Mask")
		mesh = 'models/CAR/Male/M_Hat_Ninja_c1.skin'
		deform_mesh = 'models/CAR/Male/M_Hat_Ninja_c1_def.skin'
		materials = [
			M_Hat_Ninja_c1_Primary
			M_Hat_Ninja_c1_Secondary
		]
		hat_hair = none
		price = 500
		random_weight = 0.0
	}
	{
		desc_id = M_Hat_Gorilla
		frontend_desc = qs("\LSimian")
		mesh = 'models/CAR/Male/M_Hat_Gorilla.skin'
		deform_mesh = 'models/CAR/Male/M_Hat_Gorilla_def.skin'
		hat_hair = none
		materials = [
			m_hat_gorilla_primary
		]
		price = 8000
		random_weight = 0.0
	}
	{
		desc_id = M_Hat_Pimp
		frontend_desc = qs("\L8 Track Playa")
		mesh = 'models/CAR/Male/M_Hat_Pimp.skin'
		deform_mesh = 'models/CAR/Male/M_Hat_Pimp_def.skin'
		materials = [
			m_hat_pimp_primary
			m_hat_pimp_secondary
			m_hat_pimp_feather
		]
		price = 2500
		locked
		polaroid = p_m_hat_pimp
		random_weight = 0.0
	}
]
CAS_Male_Facial_Hair_Common_Settings = {
	modify_all_materials
	shader = $cas_shader_hair
	random_weight = 0.0
}
CAS_Male_Facial_Hair = [
	{
		desc_id = none
		frontend_desc = qs("None")
		random_weight = 25.0
	}
	{
		desc_id = M_Rock_Fhair_Stub
		frontend_desc = qs("\LFive O'Clock")
		mesh = 'models/CAR/Male/M_Rock_Fhair_Stub.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_Fhair_Stub_def.skin'
		$CAS_Male_Hair_Common_Settings_SkinShader
		random_weight = 0.0
	}
	{
		desc_id = m_clsc_fhair_soulpatch
		frontend_desc = qs("\LSoul Patch")
		mesh = 'models/CAR/Male/M_Clsc_FHair_Soulpatch.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_FHair_Soulpatch_def.skin'
		$CAS_Male_Hair_Common_Settings_SkinShader
		materials = [
			M_Clsc_FHair_Soulpatch_Primary
		]
		random_weight = 0.0
	}
	{
		desc_id = M_Rock_Fhair_Goatee03
		frontend_desc = qs("\LRock Bottom")
		mesh = 'models/CAR/Male/M_Rock_Fhair_Goatee03.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_Fhair_Goatee03_def.skin'
		$CAS_Male_Hair_Common_Settings
		random_weight = 1.0
	}
	{
		desc_id = M_Rock_Fhair_Goatee01
		frontend_desc = qs("\LGoatee Lish")
		mesh = 'models/CAR/Male/M_Rock_Fhair_Goatee01.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_Fhair_Goatee01_def.skin'
		$CAS_Male_Hair_Common_Settings
		random_weight = 1.0
	}
	{
		desc_id = m_rock_fhair_goatee02
		frontend_desc = qs("\LFine Goatee")
		mesh = 'models/CAR/Male/M_Rock_Fhair_Goatee02.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_Fhair_Goatee02_def.skin'
		$CAS_Male_Hair_Common_Settings
		random_weight = 1.0
	}
	{
		desc_id = M_Clsc_Fhair_Stache01
		frontend_desc = qs("\LThe Stache")
		mesh = 'models/CAR/Male/M_Clsc_Fhair_Stache01.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_Fhair_Stache01_def.skin'
		$CAS_Male_Hair_Common_Settings
		random_weight = 0.0
	}
	{
		desc_id = M_Clsc_Fhair_Stache04
		frontend_desc = qs("\LBiker Stache")
		mesh = 'models/CAR/Male/M_Clsc_Fhair_Stache02.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_Fhair_Stache02_def.skin'
		$CAS_Male_Hair_Common_Settings
		random_weight = 0.0
	}
	{
		desc_id = M_Clsc_Fhair_Burns01
		frontend_desc = qs("\LMetal Chops")
		mesh = 'models/CAR/Male/M_Rock_Fhair_Burns01.skin'
		deform_mesh = 'models/CAR/Male/M_Rock_Fhair_Burns01_def.skin'
		$CAS_Male_Hair_Common_Settings
		random_weight = 0.0
	}
	{
		desc_id = m_bmtl_fhair_beard
		frontend_desc = qs("\LBeardy")
		mesh = 'models/CAR/Male/M_Bmtl_FHair_Beard.skin'
		deform_mesh = 'models/CAR/Male/M_Bmtl_FHair_Beard_def.skin'
		$CAS_Male_Hair_Common_Settings
		random_weight = 0.0
	}
	{
		desc_id = M_Clsc_Fhair_Country
		frontend_desc = qs("\LRural Beardness")
		mesh = 'models/CAR/Male/M_Clsc_Fhair_Country.skin'
		deform_mesh = 'models/CAR/Male/M_Clsc_Fhair_Country_def.skin'
		$CAS_Male_Hair_Common_Settings
		random_weight = 0.0
	}
]
CAS_Male_Age = [
	{
		desc_id = CAR_Male_Teen
		frontend_desc = qs("Teen")
	}
	{
		desc_id = CAR_Male_Mature
		replace = 'tex/models/Characters/car/male/car_male_head_n.dds'
		with = 'tex/models/Characters/Layers/CAR/Male/Age/CAR_Male_Age03_N.dds'
		replace2 = 'tex/models/Characters/car/male/car_male_head_d.dds'
		with2 = 'tex/models/Characters/Layers/CAR/Male/Age/CAR_male_Age03_D.dds'
		frontend_desc = qs("Mature")
		in = CAS_Body
		in2 = CAS_Body
		random_weight = 0.25
	}
	{
		desc_id = CAR_Male_Aged
		replace = 'tex/models/Characters/car/male/car_male_head_n.dds'
		with = 'tex/models/Characters/Layers/CAR/Male/Age/CAR_Male_Age04_N.dds'
		replace2 = 'tex/models/Characters/car/male/car_male_head_d.dds'
		with2 = 'tex/models/Characters/Layers/CAR/Male/Age/CAR_male_Age04_D.dds'
		frontend_desc = qs("Aged")
		in = CAS_Body
		in2 = CAS_Body
		random_weight = 0.0
	}
	{
		desc_id = CAR_Male_Old
		replace = 'tex/models/Characters/car/male/car_male_head_n.dds'
		with = 'tex/models/Characters/Layers/CAR/Male/Age/CAR_Male_Age05_N.dds'
		replace2 = 'tex/models/Characters/car/male/car_male_head_d.dds'
		with2 = 'tex/models/Characters/Layers/CAR/Male/Age/CAR_male_Age05_D.dds'
		frontend_desc = qs("Old")
		in = CAS_Body
		in2 = CAS_Body
		random_weight = 0.0
	}
]
