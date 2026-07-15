CAS_Male_Torso = [
	{
		desc_id = M_Torso_TShirt
		frontend_desc = qs("\LVery Casual")
		mesh = 'models/CAR/Male/M_Torso_TShirt.skin'
		random_weight = 1.0
		genre = [
			Rock
			Pop
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
		desc_id = Shirtless
		frontend_desc = qs("\LShirtless")
		random_weight = 0.0
	}
	{
		desc_id = M_Torso_Layered
		frontend_desc = qs("\LLayered T")
		mesh = 'models/CAR/Male/M_Torso_Layered.skin'
		random_weight = 1.0
		materials = [
			M_Torso_Layered_Primary
			M_Torso_Layered_Secondary
		]
		genre = [
			Rock
		]
	}
	{
		desc_id = M_Torso_LayeredNoStripe
		frontend_desc = qs("\LStone-Washed Star")
		mesh = 'models/CAR/Male/M_Torso_LayeredNoStripe.skin'
		random_weight = 1.0
		materials = [
			M_Torso_LayeredNoStripe_Primary
			M_Torso_LayeredNoStripe_Secondary
		]
		genre = [
			Rock
		]
	}
	{
		desc_id = m_torso_hoodie
		frontend_desc = qs("\LHoodie")
		mesh = 'models/CAR/Male/M_Torso_Hoodie.skin'
		random_weight = 1.0
		materials = [
			M_Torso_Hoodie_Primary
			M_Torso_Hoodie_Secondary
		]
		genre = [
			Rock
		]
		acc_skeleton = Skel_M_Torso_Hoodie
		acc_ragdoll = Rag_M_Torso_Hoodie
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = m_torso_ninja
		frontend_desc = qs("\LNinja Gi")
		mesh = 'models/CAR/Male/M_Torso_Ninja.skin'
		random_weight = 0.0
		materials = [
			M_Torso_Ninja_Primary
			M_Torso_Ninja_Secondary
			M_Torso_Ninja_Arms
		]
		genre = [
			Goth
		]
		price = 1750
	}
	{
		desc_id = M_Pop_Torso_Dragon
		frontend_desc = qs("\LDragon Blades")
		mesh = 'models/CAR/Male/M_Pop_Torso_Dragon.skin'
		materials = [
			M_Pop_Torso_Dragon_Primary
			M_Pop_Torso_Dragon_Secondary
		]
		acc_skeleton = Skel_M_Pop_Torso_Dragon
		acc_ragdoll = Rag_M_Pop_Torso_Dragon
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		random_weight = 0.0
		price = 8000
	}
	{
		desc_id = M_Pop_Torso_Leather
		frontend_desc = qs("\LLeather And A T")
		mesh = 'models/CAR/Male/M_Pop_Torso_Leather.skin'
		materials = [
			M_Pop_Torso_Leather_Primary
			M_Pop_Torso_Leather_Secondary
		]
		random_weight = 1.0
		acc_skeleton = Skel_M_Pop_Torso_Leather
		acc_ragdoll = Rag_M_Pop_Torso_Leather
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		genre = [
			Pop
		]
		price = 150
	}
	{
		desc_id = M_Pop_Torso_OpenShirt
		frontend_desc = qs("\LButton Down Tank")
		mesh = 'models/CAR/Male/M_Pop_Torso_OpenShirt.skin'
		materials = [
			M_Pop_Torso_OpenShirt_Primary
			M_Pop_Torso_OpenShirt_Secondary
		]
		random_weight = 1.0
		acc_skeleton = Skel_M_Pop_Torso_OpenShirt
		acc_ragdoll = Rag_M_Pop_Torso_OpenShirt
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
		]
		genre = [
			Pop
		]
	}
	{
		desc_id = M_Pop_Torso_Suit
		frontend_desc = qs("\LCoat Disorder")
		mesh = 'models/CAR/Male/M_Pop_Torso_Suit.skin'
		materials = [
			M_Pop_Torso_Suit_Primary
			M_Pop_Torso_Suit_Secondary
		]
		random_weight = 1.0
		genre = [
			Pop
		]
		price = 300
	}
	{
		desc_id = M_Pop_Torso_TurtleShirt
		frontend_desc = qs("\LButton Down Mess")
		mesh = 'models/CAR/Male/M_Pop_Torso_TurtleShirt.skin'
		random_weight = 1.0
		materials = [
			M_Pop_Torso_TurtleShirt_Primary
			M_Pop_Torso_TurtleShirt_Secondary
		]
		acc_skeleton = Skel_M_Pop_Torso_TurtleShirt
		acc_ragdoll = Rag_M_Pop_Torso_TurtleShirt
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		genre = [
			Pop
		]
		price = 225
	}
	{
		desc_id = M_Pop_Torso_Vest
		frontend_desc = qs("\LRebel Pop Star")
		mesh = 'models/CAR/Male/M_Pop_Torso_Vest.skin'
		random_weight = 1.0
		genre = [
			Pop
		]
		materials = [
			M_Pop_Torso_Vest_Primary
			M_Pop_Torso_Vest_Secondary
		]
		acc_skeleton = Skel_M_Pop_Torso_Vest
		acc_ragdoll = Rag_M_Pop_Torso_Vest
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 175
	}
	{
		desc_id = M_Punk_Torso_Jacket
		frontend_desc = qs("\LVested Punk")
		mesh = 'models/CAR/Male/M_Punk_Torso_Jacket.skin'
		random_weight = 1.0
		genre = [
			Punk
		]
		acc_skeleton = Skel_M_Punk_Torso_Jacket
		acc_ragdoll = Rag_M_Punk_Torso_Jacket
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 150
	}
	{
		desc_id = M_Punk_Torso_Jacket_02
		frontend_desc = qs("\LVested In Denim")
		mesh = 'models/CAR/Male/M_Punk_Torso_Jacket_02.skin'
		random_weight = 1.0
		genre = [
			Punk
		]
		acc_skeleton = Skel_M_Punk_Torso_Jacket
		acc_ragdoll = Rag_M_Punk_Torso_Jacket
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 150
	}
	{
		desc_id = M_Punk_Torso_Jacket_03
		frontend_desc = qs("\LVested In Leather")
		mesh = 'models/CAR/Male/M_Punk_Torso_Jacket_03.skin'
		random_weight = 1.0
		genre = [
			Punk
		]
		acc_skeleton = Skel_M_Punk_Torso_Jacket
		acc_ragdoll = Rag_M_Punk_Torso_Jacket
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 150
	}
	{
		desc_id = m_punk_torso_hood
		frontend_desc = qs("\LNeed More Layers")
		mesh = 'models/CAR/Male/M_Punk_Torso_Hood.skin'
		random_weight = 1.0
		genre = [
			Punk
		]
		acc_skeleton = Skel_M_Punk_Torso_hood_03
		acc_ragdoll = Rag_M_Punk_Torso_hood_03
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = M_Punk_Torso_Hood_03
		frontend_desc = qs("\LCrow")
		mesh = 'models/CAR/Male/M_Punk_Torso_Hood_03.skin'
		random_weight = 1.0
		genre = [
			Punk
		]
		acc_skeleton = Skel_M_Punk_Torso_hood_03
		acc_ragdoll = Rag_M_Punk_Torso_hood_03
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 250
	}
	{
		desc_id = M_Punk_Torso_Hood_02
		frontend_desc = qs("\LCity Lumberjack")
		mesh = 'models/CAR/Male/M_Punk_Torso_Hood_02.skin'
		random_weight = 1.0
		genre = [
			Punk
		]
		acc_skeleton = Skel_M_Punk_Torso_hood_03
		acc_ragdoll = Rag_M_Punk_Torso_hood_03
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 250
	}
	{
		desc_id = M_Punk_Torso_Beater
		frontend_desc = qs("\LBeater")
		mesh = 'models/CAR/Male/M_Punk_Torso_Beater.skin'
		materials = [
			M_Punk_Torso_Beater_Primary
		]
		random_weight = 1.0
		genre = [
			Punk
		]
	}
	{
		desc_id = m_punk_torso_bowling
		frontend_desc = qs("\LRatty Rod Top")
		mesh = 'models/CAR/Male/M_Punk_Torso_Bowling.skin'
		materials = [
			M_Punk_Torso_Bowling_Primary
			M_Punk_Torso_Bowling_Secondary
		]
		random_weight = 1.0
		genre = [
			Punk
		]
		acc_skeleton = Skel_M_Punk_Torso_Bowling
		acc_ragdoll = Rag_M_Punk_Torso_Bowling
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = m_punk_torso_johnny1
		frontend_desc = qs("\LAngry Zebra")
		mesh = 'models/CAR/Male/M_Punk_Torso_Johnny1.skin'
		random_weight = 1.0
		genre = [
			Punk
		]
		acc_skeleton = Skel_M_Punk_Torso_Johnny1
		acc_ragdoll = Rag_M_Punk_Torso_Johnny1
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = m_punk_torso_johnny1_02
		frontend_desc = qs("\LAce Of Spades")
		mesh = 'models/CAR/Male/M_Punk_Torso_Johnny1_02.skin'
		random_weight = 1.0
		genre = [
			Punk
		]
		acc_skeleton = Skel_M_Punk_Torso_Johnny1
		acc_ragdoll = Rag_M_Punk_Torso_Johnny1
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 850
	}
	{
		desc_id = m_punk_torso_johnny1_03
		frontend_desc = qs("\LDIY Leather Punk")
		mesh = 'models/CAR/Male/M_Punk_Torso_Johnny1_03.skin'
		random_weight = 1.0
		genre = [
			Punk
		]
		acc_skeleton = Skel_M_Punk_Torso_Johnny1
		acc_ragdoll = Rag_M_Punk_Torso_Johnny1
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = m_clsc_torso_scarf
		frontend_desc = qs("\LOne Size Fits Small")
		mesh = 'models/CAR/Male/M_Clsc_Torso_scarf.skin'
		random_weight = 1.0
		genre = [
			`Classic Rock`
		]
		materials = [
			M_Clsc_Torso_scarf_Primary
			M_Clsc_Torso_scarf_Vest
			M_Clsc_Torso_scarf_Secondary
		]
		acc_skeleton = Skel_M_Clsc_Torso_scarf
		acc_ragdoll = Rag_M_Clsc_Torso_scarf
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = M_Clsc_Torso_confed
		frontend_desc = qs("\LRebel Charm")
		mesh = 'models/CAR/Male/M_Clsc_Torso_confed.skin'
		random_weight = 1.0
		genre = [
			`Classic Rock`
		]
		materials = [
			M_Clsc_Torso_confed_Primary
		]
		acc_skeleton = Skel_M_Clsc_Torso_confed
		acc_ragdoll = Rag_M_Clsc_Torso_confed
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 350
	}
	{
		desc_id = m_clsc_torso_clrdjakt
		frontend_desc = qs("\LCorduroy Coat")
		mesh = 'models/CAR/Male/M_Clsc_Torso_Clrdjakt.skin'
		random_weight = 1.0
		genre = [
			`Classic Rock`
		]
		materials = [
			M_Clsc_Torso_Clrdjakt_Primary
			M_Clsc_Torso_Clrdjakt_Secondary
		]
		acc_skeleton = Skel_M_Clsc_Torso_Clrdjakt
		acc_ragdoll = Rag_M_Clsc_Torso_Clrdjakt
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = m_clsc_torso_jimi
		frontend_desc = qs("\LKiss The Sky")
		mesh = 'models/CAR/Male/M_Clsc_Torso_Jimi.skin'
		genre = [
			`Classic Rock`
		]
		price = 5
		acc_skeleton = Skel_M_Clsc_Torso_Jimi
		acc_ragdoll = Rag_M_Clsc_Torso_Jimi
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		materials = [
			M_Clsc_Torso_Jimi_Primary
		]
		price = 2000
		random_weight = 0.0
	}
	{
		desc_id = m_goth_torso_strait
		frontend_desc = qs("\LStraight Jacket")
		mesh = 'models/CAR/Male/M_Goth_Torso_Strait.skin'
		random_weight = 1.0
		genre = [
			Goth
		]
		price = 5
		materials = [
			M_Goth_Torso_Strait_Primary
			M_Goth_Torso_Strait_Secondary
			M_Goth_Torso_Strait_Metal
		]
		acc_skeleton = Skel_M_Goth_Torso_Strait
		acc_ragdoll = Rag_M_Goth_Torso_Strait
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 1500
	}
	{
		desc_id = m_goth_torso_madmax
		frontend_desc = qs("\LStraps & Bullets")
		mesh = 'models/CAR/Male/M_Goth_Torso_MadMax.skin'
		materials = [
			M_Goth_Torso_MadMax_Leather
			M_Goth_Torso_MadMax_Sleeve
		]
		random_weight = 1.0
		genre = [
			Goth
		]
		acc_skeleton = Skel_M_Goth_Torso_MadMax
		acc_ragdoll = Rag_M_Goth_Torso_MadMax
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 450
	}
	{
		desc_id = m_goth_torso_tux
		frontend_desc = qs("\LTux Tails")
		mesh = 'models/CAR/Male/M_Goth_Torso_Tux.skin'
		$CAS_Male_Hair_Common_Settings
		material_groups = [
			{
				materials = [
					M_Goth_Torso_Tux_Primary
				]
				shader = $cas_shader_hair
			}
			{
				materials = [
					M_Goth_Torso_Tux_Secondary
				]
				shader = $cas_shader_skin
			}
			{
				materials = [
					M_Goth_Torso_Tux_Shirt
				]
				shader = $cas_shader_skin
			}
			{
				materials = [
					M_Goth_Torso_Tux_Tie
				]
				shader = $cas_shader_skin
			}
		]
		random_weight = 1.0
		genre = [
			Goth
		]
		acc_skeleton = Skel_M_Goth_Torso_Tux
		acc_ragdoll = Rag_M_Goth_Torso_Tux
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
	}
	{
		desc_id = M_Goth_Torso_Poet
		frontend_desc = qs("\LFang Gang Fluff")
		mesh = 'models/CAR/Male/M_Goth_Torso_Poet.skin'
		materials = [
			M_Goth_Torso_Poet_Primary
		]
		random_weight = 1.0
		genre = [
			Goth
		]
		acc_skeleton = Skel_M_Goth_Torso_Poet
		acc_ragdoll = Rag_M_Goth_Torso_Poet
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
		]
	}
	{
		desc_id = m_goth_torso_vest
		frontend_desc = qs("\LPatchy Duds")
		mesh = 'models/CAR/Male/M_Goth_Torso_Vest.skin'
		random_weight = 1.0
		genre = [
			Goth
		]
		acc_skeleton = Skel_M_Goth_Torso_Vest
		acc_ragdoll = Rag_M_Goth_Torso_Vest
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
		]
		price = 300
	}
	{
		desc_id = m_fun_torso_angelw
		frontend_desc = qs("\LAngel Wings")
		mesh = 'models/CAR/male/M_Fun_Torso_AngelW.skin'
		materials = [
			M_Fun_Torso_AngelW_Wing
		]
		genre = [
			Goth
		]
		acc_skeleton = Skel_M_Fun_Torso_AngelW
		acc_ragdoll = Rag_M_Fun_Torso_AngelW
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 7500
		locked
		polaroid = p_m_goth_torso_angelw
		random_weight = 0.0
	}
	{
		desc_id = M_Mtl_Torso_Axel1
		frontend_desc = qs("\LFire Proof")
		mesh = 'models/CAR/Male/M_Mtl_Torso_Axel1.skin'
		materials = [
			M_Metl_Torso_Axel1_primary
			M_Metl_Torso_Axel1_secondary
		]
		random_weight = 1.0
		genre = [
			`Heavy Metal`
		]
		acc_skeleton = Skel_M_Metl_Torso_Axel1
		acc_ragdoll = Rag_M_Metl_Torso_Axel1
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = m_metl_torso_axel2
		frontend_desc = qs("\LNo Sleeves, Please")
		mesh = 'models/CAR/Male/M_Metl_Torso_Axel2.skin'
		random_weight = 1.0
		genre = [
			`Heavy Metal`
		]
		acc_skeleton = Skel_M_Metl_Torso_Axel2
		acc_ragdoll = Rag_M_Metl_Torso_Axel2
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = m_metl_torso_zakk
		frontend_desc = qs("\LBLS")
		mesh = 'models/CAR/Male/M_Metl_Torso_Zakk.skin'
		materials = [
			m_metl_torso_zakk_primary
			m_metl_torso_zakk_secondary
		]
		random_weight = 1.0
		genre = [
			`Heavy Metal`
		]
		acc_skeleton = Skel_M_Metl_Torso_Zakk
		acc_ragdoll = Rag_M_Metl_Torso_Zakk
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		random_weight = 0.25
		random_weight_cpu = 0.0
		locked
	}
	{
		desc_id = m_metl_torso_straps
		frontend_desc = qs("\LMetro Studly")
		mesh = 'models/CAR/Male/M_Metl_Torso_Straps.skin'
		random_weight = 1.0
		genre = [
			`Heavy Metal`
		]
		acc_skeleton = Skel_M_Metl_Torso_Axel1
		acc_ragdoll = Rag_M_Metl_Torso_Axel1
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 350
	}
	{
		desc_id = m_metl_torso_lthrjkt
		frontend_desc = qs("\LCycler")
		mesh = 'models/CAR/Male/M_Metl_Torso_LthrJkt.skin'
		materials = [
			M_Metl_Torso_LthrJkt_primary
			M_Metl_Torso_LthrJkt_secondary
			M_Metl_Torso_LthrJkt_stripe
		]
		random_weight = 1.0
		genre = [
			`Heavy Metal`
		]
		acc_skeleton = Skel_M_Metl_Torso_LthrJkt
		acc_ragdoll = Rag_M_Metl_Torso_LthrJkt
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = M_Rock_Torso_Tie
		frontend_desc = qs("\LFast Tie")
		mesh = 'models/CAR/Male/M_Rock_Torso_Tie.skin'
		materials = [
			M_Rock_Torso_Tie_Primary
			M_Rock_Torso_Tie_Secondary
			M_Rock_Torso_Tie_Tertiary
		]
		random_weight = 1.0
		genre = [
			Rock
		]
		acc_skeleton = Skel_M_Rock_Torso_Tie
		acc_ragdoll = Rag_M_Rock_Torso_Tie
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 150
	}
	{
		desc_id = M_Rock_Torso_Bandana
		frontend_desc = qs("\LSkullduggery")
		mesh = 'models/CAR/Male/M_Rock_Torso_Bandana.skin'
		random_weight = 1.0
		genre = [
			Rock
		]
		acc_skeleton = Skel_M_Rock_Torso_Bandana
		acc_ragdoll = Rag_M_Rock_Torso_Bandana
		acc_bones = [
			Bone_ACC_Torso_01
		]
		price = 100
	}
	{
		desc_id = m_rock_torso_ozzycoat
		frontend_desc = qs("\LIn The Trenches")
		mesh = 'models/CAR/Male/M_Rock_Torso_OzzyCoat.skin'
		materials = [
			M_Rock_Torso_OzzyCoat_Primary
			M_Rock_Torso_OzzyCoat_Secondary
		]
		random_weight = 1.0
		acc_skeleton = Skel_M_Rock_Torso_OzzyCoat
		acc_ragdoll = Rag_M_Rock_Torso_OzzyCoat
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		genre = [
			Rock
		]
		random_weight = 0.25
		random_weight_cpu = 0.0
		locked
	}
	{
		desc_id = m_rock_torso_sleeveless
		frontend_desc = qs("\LRowdy Cut")
		mesh = 'models/CAR/Male/M_Rock_Torso_Sleeveless.skin'
		materials = [
			M_Rock_Torso_Sleeveless_Primary
		]
		random_weight = 1.0
		acc_skeleton = Skel_M_Rock_Torso_Sleeveless
		acc_ragdoll = Rag_M_Rock_Torso_Sleeveless
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
		]
		genre = [
			Rock
		]
	}
	{
		desc_id = M_Rock_Torso_LJacket
		frontend_desc = qs("\LThe Wreckless One")
		mesh = 'models/CAR/Male/M_Rock_Torso_LJacket.skin'
		materials = [
			M_Rock_Torso_LJacket_Primary
			M_Rock_Torso_LJacket_Secondary
		]
		random_weight = 1.0
		acc_skeleton = Skel_M_Rock_Torso_LJacket
		acc_ragdoll = Rag_M_Rock_Torso_LJacket
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		genre = [
			Rock
		]
		price = 250
	}
	{
		desc_id = M_Rock_Torso_RipShirt
		frontend_desc = qs("\LAshby Dagur")
		mesh = 'models/CAR/Male/M_Rock_Torso_RipShirt.skin'
		materials = [
			M_Rock_Torso_RipShirt_Primary
		]
		random_weight = 1.0
		genre = [
			Rock
		]
	}
	{
		desc_id = M_Rock_Torso_RolledSlvs
		frontend_desc = qs("\LRolled Up")
		mesh = 'models/CAR/Male/M_Rock_Torso_RolledSlvs.skin'
		materials = [
			M_Rock_Torso_RolledSlvs_Primary
		]
		random_weight = 1.0
		genre = [
			Rock
		]
	}
	{
		desc_id = M_Torso_TasselVest
		frontend_desc = qs("\LTassel Fever")
		mesh = 'models/CAR/Male/M_Torso_TasselVest.skin'
		materials = [
			M_Torso_TasselVest_Primary
			M_Torso_TasselVest_Secondary
		]
		random_weight = 0.1
		acc_skeleton = Skel_M_Torso_TasselVest
		acc_ragdoll = Rag_M_Torso_TasselVest
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		genre = [
			Rock
		]
	}
	{
		desc_id = M_Rock_Torso_RockBot
		frontend_desc = qs("\LRockubot")
		mesh = 'models/CAR/Male/M_Rock_Torso_RockBot.skin'
		materials = [
			M_Rock_Torso_RockBot_Primary
		]
		random_weight = 0.0
		price = 15000
	}
	{
		desc_id = M_Glam_Torso_Rags
		frontend_desc = qs("\LLeftovers")
		mesh = 'models/CAR/Male/M_Glam_Torso_Rags.skin'
		materials = [
			M_Glam_Torso_Rags_Primary
		]
		random_weight = 1.0
		genre = [
			`Glam Rock`
		]
	}
	{
		desc_id = M_Glam_Torso_Champ
		frontend_desc = qs("\LGlam Champ")
		mesh = 'models/CAR/Male/M_Glam_Torso_Champ.skin'
		materials = [
			M_Glam_Torso_Champ_Primary
		]
		random_weight = 1.0
		genre = [
			`Glam Rock`
		]
		acc_skeleton = Skel_M_Glam_Torso_Champ
		acc_ragdoll = Rag_M_Glam_Torso_Champ
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 400
	}
	{
		desc_id = M_Glam_Torso_Tiger
		frontend_desc = qs("\LGlam Tiger")
		mesh = 'models/CAR/Male/M_Glam_Torso_Tiger.skin'
		materials = [
			M_Glam_Torso_Tiger_Primary
			M_Glam_Torso_Tiger_Secondary
		]
		random_weight = 1.0
		genre = [
			`Glam Rock`
		]
		acc_skeleton = Skel_M_Glam_Torso_Tiger
		acc_ragdoll = Rag_M_Glam_Torso_Tiger
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
		]
	}
	{
		desc_id = M_Glam_Torso_Gold
		frontend_desc = qs("\LGilded Glam")
		mesh = 'models/CAR/Male/M_Glam_Torso_Gold.skin'
		materials = [
			M_Glam_Torso_Gold_Primary
		]
		random_weight = 1.0
		genre = [
			`Glam Rock`
		]
		acc_skeleton = Skel_M_Glam_Torso_Gold
		acc_ragdoll = Rag_M_Glam_Torso_Gold
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = M_Glam_Torso_Kiss
		frontend_desc = qs("\LStar Power")
		mesh = 'models/CAR/Male/M_Glam_Torso_Kiss.skin'
		materials = [
			M_Glam_Torso_Kiss_Primary
			M_Glam_Torso_Kiss_Secondary
		]
		random_weight = 1.0
		genre = [
			`Glam Rock`
		]
		acc_skeleton = Skel_M_Glam_Torso_Kiss
		acc_ragdoll = Rag_M_Glam_Torso_Kiss
		acc_bones = [
			Bone_ACC_Torso_01
		]
		price = 2500
	}
	{
		desc_id = m_bmtl_torso_lars
		frontend_desc = qs("\LBlack Metal Warrior")
		mesh = 'models/CAR/Male/M_Bmtl_Torso_Lars.skin'
		random_weight = 1.0
		genre = [
			`Black Metal`
		]
	}
	{
		desc_id = m_bmtl_torso_skeleton
		frontend_desc = qs("\LFishnets & Bones")
		mesh = 'models/CAR/Male/M_Bmtl_Torso_Skeleton.skin'
		random_weight = 1.0
		genre = [
			`Black Metal`
		]
		price = 1400
	}
	{
		desc_id = M_Bmtl_Torso_SkeletonBelt
		frontend_desc = qs("\LReady For Battle")
		mesh = 'models/CAR/Male/M_Bmtl_Torso_SkeletonBelt.skin'
		materials = [
			M_Bmtl_Torso_SkeletonBelt_Primary
			M_Bmtl_Torso_SkeletonBelt_Secondary
		]
		random_weight = 1.0
		acc_skeleton = Skel_M_Bmtl_Torso_SkeletonBelt
		acc_ragdoll = Rag_M_Bmtl_Torso_SkeletonBelt
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
		]
		genre = [
			`Black Metal`
		]
		price = 1500
	}
	{
		desc_id = M_Bmtl_Torso_PatternJacket
		frontend_desc = qs("\LLeathery Mold")
		mesh = 'models/CAR/Male/M_Bmtl_Torso_PatternJacket.skin'
		random_weight = 1.0
		materials = [
			M_Bmtl_PatternJacket_Primary
		]
		acc_skeleton = Skel_M_Bmtl_Torso_PatternJacket
		acc_ragdoll = Rag_M_Bmtl_Torso_PatternJacket
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
		genre = [
			`Black Metal`
		]
	}
	{
		desc_id = M_Bmtl_Torso_CoatRing
		frontend_desc = qs("\LLace 'er Up")
		mesh = 'models/CAR/Male/M_Bmtl_Torso_CoatRing.skin'
		materials = [
			M_Metl_Torso_CoatRing_Primary
			M_Metl_Torso_CoatRing_Secondary
			M_Metl_Torso_CoatRing_Belt
		]
		random_weight = 1.0
		acc_skeleton = Skel_M_BMTL_Torso_CoatRing
		acc_ragdoll = Rag_M_BMTL_Torso_CoatRing
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		genre = [
			`Black Metal`
		]
		price = 1550
	}
]
