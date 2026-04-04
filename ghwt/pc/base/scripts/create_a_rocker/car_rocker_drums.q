CAS_Drums = [
	{
		desc_id = basic
		frontend_desc = qs("\LSingle Bass Kit")
		mesh = 'models\\CAR_Instruments\\Drums\\SingleBassKit.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Shells")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\drumshell_ds_pork1.dds'
				material = CAD_Drums_01_Primary
				mask = $CADrm_01_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Bass Skins")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_DS_15a.dds'
				material = CAD_Drums_01_Bassdrum
				mask = $CADrm_01_Finishes_Bassdrum
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_DS_15a.dds'
				material = CAD_Drums_01_Bassdrum
				mask = $car_basic_primitives_1
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_DS_15a.dds'
				material = CAD_Drums_01_Bassdrum
				mask = $car_basic_primitives_2
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_DS_15a.dds'
				material = CAD_Drums_01_Bassdrum
				mask = $car_gradiant_shapes
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_DS_15a.dds'
				material = CAD_Drums_01_Bassdrum
				mask = $car_icons
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_DS_15a.dds'
				material = CAD_Drums_01_Bassdrum
				mask = $car_living_shapes
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_DS_15a.dds'
				material = CAD_Drums_01_Bassdrum
				mask = $car_graphics
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_DS_15a.dds'
				material = CAD_Drums_01_Bassdrum
				mask = $car_sponsors
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_DS_15a.dds'
				material = CAD_Drums_01_Bassdrum
				mask = $car_fontgrid_title_a1
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_DS_15a.dds'
				material = CAD_Drums_01_Bassdrum
				mask = $car_fontgrid_text_a3
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_DS_15a.dds'
				material = CAD_Drums_01_Bassdrum
				mask = $car_fontgrid_text_a6
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_DS_15a.dds'
				material = CAD_Drums_01_Bassdrum
				mask = $car_fontgrid_text_a8
				diffuse
				userlayer
			}
		]
	}
	{
		desc_id = DoubleBass
		frontend_desc = qs("\LPork Pie Kit")
		mesh = 'models\\CAR_Instruments\\Drums\\DoubleBassKit.skin'
		locked
		polaroid = Drum_Rewards_Porkpie
		price = 1500
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Shells")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\drumshell_ds_pork7.dds'
				material = PorkPie_Kit_Primary
				mask = $CADrm_02_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Bass Skins")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_pork3.dds'
				material = PorkPie_Kit_Bassdrum
				mask = $CADrm_02_Finishes_Bassdrum
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_pork3.dds'
				material = PorkPie_Kit_Bassdrum
				mask = $car_basic_primitives_1
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_pork3.dds'
				material = PorkPie_Kit_Bassdrum
				mask = $car_basic_primitives_2
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_pork3.dds'
				material = PorkPie_Kit_Bassdrum
				mask = $car_gradiant_shapes
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_pork3.dds'
				material = PorkPie_Kit_Bassdrum
				mask = $car_icons
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_pork3.dds'
				material = PorkPie_Kit_Bassdrum
				mask = $car_living_shapes
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_pork3.dds'
				material = PorkPie_Kit_Bassdrum
				mask = $car_graphics
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_pork3.dds'
				material = PorkPie_Kit_Bassdrum
				mask = $car_sponsors
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_pork3.dds'
				material = PorkPie_Kit_Bassdrum
				mask = $car_fontgrid_title_a1
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_pork3.dds'
				material = PorkPie_Kit_Bassdrum
				mask = $car_fontgrid_text_a3
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_pork3.dds'
				material = PorkPie_Kit_Bassdrum
				mask = $car_fontgrid_text_a6
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_pork3.dds'
				material = PorkPie_Kit_Bassdrum
				mask = $car_fontgrid_text_a8
				diffuse
				userlayer
			}
		]
	}
	{
		desc_id = Monster
		frontend_desc = qs("\LTravis Barker OCDP")
		price = 5000
		locked
		polaroid = Drum_Rewards_OC
		mesh = 'models\\CAR_Instruments\\Drums\\QuadBassKit.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Shells")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\drumshell_ds_oc1.dds'
				material = QuadBassKit_Primary
				mask = $CADrm_03_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Bass Skins")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_oc1.dds'
				material = QuadBassKit_Bassdrum
				mask = $CADrm_03_Finishes_Bassdrum
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_oc1.dds'
				material = QuadBassKit_Bassdrum
				mask = $car_basic_primitives_1
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_oc1.dds'
				material = QuadBassKit_Bassdrum
				mask = $car_basic_primitives_2
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_oc1.dds'
				material = QuadBassKit_Bassdrum
				mask = $car_gradiant_shapes
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_oc1.dds'
				material = QuadBassKit_Bassdrum
				mask = $car_icons
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_oc1.dds'
				material = QuadBassKit_Bassdrum
				mask = $car_living_shapes
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_oc1.dds'
				material = QuadBassKit_Bassdrum
				mask = $car_graphics
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_oc1.dds'
				material = QuadBassKit_Bassdrum
				mask = $car_sponsors
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_oc1.dds'
				material = QuadBassKit_Bassdrum
				mask = $car_fontgrid_title_a1
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_oc1.dds'
				material = QuadBassKit_Bassdrum
				mask = $car_fontgrid_text_a3
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_oc1.dds'
				material = QuadBassKit_Bassdrum
				mask = $car_fontgrid_text_a6
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\Drums\\bass_skin_ds_oc1.dds'
				material = QuadBassKit_Bassdrum
				mask = $car_fontgrid_text_a8
				diffuse
				userlayer
			}
		]
	}
]
CAS_Drums_Sticks = [
	{
		desc_id = Drumsticks1
		frontend_desc = qs("\LSome sticks")
		mesh = 'models\\CAR_Instruments\\Drums\\CAD_Sticks_01.skin'
	}
	{
		desc_id = Drumsticks_Zildjian1
		frontend_desc = qs("\LZildjian ")
		mesh = 'models\\CAR_Instruments\\Drums\\Drumsticks_zildj.skin'
		locked
		polaroid = Drum_Rewards_stix_zildjian
	}
	{
		desc_id = Drumsticks_Zildjian2
		frontend_desc = qs("\LZildjian Barker")
		mesh = 'models\\CAR_Instruments\\Drums\\Drumsticks_Zildj2.skin'
		locked
		polaroid = Drum_Rewards_stix_zildjian
	}
	{
		desc_id = Drumsticks_Regal
		frontend_desc = qs("\LRegal")
		mesh = 'models\\CAR_Instruments\\Drums\\Drumsticks_Regal.skin'
		locked
		polaroid = Drum_Rewards_stix_regal
	}
]
