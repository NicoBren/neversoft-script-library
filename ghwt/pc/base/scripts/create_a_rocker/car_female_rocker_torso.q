CAS_Female_Torso = [
	{
		desc_id = f_torso_tshirt
		frontend_desc = qs("\LT-Shirt")
		mesh = 'models/CAR/Female/F_Torso_TShirt.skin'
		mesh1 = 'models/CAR/Female/F_Torso_TShirtLOD.skin'
		mesh_lod = 1
		random_weight = 0.5
		genre = [
			Rock
			`Heavy Metal`
		]
		materials = [
			M_Torso_TShirt_Primary
		]
		sections = [
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("Tshirt Logos")
				base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
				material = M_Torso_TShirt_Primary
				mask = $car_graphics
				Cas_1
				userlayer
			}
		]
		sections = [
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
				material = M_Torso_TShirt_Primary
				mask = $car_basic_primitives_1
				userlayer
				omit_base_tex
				wrap_u
				Cas_1
				initial_values = {
					x_scale = 21
					y_scale = 30
				}
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
				material = M_Torso_TShirt_Primary
				mask = $car_basic_primitives_2
				userlayer
				omit_base_tex
				wrap_u
				Cas_1
				initial_values = {
					x_scale = 21
					y_scale = 30
				}
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
				material = M_Torso_TShirt_Primary
				mask = $car_gradiant_shapes
				userlayer
				omit_base_tex
				wrap_u
				Cas_1
				initial_values = {
					x_scale = 21
					y_scale = 30
				}
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
				material = M_Torso_TShirt_Primary
				mask = $car_icons
				userlayer
				omit_base_tex
				wrap_u
				Cas_1
				initial_values = {
					x_scale = 21
					y_scale = 30
				}
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
				material = M_Torso_TShirt_Primary
				mask = $car_living_shapes
				userlayer
				omit_base_tex
				wrap_u
				Cas_1
				initial_values = {
					x_scale = 21
					y_scale = 30
				}
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
				material = M_Torso_TShirt_Primary
				mask = $car_graphics
				userlayer
				omit_base_tex
				wrap_u
				Cas_1
				initial_values = {
					x_scale = 21
					y_scale = 30
				}
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
				material = M_Torso_TShirt_Primary
				mask = $car_sponsors
				userlayer
				omit_base_tex
				wrap_u
				Cas_1
				initial_values = {
					x_scale = 21
					y_scale = 30
				}
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
				material = M_Torso_TShirt_Primary
				mask = $car_fontgrid_title_a1
				Cas_1
				omit_base_tex
				wrap_u
				userlayer
				initial_values = {
					x_scale = 80
					y_scale = 80
				}
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
				material = M_Torso_TShirt_Primary
				mask = $car_fontgrid_text_a3
				Cas_1
				omit_base_tex
				wrap_u
				userlayer
				initial_values = {
					x_scale = 80
					y_scale = 80
				}
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
				material = M_Torso_TShirt_Primary
				mask = $car_fontgrid_text_a6
				Cas_1
				omit_base_tex
				wrap_u
				userlayer
				initial_values = {
					x_scale = 80
					y_scale = 80
				}
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
				material = M_Torso_TShirt_Primary
				mask = $car_fontgrid_text_a8
				Cas_1
				omit_base_tex
				wrap_u
				userlayer
				initial_values = {
					x_scale = 80
					y_scale = 80
				}
			}
		]
	}
	{
		desc_id = f_torso_layered
		frontend_desc = qs("\LLayered Shirt")
		mesh = 'models/CAR/Female/F_Torso_Layered.skin'
		mesh1 = 'models/CAR/Female/F_Torso_LayeredLOD.skin'
		mesh_lod = 1
		genre = [
			Rock
		]
		materials = [
			F_Torso_Layered_Primary
			F_Torso_Layered_Secondary
		]
	}
	{
		desc_id = f_torso_hoodie
		frontend_desc = qs("\LZebra")
		mesh = 'models/CAR/Female/F_Torso_Hoodie.skin'
		mesh1 = 'models/CAR/Female/F_Torso_HoodieLOD.skin'
		mesh_lod = 1
		genre = [
			Rock
		]
		materials = [
			F_Torso_Hoodie_Primary
			F_Torso_Hoodie_Secondary
		]
		acc_skeleton = Skel_F_Torso_Hoodie
		acc_ragdoll = Rag_F_Torso_Hoodie
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = f_punk_torso_zipup
		frontend_desc = qs("\LZipup")
		mesh = 'models/CAR/Female/F_Punk_Torso_Zipup.skin'
		mesh1 = 'models/CAR/Female/F_Punk_Torso_ZipupLOD.skin'
		mesh_lod = 1
		materials = [
			F_Punk_Torso_Zipup_Primary
		]
		genre = [
			Punk
		]
		acc_skeleton = Skel_F_Punk_Torso_Zipup
		acc_ragdoll = Rag_F_Punk_Torso_Zipup
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 75
	}
	{
		desc_id = f_punk_torso_leather
		frontend_desc = qs("\LRock The Idol")
		mesh = 'models/CAR/Female/F_Punk_Torso_Leather.skin'
		mesh1 = 'models/CAR/Female/F_Punk_Torso_LeatherLOD.skin'
		mesh_lod = 1
		genre = [
			Punk
		]
		acc_skeleton = Skel_F_Punk_Torso_Leather
		acc_ragdoll = Rag_F_Punk_Torso_Leather
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 450
	}
	{
		desc_id = f_punk_torso_leather_02
		frontend_desc = qs("\LSo Punk")
		mesh = 'models/CAR/Female/F_Punk_Torso_Leather_02.skin'
		mesh1 = 'models/CAR/Female/F_Punk_Torso_Leather02LOD.skin'
		mesh_lod = 1
		genre = [
			Punk
		]
		acc_skeleton = Skel_F_Punk_Torso_Leather
		acc_ragdoll = Rag_F_Punk_Torso_Leather
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 500
	}
	{
		desc_id = f_punk_torso_leather_03
		frontend_desc = qs("\LChaos")
		mesh = 'models/CAR/Female/F_Punk_Torso_Leather_03.skin'
		mesh1 = 'models/CAR/Female/F_Punk_Torso_Leather03LOD.skin'
		mesh_lod = 1
		genre = [
			Punk
		]
		acc_skeleton = Skel_F_Punk_Torso_Leather
		acc_ragdoll = Rag_F_Punk_Torso_Leather
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 650
	}
	{
		desc_id = F_Punk_Torso_Judy01
		frontend_desc = qs("\LShocking")
		mesh = 'models/CAR/Female/F_Punk_Torso_Judy01.skin'
		mesh1 = 'models/CAR/Female/F_Punk_Torso_Judy01LOD.skin'
		mesh_lod = 1
		materials = [
			F_Punk_Torso_Judy01_Primary
			F_Punk_Torso_Judy01_Secondary
		]
		genre = [
			Punk
		]
		acc_skeleton = Skel_F_Punk_Torso_JudyNails1
		acc_ragdoll = Rag_F_Punk_Torso_JudyNails1
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		random_weight = 0.0
	}
	{
		desc_id = f_punk_torso_stripe
		frontend_desc = qs("\LFortunate")
		mesh = 'models/CAR/Female/F_Punk_Torso_Stripe.skin'
		mesh1 = 'models/CAR/Female/F_Punk_Torso_StripeLOD.skin'
		mesh_lod = 1
		materials = [
			F_Punk_Torso_Stripe_Primary
			F_Punk_Torso_Stripe_Secondary
		]
		genre = [
			Punk
		]
		acc_skeleton = Skel_F_Punk_Torso_Stripe
		acc_ragdoll = Rag_F_Punk_Torso_Stripe
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
	}
	{
		desc_id = F_Punk_Torso_Judy02
		frontend_desc = qs("\LSkool Grrl")
		mesh = 'models/CAR/Female/F_Punk_Torso_Judy02.skin'
		mesh1 = 'models/CAR/Female/F_Punk_Torso_Judy02LOD.skin'
		mesh_lod = 1
		materials = [
			F_Punk_Torso_Judy02_Primary
			F_Punk_Torso_Judy02_Secondary
		]
		genre = [
			Punk
		]
	}
	{
		desc_id = f_rock_torso_jjacket
		frontend_desc = qs("\LVenice Beach")
		mesh = 'models/CAR/Female/F_Rock_Torso_JJacket.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Torso_JJacketLOD.skin'
		mesh_lod = 1
		materials = [
			F_Rock_Torso_JJacket_Primary
			F_Rock_Torso_jjacket_Secondary
			F_Rock_Torso_jjacket_Tertiary
		]
		genre = [
			Rock
		]
		acc_skeleton = Skel_F_Rock_Torso_JeanJacket01
		acc_ragdoll = Ragdoll_F_Rock_Torso_JeanJacket01
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = f_rock_torso_raglan
		frontend_desc = qs("\LHome Team")
		mesh = 'models/CAR/Female/F_Rock_Torso_Raglan.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Torso_RaglanLOD.skin'
		mesh_lod = 1
		materials = [
			F_Rock_Torso_Raglan_Primary
			F_Rock_Torso_Raglan_Secondary
		]
		genre = [
			Rock
			`Heavy Metal`
		]
		acc_skeleton = Skel_F_Rock_Torso_Raglan
		acc_ragdoll = Rag_F_Rock_Torso_Raglan
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
	}
	{
		desc_id = f_rock_torso_corset
		frontend_desc = qs("\LVast Purple")
		mesh = 'models/CAR/Female/F_Rock_Torso_Corset.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Torso_CorsetLOD.skin'
		mesh_lod = 1
		materials = [
			F_Rock_Torso_Corset_Primary
		]
		genre = [
			Rock
		]
		random_weight = 0.1
	}
	{
		desc_id = f_rock_torso_ljacket
		frontend_desc = qs("\LBad Mutha")
		mesh = 'models/CAR/Female/F_Rock_Torso_LJacket.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Torso_LJacketLOD.skin'
		mesh_lod = 1
		materials = [
			F_Rock_Torso_LJacket_Primary
			F_Rock_Torso_LJacket_Secondary
		]
		genre = [
			Rock
		]
		acc_skeleton = Skel_F_Rock_Torso_LJacket
		acc_ragdoll = Rag_F_Rock_Torso_LJacket
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 250
	}
	{
		desc_id = f_rock_torso_tie
		frontend_desc = qs("\LAll Business")
		mesh = 'models/CAR/Female/F_Rock_Torso_Tie.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Torso_TieLOD.skin'
		mesh_lod = 1
		materials = [
			F_Rock_Torso_Tie_Primary
			F_Rock_Torso_Tie_Secondary
		]
		genre = [
			Rock
		]
		acc_skeleton = Skel_F_Rock_Torso_Tie
		acc_ragdoll = Rag_F_Rock_Torso_Tie
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 80
	}
	{
		desc_id = f_rock_torso_bass
		frontend_desc = qs("\LBaby Chemise")
		mesh = 'models/CAR/Female/F_Rock_Torso_Bass.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Torso_BassLOD.skin'
		mesh_lod = 1
		genre = [
			Rock
		]
		materials = [
			F_Rock_Torso_Bass_Primary
		]
	}
	{
		desc_id = F_Rock_Torso_Bass_Contest
		frontend_desc = qs("\LRock_Bassist Shirt Contest")
		mesh = 'models/CAR/Female/F_Rock_Torso_Bass_Contest.skin'
		mesh1 = 'models/CAR/Female/F_Rock_Torso_Bass_ContestLOD.skin'
		mesh_lod = 1
		genre = [
			Rock
		]
		materials = [
			F_Rock_Torso_Bass_Contest_Primary
		]
		hidden
		price = 5
	}
	{
		desc_id = F_Glam_Torso_LaceBraTop
		frontend_desc = qs("\LHardly Looking")
		mesh = 'models/CAR/Female/F_Glam_Torso_LaceBraTop.skin'
		mesh1 = 'models/CAR/Female/F_Glam_Torso_LaceBraTopLOD.skin'
		mesh_lod = 1
		genre = [
			`Glam Rock`
		]
		materials = [
			F_Glam_Torso_LaceBraTop_Primary
		]
		price = 150
	}
	{
		desc_id = F_Glam_Torso_PinkShirt
		frontend_desc = qs("\LMall Chick")
		mesh = 'models/CAR/Female/F_Glam_Torso_PinkShirt.skin'
		mesh1 = 'models/CAR/Female/F_Glam_Torso_PinkShirtLOD.skin'
		mesh_lod = 1
		genre = [
			`Glam Rock`
		]
		materials = [
			F_Glam_Torso_PinkShirt_Primary
		]
		acc_skeleton = Skel_F_Glam_Torso_PinkShirt
		acc_ragdoll = Rag_F_Glam_Torso_PinkShirt
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
	}
	{
		desc_id = F_Glam_Torso_DenimJakcet
		frontend_desc = qs("\LAcid Washed")
		mesh = 'models/CAR/Female/F_Glam_Torso_DenimJakcet.skin'
		mesh1 = 'models/CAR/Female/F_Glam_Torso_DenimJakcetLOD.skin'
		mesh_lod = 1
		genre = [
			`Glam Rock`
		]
		materials = [
			F_Glam_Torso_DenimJakcet_Primary
			F_Glam_Torso_DenimJakcet_Secondary
		]
		acc_skeleton = Skel_F_Glam_Torso_DenimJakcet
		acc_ragdoll = Rag_F_Glam_Torso_DenimJakcet
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = F_Glam_Torso_BlackClam
		frontend_desc = qs("\LRumble Dome")
		mesh = 'models/CAR/Female/F_Glam_Torso_BlackClam.skin'
		mesh1 = 'models/CAR/Female/F_Glam_Torso_BlackClamLOD.skin'
		mesh_lod = 1
		genre = [
			`Glam Rock`
		]
		materials = [
			F_Glam_Torso_BlackClam_Primary
			F_Glam_Torso_BlackClam_Secondary
		]
		price = 1500
	}
	{
		desc_id = f_glam_torso_lightning
		frontend_desc = qs("\LTeenage Outlaw")
		mesh = 'models/CAR/Female/F_Glam_Torso_Lightning.skin'
		mesh1 = 'models/CAR/Female/F_Glam_Torso_LightningLOD.skin'
		mesh_lod = 1
		genre = [
			`Glam Rock`
		]
		materials = [
			F_Glam_Torso_Lightning_Primary
			F_Glam_Torso_Lightning_Secondary
		]
		acc_skeleton = Skel_F_Glam_Torso_Lightning
		acc_ragdoll = Rag_F_Glam_Torso_Lightning
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
		price = 210
	}
	{
		desc_id = f_goth_torso_corsetop
		frontend_desc = qs("\LBell Curves")
		mesh = 'models/CAR/Female/F_Goth_Torso_Corsetop.skin'
		mesh1 = 'models/CAR/Female/F_Goth_Torso_CorsetopLOD.skin'
		mesh_lod = 1
		materials = [
			F_Goth_Torso_Corsetop_Primary
			F_Goth_Torso_Corsetop_Secondary
		]
		genre = [
			Goth
		]
		acc_skeleton = Skel_F_Goth_Torso_Corsetop
		acc_ragdoll = Rag_F_Goth_Torso_Corsetop
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
		price = 175
	}
	{
		desc_id = f_goth_torso_frillybodice
		frontend_desc = qs("\LGet Your Frills")
		mesh = 'models/CAR/Female/F_Goth_Torso_FrillyBodice_02.skin'
		materials = [
			F_Goth_Torso_FrillyBodice02_shirt
			F_Goth_Torso_FrillyBodice02_lining
			F_Goth_Torso_FrillyBodice02_corset
			F_Goth_Torso_FrillyBodice02_ribbon
		]
		genre = [
			Goth
		]
		acc_skeleton = Skel_F_Goth_Torso_FrillyBodice
		acc_ragdoll = Rag_F_Goth_Torso_FrillyBodice
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = f_goth_torso_halfstrap
		frontend_desc = qs("\LBuckle Up")
		mesh = 'models/CAR/Female/F_Goth_Torso_HalfStrap.skin'
		mesh1 = 'models/CAR/Female/F_Goth_Torso_HalfStrapLOD.skin'
		mesh_lod = 1
		acc_skeleton = Skel_F_Goth_Torso_HalfStrap
		acc_ragdoll = Rag_F_Goth_Torso_HalfStrap
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
		]
		material_groups = [
			{
				materials = [
					F_Goth_Torso_HalfStrap_Primary
				]
			}
			{
				materials = [
					F_Goth_Torso_HalfStrap_Secondary
				]
			}
			{
				materials = [
					F_Goth_Torso_HalfStrap_Glove
				]
			}
		]
		genre = [
			Goth
		]
		price = 1750
	}
	{
		desc_id = f_goth_torso_cyberstrap
		frontend_desc = qs("\LStrapped In")
		mesh = 'models/CAR/Female/F_Goth_Torso_CyberStrap.skin'
		mesh1 = 'models/CAR/Female/F_Goth_Torso_CyberStrapLOD.skin'
		mesh_lod = 1
		materials = [
			F_Goth_Torso_CyberStrap_Primary
			F_Goth_Torso_CyberStrap_Secondary
		]
		acc_skeleton = Skel_F_Goth_Torso_CyberStrap
		acc_ragdoll = Rag_F_Goth_Torso_CyberStrap
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		genre = [
			Goth
		]
		price = 550
		random_weight_cpu = 0.1
	}
	{
		desc_id = f_goth_torso_dress
		frontend_desc = qs("\LBlack Pearls")
		mesh = 'models/CAR/Female/F_Goth_Torso_Dress.skin'
		mesh1 = 'models/CAR/Female/F_Goth_Torso_DressLOD.skin'
		mesh_lod = 1
		genre = [
			Goth
		]
		acc_skeleton = Skel_F_Goth_Torso_Dress
		acc_ragdoll = Rag_F_Goth_Torso_Dress
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = f_fun_torso_angelw
		frontend_desc = qs("\LAngel Wings")
		mesh = 'models/CAR/Female/F_Fun_Torso_AngelW.skin'
		mesh1 = 'models/CAR/Female/F_Fun_Torso_AngelWLOD.skin'
		mesh_lod = 1
		materials = [
			F_Fun_Torso_AngelW_Wing
			F_Fun_Torso_AngelW_Bra
		]
		genre = [
			Goth
		]
		acc_skeleton = Skel_F_Fun_Torso_AngelW
		acc_ragdoll = Rag_F_Fun_Torso_AngelW
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 7500
		locked
		polaroid = p_f_goth_torso_angelw
		random_weight = 0.0
	}
	{
		desc_id = F_Fun_Torso_Bra
		frontend_desc = qs("\LBikini Top")
		mesh = 'models/CAR/Female/F_Fun_Torso_Bra.skin'
		mesh1 = 'models/CAR/Female/F_Fun_Torso_BraLOD.skin'
		mesh_lod = 1
		materials = [
			F_Fun_Torso_AngelW_Bra
		]
		genre = [
			Goth
			Rock
			`Heavy Metal`
		]
		random_weight = 0.0
	}
	{
		desc_id = f_metl_torso_bullets01
		frontend_desc = qs("\LBandolero Chic")
		mesh = 'models/CAR/Female/F_Metl_Torso_Bullets01.skin'
		mesh1 = 'models/CAR/Female/F_Metl_Torso_Bullets01LOD.skin'
		mesh_lod = 1
		genre = [
			`Heavy Metal`
		]
		materials = [
			F_Metl_Torso_bullets01_Primary
			F_Metl_Torso_Bullets01_Secondary
		]
		acc_skeleton = Skel_F_Metl_Torso_Bullets01
		acc_ragdoll = Rag_F_Metl_Torso_Bullets01
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 250
	}
	{
		desc_id = F_Metl_Torso_Vest01
		frontend_desc = qs("\LLeather Rider")
		mesh = 'models/CAR/Female/F_Metl_Torso_Vest01.skin'
		mesh1 = 'models/CAR/Female/F_Metl_Torso_Vest01LOD.skin'
		mesh_lod = 1
		genre = [
			`Heavy Metal`
		]
		acc_skeleton = Skel_F_Metl_Torso_Vest01
		acc_ragdoll = Rag_F_Metl_Torso_Vest01
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 175
	}
	{
		desc_id = f_metl_torso_bramesh
		frontend_desc = qs("\LTrouble Star")
		mesh = 'models/CAR/Female/F_Metl_Torso_BraMesh.skin'
		mesh1 = 'models/CAR/Female/F_Metl_Torso_BraMeshLOD.skin'
		mesh_lod = 1
		genre = [
			`Heavy Metal`
			`Black Metal`
		]
		price = 120
	}
	{
		desc_id = F_Metl_Torso_JeanLthr
		frontend_desc = qs("\LStonewashed")
		mesh = 'models/CAR/Female/F_Metl_Torso_JeanLthr.skin'
		mesh1 = 'models/CAR/Female/F_Metl_Torso_JeanLthrLOD.skin'
		mesh_lod = 1
		materials = [
			F_Metl_Torso_JeanLthr_Primary
			F_Metl_Torso_JeanLthr_Secondary
			F_Metl_Torso_JeanLthr_Shirt
		]
		genre = [
			`Heavy Metal`
		]
		acc_skeleton = Skel_F_Metl_Torso_JeanLthr
		acc_ragdoll = Rag_F_Metl_Torso_JeanLthr
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 150
	}
	{
		desc_id = f_metl_torso_shirtbra
		frontend_desc = qs("\LArmy Brat")
		mesh = 'models/CAR/Female/F_Metl_Torso_ShirtBra.skin'
		mesh1 = 'models/CAR/Female/F_Metl_Torso_ShirtBraLOD.skin'
		mesh_lod = 1
		materials = [
			F_Metl_Torso_ShirtBra_Primary
			F_Metl_Torso_ShirtBra_Secondary
		]
		genre = [
			`Heavy Metal`
			`Black Metal`
		]
	}
	{
		desc_id = F_Clsc_Torso_Striped
		frontend_desc = qs("\LOversized Belt")
		mesh = 'models/CAR/Female/F_Clsc_Torso_Striped.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_Torso_StripedLOD.skin'
		mesh_lod = 1
		materials = [
			F_Clsc_Torso_Striped_Primary
			F_Clsc_Torso_Striped_Secondary
		]
		genre = [
			`Classic Rock`
		]
	}
	{
		desc_id = F_Clsc_Torso_PldTie
		frontend_desc = qs("\LLoosen Up")
		mesh = 'models/CAR/Female/F_Clsc_Torso_PldTie.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_Torso_PldTieLOD.skin'
		mesh_lod = 1
		genre = [
			`Classic Rock`
		]
		materials = [
			F_Clsc_Torso_PldTie_Primary
			F_Clsc_Torso_PldTie_Secondary
			F_Clsc_Torso_PldTie_Tie
		]
		acc_skeleton = Skel_F_Clsc_Torso_PldTie
		acc_ragdoll = Rag_F_Clsc_Torso_PldTie
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 115
		random_weight = 0.1
	}
	{
		desc_id = f_clsc_torso_jersey
		frontend_desc = qs("\LJersey Shirt")
		mesh = 'models/CAR/Female/F_Clsc_Torso_Jersey.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_Torso_JerseyLOD.skin'
		mesh_lod = 1
		materials = [
			F_Clsc_Torso_Jersey_Primary
			F_Clsc_Torso_Jersey_Secondary
		]
		genre = [
			`Classic Rock`
		]
	}
	{
		desc_id = f_clsc_torso_flwr
		frontend_desc = qs("\LSun Child")
		mesh = 'models/CAR/Female/F_Clsc_Torso_Flwr.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_Torso_FlwrLOD.skin'
		mesh_lod = 1
		genre = [
			`Classic Rock`
		]
		acc_skeleton = Skel_F_Clsc_Torso_Flwr
		acc_ragdoll = Rag_F_Clsc_Torso_Flwr
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		materials = [
			F_Clsc_Torso_Flwr_Primary
			F_Clsc_Torso_Flwr_Secondary
			F_Clsc_Torso_Flwr_Third
			F_Clsc_Torso_Flwr_Rose
		]
		price = 140
	}
	{
		desc_id = f_clsc_torso_dress
		frontend_desc = qs("\LLily Petal")
		mesh = 'models/CAR/Female/F_Clsc_Torso_Dress.skin'
		mesh1 = 'models/CAR/Female/F_Clsc_Torso_DressLOD.skin'
		mesh_lod = 1
		genre = [
			`Classic Rock`
		]
		materials = [
			F_Clsc_Torso_Dress_Primary
		]
		price = 90
	}
	{
		desc_id = f_pop_torso_longsleeves
		frontend_desc = qs("\LInked Sleeves")
		mesh = 'models/CAR/Female/F_Pop_Torso_Longsleeves.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Torso_LongsleevesLOD.skin'
		mesh_lod = 1
		genre = [
			Pop
		]
	}
	{
		desc_id = F_Pop_Torso_Midori
		frontend_desc = qs("\LPopster")
		mesh = 'models/CAR/Female/F_Pop_Torso_Midori.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Torso_MidoriLOD.skin'
		mesh_lod = 1
		genre = [
			Pop
		]
		materials = [
			F_Pop_Torso_Midori_Primary
			F_Pop_Torso_Midori_Shirt
		]
		acc_skeleton = Skel_F_Pop_Torso_Midori_Skirt
		acc_ragdoll = Rag_F_Pop_Torso_Midori_Skirt
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
	}
	{
		desc_id = F_Pop_Torso_RuffleTop
		frontend_desc = qs("\LWilshire")
		mesh = 'models/CAR/Female/F_Pop_Torso_RuffleTop.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Torso_RuffleTopLOD.skin'
		mesh_lod = 1
		materials = [
			F_Pop_RuffleTop_Primary
			F_Pop_RuffleTop_Secondary
		]
		genre = [
			Pop
		]
		acc_skeleton = Skel_F_Pop_Torso_RuffleTop
		acc_ragdoll = Rag_F_Pop_Torso_RuffleTop
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 180
	}
	{
		desc_id = f_pop_torso_buttontop
		frontend_desc = qs("\LAhoy!")
		mesh = 'models/CAR/Female/F_Pop_Torso_ButtonTop.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Torso_ButtonTopLOD.skin'
		mesh_lod = 1
		materials = [
			F_Pop_ButtonTop_Primary
			F_Pop_ButtonTop_Secondary
		]
		genre = [
			Pop
		]
		acc_skeleton = Skel_F_Pop_Torso_ButtonTop
		acc_ragdoll = Rag_F_Pop_Torso_ButtonTop
		acc_bones = [
			Bone_ACC_Torso_01
		]
		price = 195
		random_weight = 1.5
	}
	{
		desc_id = F_Pop_Torso_HayleyShirt
		frontend_desc = qs("\LRiotous T")
		mesh = 'models/CAR/Female/F_Pop_Torso_HayleyShirt.skin'
		mesh1 = 'models/CAR/Female/F_Pop_Torso_HayleyShirtLOD.skin'
		mesh_lod = 1
		materials = [
			F_Pop_Torso_HayleyShirt_Primary
		]
		genre = [
			Pop
		]
		random_weight = 0.0
		random_weight_cpu = 0.0
	}
	{
		desc_id = f_bmtl_torso_corset01
		frontend_desc = qs("\LDomination")
		mesh = 'models/CAR/Female/F_bmtl_Torso_Corset01.skin'
		mesh1 = 'models/CAR/Female/F_bmtl_Torso_Corset01LOD.skin'
		mesh_lod = 1
		genre = [
			`Black Metal`
		]
		acc_skeleton = Skel_F_bmtl_Torso_Corset01
		acc_ragdoll = Rag_F_bmtl_Torso_Corset01
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 450
	}
	{
		desc_id = f_bmtl_torso_spikeshirt
		frontend_desc = qs("\LDark Brigandine")
		mesh = 'models/CAR/Female/F_Bmtl_Torso_Spikeshirt.skin'
		mesh1 = 'models/CAR/Female/F_Bmtl_Torso_SpikeshirtLOD.skin'
		mesh_lod = 1
		materials = [
			F_Bmtl_Torso_Spikeshirt_Primary
			F_Bmtl_Torso_Spikeshirt_Secondary
		]
		genre = [
			`Black Metal`
		]
	}
	{
		desc_id = f_bmtl_torso_fur
		frontend_desc = qs("\LFur Crazy")
		mesh = 'models/CAR/Female/F_Bmtl_Torso_Fur.skin'
		mesh1 = 'models/CAR/Female/F_Bmtl_Torso_FurLOD.skin'
		mesh_lod = 1
		genre = [
			`Black Metal`
		]
		acc_skeleton = Skel_F_Bmtl_Torso_Fur
		acc_ragdoll = Rag_F_Bmtl_Torso_Fur
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
		price = 2000
	}
	{
		desc_id = f_bmtl_torso_spikearmor
		frontend_desc = qs("\LGrid Iron")
		mesh = 'models/CAR/Female/F_Bmtl_Torso_SpikeArmor.skin'
		mesh1 = 'models/CAR/Female/F_Bmtl_Torso_SpikeArmorLOD.skin'
		mesh_lod = 1
		genre = [
			`Black Metal`
		]
		price = 650
	}
	{
		desc_id = f_bmtl_torso_bikini
		frontend_desc = qs("\LSado")
		mesh = 'models/CAR/Female/F_Bmtl_Torso_Bikini.skin'
		mesh1 = 'models/CAR/Female/F_Bmtl_Torso_BikiniLOD.skin'
		mesh_lod = 1
		materials = [
			F_Bmtl_Torso_Bikini_Primary
		]
		genre = [
			`Black Metal`
		]
		acc_skeleton = Skel_F_Bmtl_Torso_Bikini
		acc_ragdoll = Rag_F_Bmtl_Torso_Bikini
		acc_bones = [
			Bone_ACC_Torso_01
		]
		price = 275
	}
]
