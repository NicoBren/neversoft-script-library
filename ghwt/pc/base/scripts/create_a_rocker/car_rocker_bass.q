CAS_Bass_Body = [
	{
		desc_id = CAB_Body_B2A
		frontend_desc = qs("\LGedulus Arcos")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_B2A.skin'
		pak_num = 0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_Body_Arcos_Primary
				mask = $CAB_Body_B2A_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				material = CAB_Body_Arcos_Primary
				mask = $CAB_Body_B2A_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				material = CAB_Body_Arcos_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -29
					x_scale = 55
					y_scale = 105
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				material = CAB_Body_Arcos_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -29
					x_scale = 55
					y_scale = 105
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				material = CAB_Body_Arcos_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -29
					x_scale = 55
					y_scale = 105
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				material = CAB_Body_Arcos_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -29
					x_scale = 55
					y_scale = 105
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				material = CAB_Body_Arcos_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -29
					x_scale = 55
					y_scale = 105
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				material = CAB_Body_Arcos_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -29
					x_scale = 55
					y_scale = 105
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				material = CAB_Body_Arcos_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -29
					x_scale = 55
					y_scale = 105
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				material = CAB_Body_Arcos_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -29
					x_scale = 55
					y_scale = 105
					y_trans = 2
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				material = CAB_Body_Arcos_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -29
					x_scale = 55
					y_scale = 105
					y_trans = 2
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				material = CAB_Body_Arcos_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -29
					x_scale = 55
					y_scale = 105
					y_trans = 2
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1a_d_mls.dds'
				material = CAB_Body_Arcos_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -29
					x_scale = 55
					y_scale = 105
					y_trans = 2
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
					CAB_PickG_BP1
					CAB_PickG_BP2
					CAB_PickG_BP3
					CAB_PickG_E1
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack01
					CAB_pickup_Hack02
					CAB_pickup_Hack03
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					CAB_Knob_Unos01
					CAB_Knob_Unos02
					cab_knob_unos03
					cab_knob_unos04
					cab_knob_unos05
					cab_knob_unos06
					cab_knob_unos07
					cab_knob_unos08
					cab_knob_unos09
					cab_knob_unos10
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
					CAB_Bridge_Hack
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Guppy
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
		]
	}
	{
		desc_id = Bass_Body_B1B
		frontend_desc = qs("\LGedulus Unos")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_B1B.skin'
		pak_num = 0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_Body_UNOS_Primary
				mask = $CAB_Body_UNOS_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				material = CAB_Body_UNOS_Primary
				mask = $CAB_Body_UNOS_Details
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				material = CAB_Body_UNOS_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -23
					y_trans = 2
					y_scale = 90
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				material = CAB_Body_UNOS_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -23
					y_trans = 2
					y_scale = 90
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				material = CAB_Body_UNOS_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -23
					y_trans = 2
					y_scale = 90
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				material = CAB_Body_UNOS_Primary
				initial_values = {
					x_trans = -23
					y_trans = 2
					y_scale = 90
					x_scale = 50
				}
				mask = $car_icons
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				material = CAB_Body_UNOS_Primary
				initial_values = {
					x_trans = -23
					y_trans = 2
					y_scale = 90
					x_scale = 50
				}
				mask = $car_living_shapes
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				material = CAB_Body_UNOS_Primary
				initial_values = {
					x_trans = -23
					y_trans = 2
					y_scale = 90
					x_scale = 50
				}
				mask = $car_graphics
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				material = CAB_Body_UNOS_Primary
				initial_values = {
					x_trans = -23
					y_trans = 2
					y_scale = 90
					x_scale = 50
				}
				mask = $car_sponsors
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				material = CAB_Body_UNOS_Primary
				initial_values = {
					x_trans = -23
					y_trans = 2
					y_scale = 90
					x_scale = 50
				}
				mask = $car_fontgrid_title_a1
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				material = CAB_Body_UNOS_Primary
				initial_values = {
					x_trans = -23
					y_trans = 2
					y_scale = 90
					x_scale = 50
				}
				mask = $car_fontgrid_text_a3
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				material = CAB_Body_UNOS_Primary
				initial_values = {
					x_trans = -23
					y_trans = 2
					y_scale = 90
					x_scale = 50
				}
				mask = $car_fontgrid_text_a6
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_b1f_d_mls.dds'
				material = CAB_Body_UNOS_Primary
				initial_values = {
					x_trans = -23
					y_trans = 2
					y_scale = 90
					x_scale = 50
				}
				mask = $car_fontgrid_text_a8
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
					CAB_PickG_B_Unos02
					CAB_PickG_B_Unos01
					CAB_PickG_B_Unos03
					CAB_PickG_E1
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					CAB_Knob_Unos01
					CAB_Knob_Unos02
					cab_knob_unos03
					cab_knob_unos04
					cab_knob_unos05
					cab_knob_unos06
					cab_knob_unos07
					cab_knob_unos08
					cab_knob_unos09
					cab_knob_unos10
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
					CAB_Bridge_Hack
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Guppy
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
		]
	}
	{
		desc_id = CAB_Body_Chunder01
		frontend_desc = qs("\LChunder Trad DeLuxe")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_Chunder01.skin'
		pak_num = 0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_Body_Chunder01_Primary
				mask = $CAB_Body_Chunder01_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_chndra_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				material = CAB_Body_Chunder01_Primary
				mask = $CAB_Body_Chunder01_Details
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_chndra_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\CAB_Body_chndra_d_mls.dds'
				material = CAB_Body_Chunder01_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -19
					y_scale = 100
					x_scale = 75
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\CAB_Body_chndra_d_mls.dds'
				material = CAB_Body_Chunder01_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -19
					y_scale = 100
					x_scale = 75
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\CAB_Body_chndra_d_mls.dds'
				material = CAB_Body_Chunder01_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -19
					y_scale = 100
					x_scale = 75
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\CAB_Body_chndra_d_mls.dds'
				material = CAB_Body_Chunder01_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -19
					y_scale = 100
					x_scale = 75
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\CAB_Body_chndra_d_mls.dds'
				material = CAB_Body_Chunder01_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -19
					y_scale = 100
					x_scale = 75
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\CAB_Body_chndra_d_mls.dds'
				material = CAB_Body_Chunder01_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -19
					y_scale = 100
					x_scale = 75
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\CAB_Body_chndra_d_mls.dds'
				material = CAB_Body_Chunder01_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -19
					y_scale = 100
					x_scale = 75
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\CAB_Body_chndra_d_mls.dds'
				material = CAB_Body_Chunder01_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -19
					y_scale = 100
					x_scale = 75
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\CAB_Body_chndra_d_mls.dds'
				material = CAB_Body_Chunder01_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -19
					y_scale = 100
					x_scale = 75
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\CAB_Body_chndra_d_mls.dds'
				material = CAB_Body_Chunder01_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -19
					y_scale = 100
					x_scale = 75
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\CAB_Body_chndra_d_mls.dds'
				material = CAB_Body_Chunder01_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -19
					y_scale = 100
					x_scale = 75
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
					CAB_PGuardChndr07
					CAB_PGuardChndr06
					CAB_PGuardChndr04
					CAB_PGuardChndr01
					cab_pguard_sting
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
					cab_pickup_sting
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_chndr01
					cab_knob_chndr02
					CAB_Knob_Chndr03
					cab_knob_chndr04
					cab_knob_chndr05
					cab_knob_chndr06
					cab_knob_chndr07
					cab_knob_chndr08
					cab_knob_chndr09
					cab_knob_chndr10
					cab_knob_sting
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
					CAB_Bridge_Hack
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Guppy
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
		]
	}
	{
		desc_id = CAB_Body_Prediktor
		frontend_desc = qs("\LPrediktor")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_Prediktor.skin'
		pak_num = 0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = Guitar_Body_Prediktor_Primary
				mask = $CAB_Body_Prediktor_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				material = Guitar_Body_Prediktor_Primary
				mask = $CAB_Body_Prediktor_Details
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_D_MLS.dds'
				material = Guitar_Body_Prediktor_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -24
					y_trans = 1
					y_scale = 100
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_D_MLS.dds'
				material = Guitar_Body_Prediktor_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -24
					y_trans = 1
					y_scale = 100
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_D_MLS.dds'
				material = Guitar_Body_Prediktor_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -24
					y_trans = 1
					y_scale = 100
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_D_MLS.dds'
				material = Guitar_Body_Prediktor_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -24
					y_trans = 1
					y_scale = 100
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_D_MLS.dds'
				material = Guitar_Body_Prediktor_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -24
					y_trans = 1
					y_scale = 100
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_D_MLS.dds'
				material = Guitar_Body_Prediktor_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -24
					y_trans = 1
					y_scale = 100
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_D_MLS.dds'
				material = Guitar_Body_Prediktor_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -24
					y_trans = 1
					y_scale = 100
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_D_MLS.dds'
				material = Guitar_Body_Prediktor_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -24
					y_trans = 1
					y_scale = 100
					x_scale = 50
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_D_MLS.dds'
				material = Guitar_Body_Prediktor_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -24
					y_trans = 1
					y_scale = 100
					x_scale = 50
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_D_MLS.dds'
				material = Guitar_Body_Prediktor_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -24
					y_trans = 1
					y_scale = 100
					x_scale = 50
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_predikt_body01_D_MLS.dds'
				material = Guitar_Body_Prediktor_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -24
					y_trans = 1
					y_scale = 100
					x_scale = 50
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
					CAB_PG_Pred01
					CAB_PG_Pred02
					CAB_PG_Pred03
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_phunq01
					cab_knob_phunq02
					cab_knob_phunq03
					cab_knob_phunq04
					CAB_Knob_Phunq05
					cab_knob_phunq06
					cab_knob_phunq07
					CAB_Knob_Phunq08
					cab_knob_phunq09
					cab_knob_phunq10
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Guppy
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
		]
	}
	{
		desc_id = CAB_Body_Kelly
		frontend_desc = qs("\LCeilidh 9")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_Kelly.skin'
		pak_num = 0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_Kelly_Primary
				mask = $CAB_Body_Kelly_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_kelly_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				material = CAB_Kelly_Primary
				mask = $CAB_Body_Kelly_Details
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_kelly_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Kelly_D_MLS.dds'
				material = CAB_Kelly_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Kelly_D_MLS.dds'
				material = CAB_Kelly_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Kelly_D_MLS.dds'
				material = CAB_Kelly_Primary
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 50
				}
				mask = $car_gradiant_shapes
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Kelly_D_MLS.dds'
				material = CAB_Kelly_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Kelly_D_MLS.dds'
				material = CAB_Kelly_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Kelly_D_MLS.dds'
				material = CAB_Kelly_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Kelly_D_MLS.dds'
				material = CAB_Kelly_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Kelly_D_MLS.dds'
				material = CAB_Kelly_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 50
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Kelly_D_MLS.dds'
				material = CAB_Kelly_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 50
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Kelly_D_MLS.dds'
				material = CAB_Kelly_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 50
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Kelly_D_MLS.dds'
				material = CAB_Kelly_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 50
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
					CAB_Phnq_PG001
					CAB_Phnq_PG002
					CAB_PGuardChndr06
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_grmbl01
					cab_knob_grmbl02
					cab_knob_grmbl03
					cab_knob_grmbl04
					cab_knob_grmbl05
					cab_knob_grmbl06
					cab_knob_grmbl07
					CAB_Knob_Grmbl08
					CAB_Knob_Grmbl09
					CAB_Knob_Grmbl10
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Guppy
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
		]
	}
	{
		desc_id = CAB_Body_Rubyat
		frontend_desc = qs("\LThe Rubaiyat")
		locked
		price = 5000
		polaroid = Bass_Rward_Body_Rubaiyat
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_Rubyat.skin'
		pak_num = 0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_Rubyat_Primary
				mask = $CAB_Body_Rubaiyat_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_rubyat_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				material = CAB_Rubyat_Primary
				mask = $CAB_Body_Rubaiyat_Details
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_rubyat_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Rubyat_D_MLS.dds'
				material = CAB_Rubyat_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -23
					y_trans = -7
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Rubyat_D_MLS.dds'
				material = CAB_Rubyat_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -23
					y_trans = -7
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Rubyat_D_MLS.dds'
				material = CAB_Rubyat_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -23
					y_trans = -7
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Rubyat_D_MLS.dds'
				material = CAB_Rubyat_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -23
					y_trans = -7
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Rubyat_D_MLS.dds'
				material = CAB_Rubyat_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -23
					y_trans = -7
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Rubyat_D_MLS.dds'
				material = CAB_Rubyat_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -23
					y_trans = -7
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Rubyat_D_MLS.dds'
				material = CAB_Rubyat_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -23
					y_trans = -7
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Rubyat_D_MLS.dds'
				material = CAB_Rubyat_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -23
					y_trans = -7
					x_scale = 35
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Rubyat_D_MLS.dds'
				material = CAB_Rubyat_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -23
					y_trans = -7
					x_scale = 35
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Rubyat_D_MLS.dds'
				material = CAB_Rubyat_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -23
					y_trans = -7
					x_scale = 35
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_Rubyat_D_MLS.dds'
				material = CAB_Rubyat_Primary
				initial_values = {
					x_trans = -23
					y_trans = -7
					x_scale = 35
				}
				mask = $car_fontgrid_text_a8
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_rubyat01
					cab_knob_rubyat02
					cab_knob_rubyat03
					cab_knob_rubyat04
					cab_knob_rubyat05
					cab_knob_rubyat06
					cab_knob_rubyat07
					cab_knob_rubyat08
					cab_knob_rubyat09
					cab_knob_rubyat10
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Guppy
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_HEAD_Rubyat
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_Foots01
				]
			}
		]
	}
	{
		desc_id = CAB_Body_Bandera
		frontend_desc = qs("\LMLS Bandera")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_Bandera.skin'
		pak_num = 0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = Guitar_Body_Bandera_Primary
				mask = $CAB_Body_Bandera_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				material = Guitar_Body_Bandera_Primary
				mask = $CAB_Body_Bandera_Details
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -26
					y_trans = -3
					y_scale = 80
					x_scale = 40
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -26
					y_trans = -3
					y_scale = 80
					x_scale = 40
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -26
					y_trans = -3
					y_scale = 80
					x_scale = 40
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -26
					y_trans = -3
					y_scale = 80
					x_scale = 40
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -26
					y_trans = -3
					y_scale = 80
					x_scale = 40
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -26
					y_trans = -3
					y_scale = 80
					x_scale = 40
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -26
					y_trans = -3
					y_scale = 80
					x_scale = 40
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -26
					y_trans = -3
					y_scale = 80
					x_scale = 40
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -26
					y_trans = -3
					y_scale = 80
					x_scale = 40
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -26
					y_trans = -3
					y_scale = 80
					x_scale = 40
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -26
					y_trans = -3
					y_scale = 80
					x_scale = 40
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
					CAB_Phnq_PG003
					CAB_PickG_E1
					CAB_Phnq_PG002
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_phunq01
					cab_knob_phunq02
					cab_knob_phunq03
					cab_knob_phunq04
					CAB_Knob_Phunq05
					cab_knob_phunq06
					cab_knob_phunq07
					CAB_Knob_Phunq08
					cab_knob_phunq09
					cab_knob_phunq10
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Guppy
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_Flay_rev
					CAB_Head_RadEx
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_Hack
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
				]
			}
		]
	}
	{
		desc_id = CAB_Body_Grmbl_A
		frontend_desc = qs("\LGrumbel Machete")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_Grmbl_A.skin'
		pak_num = 1
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_Body_Grmbl_A_Primary
				mask = $CAB_Body_Grmbl_A_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_grumbel01_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				material = CAB_Body_Grmbl_A_Primary
				mask = $CAB_Body_GRMBL_Details
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_grumbel01_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_grumbel01_D_MLS.dds'
				material = CAB_Body_Grmbl_A_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -23
					y_trans = 2
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_grumbel01_D_MLS.dds'
				material = CAB_Body_Grmbl_A_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -23
					y_trans = 2
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_grumbel01_D_MLS.dds'
				material = CAB_Body_Grmbl_A_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -23
					y_trans = 2
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_grumbel01_D_MLS.dds'
				material = CAB_Body_Grmbl_A_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -23
					y_trans = 2
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_grumbel01_D_MLS.dds'
				material = CAB_Body_Grmbl_A_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -23
					y_trans = 2
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_grumbel01_D_MLS.dds'
				material = CAB_Body_Grmbl_A_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -23
					y_trans = 2
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_grumbel01_D_MLS.dds'
				material = CAB_Body_Grmbl_A_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -23
					y_trans = 2
					x_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_grumbel01_D_MLS.dds'
				material = CAB_Body_Grmbl_A_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -23
					y_trans = 2
					x_scale = 50
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_grumbel01_D_MLS.dds'
				material = CAB_Body_Grmbl_A_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -23
					y_trans = 2
					x_scale = 50
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_grumbel01_D_MLS.dds'
				material = CAB_Body_Grmbl_A_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -23
					y_trans = 2
					x_scale = 50
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_grumbel01_D_MLS.dds'
				material = CAB_Body_Grmbl_A_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -23
					y_trans = 2
					x_scale = 50
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_StNek_BNSt01
					CAB_StNek_Maple
					CAB_StNek_Ebony
					CAB_StNekF_Rosewood
					CAB_StNekF_Maple
					CAB_StNekF_Ebony
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					CAB_PGard_Grmbl01
					CAB_PGard_Grmbl02
					CAB_PGard_Grmbl03
					none
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_grmbl01
					cab_knob_grmbl02
					cab_knob_grmbl03
					cab_knob_grmbl04
					cab_knob_grmbl05
					cab_knob_grmbl06
					cab_knob_grmbl07
					CAB_Knob_Grmbl08
					CAB_Knob_Grmbl09
					CAB_Knob_Grmbl10
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
					CAB_Bridge_Hack
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Guppy
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
		]
	}
	{
		desc_id = CAB_Body_Phunq01
		frontend_desc = qs("\LPhunquie DanzKlas")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_Phunq01.skin'
		pak_num = 1
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_Body_Bubinga01_Primary
				mask = $CAB_Body_Phunq01_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_beech01_b1_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				material = CAB_Body_Bubinga01_Primary
				mask = $CAB_Body_PHUNQ01_Details
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_beech01_b1_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				material = CAB_Body_Bubinga01_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				material = CAB_Body_Bubinga01_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				material = CAB_Body_Bubinga01_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				material = CAB_Body_Bubinga01_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				material = CAB_Body_Bubinga01_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				material = CAB_Body_Bubinga01_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				material = CAB_Body_Bubinga01_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				material = CAB_Body_Bubinga01_Primary
				mask = $car_fontgrid_title_a1
				iinitial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 35
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				material = CAB_Body_Bubinga01_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 35
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				material = CAB_Body_Bubinga01_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 35
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				material = CAB_Body_Bubinga01_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -24
					y_trans = -3
					y_scale = 70
					x_scale = 35
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_StNek_BNSt01
					CAB_StNek_Maple
					CAB_StNek_Ebony
					CAB_StNekF_Rosewood
					CAB_StNekF_Maple
					CAB_StNekF_Ebony
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
					CAB_Phnq_PG001
					CAB_Phnq_PG002
					CAB_Phnq_PG003
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_phunq01
					cab_knob_phunq02
					cab_knob_phunq03
					cab_knob_phunq04
					CAB_Knob_Phunq05
					cab_knob_phunq06
					cab_knob_phunq07
					CAB_Knob_Phunq08
					cab_knob_phunq09
					cab_knob_phunq10
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
					CAB_Bridge_Hack
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Guppy
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
		]
	}
	{
		desc_id = CAB_Body_BB3A
		frontend_desc = qs("\LBachenhacker 2008")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_BB3A.skin'
		pak_num = 1
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_Body_BB3A_Primary
				mask = $CAB_Body_BB3A_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_bodywood_b3a_e_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				material = CAB_Body_BB3A_Primary
				mask = $CAB_Body_BB3A_Details
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_bodywood_b3a_e_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Bodywood_b3a_e_mls.dds'
				material = CAB_Body_BB3A_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -23
					x_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Bodywood_b3a_e_mls.dds'
				material = CAB_Body_BB3A_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -23
					x_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Bodywood_b3a_e_mls.dds'
				material = CAB_Body_BB3A_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -23
					x_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Bodywood_b3a_e_mls.dds'
				material = CAB_Body_BB3A_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -23
					x_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Bodywood_b3a_e_mls.dds'
				material = CAB_Body_BB3A_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -23
					x_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Bodywood_b3a_e_mls.dds'
				material = CAB_Body_BB3A_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -23
					x_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Bodywood_b3a_e_mls.dds'
				material = CAB_Body_BB3A_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -23
					x_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Bodywood_b3a_e_mls.dds'
				material = CAB_Body_BB3A_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -23
					x_scale = 60
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Bodywood_b3a_e_mls.dds'
				material = CAB_Body_BB3A_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -23
					x_scale = 60
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Bodywood_b3a_e_mls.dds'
				material = CAB_Body_BB3A_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -23
					x_scale = 60
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Bodywood_b3a_e_mls.dds'
				material = CAB_Body_BB3A_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -23
					x_scale = 60
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
					CAB_PickG_F1
					CAB_PickG_F2
					CAB_PickG_F3
					none
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_hack01
					cab_knob_hack02
					cab_knob_hack03
					cab_knob_hack04
					cab_knob_hack05
					cab_knob_hack06
					cab_knob_hack07
					cab_knob_hack08
					CAB_Knob_Hack09
					cab_knob_hack10
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
					CAB_Bridge_Hack
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Guppy
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
		]
	}
	{
		desc_id = CAB_BodyFoots01
		frontend_desc = qs("\LThe Footsie!")
		locked
		price = 2000
		polaroid = Bass_Rward_Body_Footsie
		mesh = 'models/CAR_Instruments/Bass/CAB_BodyFoots01.skin'
		pak_num = 1
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_BodyFoots01_Primary
				mask = $CAB_BodyFoots01_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_footsy01_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				material = CAB_BodyFoots01_Primary
				mask = $CAB_BodyFoots01_Details
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_footsy01_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_footsy01_d_mls.dds'
				material = CAB_BodyFoots01_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -25
					x_scale = 65
					y_scale = 125
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_footsy01_d_mls.dds'
				material = CAB_BodyFoots01_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -25
					x_scale = 65
					y_scale = 125
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_footsy01_d_mls.dds'
				material = CAB_BodyFoots01_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -25
					x_scale = 65
					y_scale = 125
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_footsy01_d_mls.dds'
				material = CAB_BodyFoots01_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -25
					x_scale = 65
					y_scale = 125
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_footsy01_d_mls.dds'
				material = CAB_BodyFoots01_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -25
					x_scale = 65
					y_scale = 125
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_footsy01_d_mls.dds'
				material = CAB_BodyFoots01_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -25
					x_scale = 65
					y_scale = 125
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_footsy01_d_mls.dds'
				material = CAB_BodyFoots01_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -25
					x_scale = 65
					y_scale = 125
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_footsy01_d_mls.dds'
				material = CAB_BodyFoots01_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -25
					x_scale = 65
					y_scale = 125
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_footsy01_d_mls.dds'
				material = CAB_BodyFoots01_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -25
					x_scale = 65
					y_scale = 125
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_footsy01_d_mls.dds'
				material = CAB_BodyFoots01_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -25
					x_scale = 65
					y_scale = 125
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_footsy01_d_mls.dds'
				material = CAB_BodyFoots01_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -25
					x_scale = 65
					y_scale = 125
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_StNek_BNSt01
					CAB_StNek_Maple
					CAB_StNek_Ebony
					CAB_StNekF_Rosewood
					CAB_StNekF_Maple
					CAB_StNekF_Ebony
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
					CAB_PGrdFts001
					CAB_PGrdFtsB
					CAB_PGrdFtsC
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_foots01
					cab_knob_foots02
					cab_knob_foots03
					cab_knob_foots04
					cab_knob_foots05
					cab_knob_foots06
					cab_knob_foots07
					cab_knob_foots08
					cab_knob_foots09
					cab_knob_foots10
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
					CAB_Bridge_Hack
				]
			}
		]
	}
	{
		desc_id = CAB_Body_Laurenz_BBA
		frontend_desc = qs("\LLaurenz Spyter 3")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_Laurenz_BBA.skin'
		locked
		price = 3000
		polaroid = Bass_Rward_Body_SPYTER
		pak_num = 1
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $CAB_Body_Laurenz_BBA_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_spyter02_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $CAB_Body_Laurenz_BBA_Details
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_spyter02_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_spyter02_D_mls.dds'
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -17
					x_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_spyter02_D_mls.dds'
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -17
					x_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_spyter02_D_mls.dds'
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -17
					x_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_spyter02_D_mls.dds'
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -17
					x_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_spyter02_D_mls.dds'
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -17
					x_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_spyter02_D_mls.dds'
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -17
					x_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_spyter02_D_mls.dds'
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -17
					x_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_spyter02_D_mls.dds'
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -17
					x_scale = 55
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_spyter02_D_mls.dds'
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -17
					x_scale = 55
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_spyter02_D_mls.dds'
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -17
					x_scale = 55
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_spyter02_D_mls.dds'
				material = CAB_Body_Laurenz_BBA_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -17
					x_scale = 55
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
					CAB_PG_Spyt001
					CAB_PG_Spyt002
					CAB_PG_Spyt003
					CAB_PG_Spyt004
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_spyt01
					cab_knob_spyt02
					cab_knob_spyt03
					cab_knob_spyt04
					cab_knob_spyt05
					cab_knob_spyt06
					cab_knob_spyt07
					cab_knob_spyt08
					cab_knob_spyt09
					cab_knob_spyt10
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
				]
			}
		]
	}
	{
		desc_id = CAB_Skull
		frontend_desc = qs("\LSkull")
		mesh = 'models/CAR_Instruments/Bass/CAB_Skull.skin'
		locked
		price = 1500
		polaroid = Bass_Rward_Body_Skull
		pak_num = 2
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_SKULL_Primary
				mask = $CAB_Skull_finishes
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_special_skull_01.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_special_skull_01.dds'
				material = CAB_SKULL_Primary
				mask = $CAB_Skull_Details
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_special_skull_01.dds'
				material = CAB_SKULL_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					y_trans = 9
					x_scale = 16
					y_scale = 35
					x_trans = -30
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_special_skull_01.dds'
				material = CAB_SKULL_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					y_trans = 9
					x_scale = 16
					y_scale = 35
					x_trans = -30
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_special_skull_01.dds'
				material = CAB_SKULL_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					y_trans = 9
					x_scale = 16
					y_scale = 35
					x_trans = -30
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_special_skull_01.dds'
				material = CAB_SKULL_Primary
				mask = $car_icons
				initial_values = {
					y_trans = 9
					x_scale = 16
					y_scale = 35
					x_trans = -30
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_special_skull_01.dds'
				material = CAB_SKULL_Primary
				mask = $car_living_shapes
				initial_values = {
					y_trans = 9
					x_scale = 16
					y_scale = 35
					x_trans = -30
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_special_skull_01.dds'
				material = CAB_SKULL_Primary
				mask = $car_graphics
				initial_values = {
					y_trans = 9
					x_scale = 16
					y_scale = 35
					x_trans = -30
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_special_skull_01.dds'
				material = CAB_SKULL_Primary
				mask = $car_sponsors
				initial_values = {
					y_trans = 9
					x_scale = 16
					y_scale = 35
					x_trans = -30
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_special_skull_01.dds'
				material = CAB_SKULL_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					y_trans = 9
					x_scale = 16
					y_scale = 35
					x_trans = -30
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_special_skull_01.dds'
				material = CAB_SKULL_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					y_trans = 9
					x_scale = 16
					y_scale = 35
					x_trans = -30
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_special_skull_01.dds'
				material = CAB_SKULL_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					y_trans = 9
					x_scale = 16
					y_scale = 35
					x_trans = -30
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_special_skull_01.dds'
				material = CAB_SKULL_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					y_trans = 9
					x_scale = 16
					y_scale = 35
					x_trans = -30
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_skull01
					cab_knob_skull02
					cab_knob_skull03
					cab_knob_skull04
					cab_knob_skull05
					cab_knob_skull06
					cab_knob_skull07
					cab_knob_skull08
					cab_knob_skull09
					cab_knob_skull10
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
					CAB_Bridge_Hack
				]
			}
		]
	}
	{
		desc_id = CAB_Body_SixTease
		frontend_desc = qs("\LMLS Six Tease")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_SixTease.skin'
		pak_num = 2
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_Body_SixTease_Primary
				mask = $CAB_Body_SixTease_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_sixtease01_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				material = CAB_Body_SixTease_Primary
				mask = $CAB_Body_SixTease_Details
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_sixtease01_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_SixTease01_D_mls.dds'
				material = CAB_Body_SixTease_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					y_trans = -1
					x_scale = 75
					y_scale = 130
					x_trans = -24
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_SixTease01_D_mls.dds'
				material = CAB_Body_SixTease_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					y_trans = -1
					x_scale = 75
					y_scale = 130
					x_trans = -24
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_SixTease01_D_mls.dds'
				material = CAB_Body_SixTease_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					y_trans = -1
					x_scale = 75
					y_scale = 130
					x_trans = -24
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_SixTease01_D_mls.dds'
				material = CAB_Body_SixTease_Primary
				mask = $car_icons
				initial_values = {
					y_trans = -1
					x_scale = 75
					y_scale = 130
					x_trans = -24
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_SixTease01_D_mls.dds'
				material = CAB_Body_SixTease_Primary
				mask = $car_living_shapes
				initial_values = {
					y_trans = -1
					x_scale = 75
					y_scale = 130
					x_trans = -24
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_SixTease01_D_mls.dds'
				material = CAB_Body_SixTease_Primary
				mask = $car_graphics
				initial_values = {
					y_trans = -1
					x_scale = 75
					y_scale = 130
					x_trans = -24
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_SixTease01_D_mls.dds'
				material = CAB_Body_SixTease_Primary
				mask = $car_sponsors
				initial_values = {
					y_trans = -1
					x_scale = 75
					y_scale = 130
					x_trans = -24
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_SixTease01_D_mls.dds'
				material = CAB_Body_SixTease_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					y_trans = -1
					x_scale = 75
					y_scale = 130
					x_trans = -24
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_SixTease01_D_mls.dds'
				material = CAB_Body_SixTease_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					y_trans = -1
					x_scale = 75
					y_scale = 130
					x_trans = -24
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_SixTease01_D_mls.dds'
				material = CAB_Body_SixTease_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					y_trans = -1
					x_scale = 75
					y_scale = 130
					x_trans = -24
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_SixTease01_D_mls.dds'
				material = CAB_Body_SixTease_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					y_trans = -1
					x_scale = 75
					y_scale = 130
					x_trans = -24
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
					CAB_PG_6TZ001
					CAB_PG_6TZ002
					CAB_PG_6TZ004
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knobs_6tz01
					cab_knobs_6tz02
					cab_knobs_6tz03
					cab_knobs_6tz04
					cab_knobs_6tz05
					cab_knobs_6tz06
					cab_knobs_6tz07
					cab_knobs_6tz08
					cab_knobs_6tz09
					CAB_Knobs_6TZ10
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
					CAB_Bridge_Hack
				]
			}
		]
	}
	{
		desc_id = CAB_Body_XRend01
		frontend_desc = qs("\LLaurenz X-Rend")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_XRend01.skin'
		locked
		price = 2000
		polaroid = Bass_Rward_Body_XREND
		pak_num = 2
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = CAB_Body_XRend01_Primary
				mask = $CAB_Body_XRend01_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_xrend01_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				material = CAB_Body_XRend01_Primary
				mask = $CAB_Body_xrend01_Details
				base_tex = 'tex\\models\\CAR_Instruments\\Bass\\cab_body_xrend01_d_mls.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_xrend01_d_mls.dds'
				material = CAB_Body_XRend01_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_scale = 35
					y_scale = 75
					x_trans = -15
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_xrend01_d_mls.dds'
				material = CAB_Body_XRend01_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_scale = 35
					y_scale = 75
					x_trans = -15
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_xrend01_d_mls.dds'
				material = CAB_Body_XRend01_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_scale = 35
					y_scale = 75
					x_trans = -15
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_xrend01_d_mls.dds'
				material = CAB_Body_XRend01_Primary
				mask = $car_icons
				initial_values = {
					x_scale = 35
					y_scale = 75
					x_trans = -15
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_xrend01_d_mls.dds'
				material = CAB_Body_XRend01_Primary
				mask = $car_living_shapes
				initial_values = {
					x_scale = 35
					y_scale = 75
					x_trans = -15
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_xrend01_d_mls.dds'
				material = CAB_Body_XRend01_Primary
				mask = $car_graphics
				initial_values = {
					x_scale = 35
					y_scale = 75
					x_trans = -15
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_xrend01_d_mls.dds'
				material = CAB_Body_XRend01_Primary
				mask = $car_sponsors
				initial_values = {
					x_scale = 35
					y_scale = 75
					x_trans = -15
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_xrend01_d_mls.dds'
				material = CAB_Body_XRend01_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_scale = 35
					y_scale = 75
					x_trans = -15
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_xrend01_d_mls.dds'
				material = CAB_Body_XRend01_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_scale = 35
					y_scale = 75
					x_trans = -15
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_xrend01_d_mls.dds'
				material = CAB_Body_XRend01_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_scale = 35
					y_scale = 75
					x_trans = -15
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\Cab_Body_xrend01_d_mls.dds'
				material = CAB_Body_XRend01_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_scale = 35
					y_scale = 75
					x_trans = -15
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
					CAB_PG_Xrend003
					CAB_PG_Xrend002
					CAB_PG_Xrend001
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_xrend01
					cab_knob_xrend02
					cab_knob_xrend03
					cab_knob_xrend04
					cab_knob_xrend05
					cab_knob_xrend06
					cab_knob_xrend07
					cab_knob_xrend08
					cab_knob_xrend09
					cab_knob_xrend10
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
				]
			}
		]
	}
	{
		desc_id = CAB_Body_X_Battleaxe
		frontend_desc = qs("\LBattle Bass")
		mesh = 'models/CAR_Instruments/Bass/CAB_X_Battleaxe.skin'
		locked
		price = 2000
		polaroid = Bass_Rward_Body_BatlAx
		pak_num = 2
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = GTR_Body_X_Battleaxe_Primary
				mask = $CAB_Body_Battleaxe_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				mask = $CAB_Body_Battleaxe_Details
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -12
					x_scale = 16
					y_scale = 30
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -12
					x_scale = 16
					y_scale = 30
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -12
					x_scale = 16
					y_scale = 30
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -12
					x_scale = 16
					y_scale = 30
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -12
					x_scale = 16
					y_scale = 30
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -12
					x_scale = 16
					y_scale = 30
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -12
					x_scale = 16
					y_scale = 30
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -12
					x_scale = 16
					y_scale = 30
					y_trans = -1
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -12
					x_scale = 16
					y_scale = 30
					y_trans = -1
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -12
					x_scale = 16
					y_scale = 30
					y_trans = -1
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -12
					x_scale = 16
					y_scale = 30
					y_trans = -1
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_icross01
					cab_knob_icross02
					cab_knob_icross03
					cab_knob_icross04
					cab_knob_icross05
					cab_knob_icross06
					cab_knob_icross07
					cab_knob_icross08
					cab_knob_icross09
					cab_knob_icross10
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
					CAB_Bridge_Hack
				]
			}
		]
	}
	{
		desc_id = CAB_Body_X_ICross
		frontend_desc = qs("\LICross")
		mesh = 'models/CAR_Instruments/Bass/CAB_Body_X_ICross.skin'
		locked
		polaroid = Bass_Rward_Body_ICross
		price = 1500
		pak_num = 2
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				material = GTR_Body_X_ICross_Primary
				mask = $CAB_Body_Icross_Finishes
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				pre_userlayer
				diffuse
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				mask = $CAB_Body_Icross_Details
				pre_userlayer
				diffuse
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					y_trans = 29
					x_scale = 16
					y_scale = 30
					x_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					y_trans = 29
					x_scale = 16
					y_scale = 30
					x_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					y_trans = 29
					x_scale = 16
					y_scale = 30
					x_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				mask = $car_icons
				initial_values = {
					y_trans = 29
					x_scale = 16
					y_scale = 30
					x_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				mask = $car_living_shapes
				initial_values = {
					y_trans = 29
					x_scale = 16
					y_scale = 30
					x_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				mask = $car_graphics
				initial_values = {
					y_trans = 29
					x_scale = 16
					y_scale = 30
					x_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				mask = $car_sponsors
				initial_values = {
					y_trans = 29
					x_scale = 16
					y_scale = 30
					x_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					y_trans = 29
					x_scale = 16
					y_scale = 30
					x_trans = -14
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					y_trans = 29
					x_scale = 16
					y_scale = 30
					x_trans = -14
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					y_trans = 29
					x_scale = 16
					y_scale = 30
					x_trans = -14
				}
				diffuse
				userlayer
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex\\models\\CAR_Instruments\\guitars\\guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					y_trans = 29
					x_scale = 16
					y_scale = 30
					x_trans = -14
				}
				diffuse
				userlayer
			}
		]
		inclusion = [
			{
				part = CAS_Bass_Neck
				valid = [
					CAB_Neck_BN1A
					CAB_Neck_BN1B
					CAB_Neck_BNEbony
					CAB_Neck_BFretlss01
					CAB_Neck_BFretlss02
					CAB_Neck_BFretlss03
				]
			}
			{
				part = CAS_Bass_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Bass_Pickups
				valid = [
					CAB_pickups_EMG01
					CAB_pickups_EMG02
					CAB_pickups_EMG03
					CAB_pickup_Hack03
					CAB_pickup_Hack02
					CAB_pickup_Hack01
					CAB_Pickups_BP1A
					CAB_Pickups_BP1A2
					CAB_Pickups_BP1A3
					CAB_Jbass_pickup_01
					CAB_JP_Pickup_B
					CAB_PBass_Pickup_A
					CAB_JP_Pickup_A
					CAB_Bumbl_pickup_A1
					CAB_Bumbl_pickup_A2
					CAB_Bumbl_pickup_A3
					CAB_HBuck_pickup_A1
					CAB_HBuck_pickup_A2
					CAB_HBuck_pickup_A3
				]
			}
			{
				part = CAS_Bass_Knobs
				valid = [
					cab_knob_icross01
					cab_knob_icross02
					cab_knob_icross03
					cab_knob_icross04
					cab_knob_icross05
					cab_knob_icross06
					cab_knob_icross07
					cab_knob_icross08
					cab_knob_icross09
					cab_knob_icross10
				]
			}
			{
				part = CAS_Bass_Head
				valid = [
					CAB_Head_Predikt
					CAB_Head_Skull
					CAB_Head_RadEx
					CAB_Head_RadEx
					CAB_Head_Flay_rev
					CAB_Head_Mnemonic
					CAB_Head_Foots01
					CAB_Head_BH5A
					CAB_Head_BHPhnq01
					CAB_Head_MLSplit
					CAB_Head_Grumbel01
					CAB_Head_BH4A
					CAB_Head_BH6A
					CAB_Head_BH6B
					CAB_Head_BH7A
					CAB_Head_BH1A
					CAB_Head_SixTease
					CAB_Head_Foots01
				]
			}
			{
				part = CAS_Bass_Bridges
				valid = [
					CAB_Bridge_BB2A
					CAB_Bridge_BB1A
					CAB_Bridge_BB3A
					CAB_Bridge_MLS
					CAB_Bridge_Hack
				]
			}
		]
	}
]
CAS_Bass_Neck = [
	{
		desc_id = CAB_Neck_BN1A
		frontend_desc = qs("\LMaple with Maple")
		mesh = 'models/CAR_Instruments/bass/CAB_Neck_BN1A.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_neck_01_maple_d_mls.dds'
				material = CAB_NECK_BN1A_Neck
				mask = $CAB_Neck_01_Finishes
				initial_values = {
					color = grey_3
				}
				diffuse
				pre_userlayer
			}
		]
		default_cap = [
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
	{
		desc_id = CAB_Neck_BN1B
		frontend_desc = qs("\LMaple with Rosewood")
		mesh = 'models/CAR_Instruments/bass/CAB_Neck_BN1B.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_neck_01b_rosewood_d_mls.dds'
				material = CAB_NECK_BN1B_Neck
				mask = $CAB_Neck_01_Finishes
				diffuse
				pre_userlayer
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01b_rosewood_d_mls.dds`
				material = CAB_NECK_BN1B_Neck
				diffuse
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAB/cab_nek_lyrmpl_blk_wht.img`
						flags = 4
					}
				]
			}
		]
	}
	{
		desc_id = CAB_Neck_BNEbony
		frontend_desc = qs("\LMaple with Ebony")
		mesh = 'models/CAR_Instruments/bass/CAB_Neck_BNEbony.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_nek_ebony01.dds'
				material = CAB_Neck_Ebony_Neck
				mask = $CAB_Neck_01_Finishes
				diffuse
				pre_userlayer
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Bass/cab_nek_ebony01.dds`
				material = CAB_Neck_Ebony_Neck
				diffuse
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAB/CAB_Nek_LyrMpl_Wht_Dot.img`
						flags = 4
					}
				]
			}
		]
	}
	{
		desc_id = CAB_StNek_Maple
		frontend_desc = qs("\LSet Neck Maple")
		mesh = 'models/CAR_Instruments/Bass/CAB_StNek_Maple.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_neck_01_maple_d_mls.dds'
				material = CAB_StNek_Maple_Neck
				mask = $CAB_Neck_01_Finishes
				initial_values = {
					color = grey_3
				}
				diffuse
				pre_userlayer
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01_maple_d_mls.dds`
				material = CAB_StNek_Maple_Neck
				diffuse
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAB/CAB_Nek_LyrMpl_Wht_Dot.img`
						flags = 4
						color = grey_1
					}
				]
			}
		]
	}
	{
		desc_id = CAB_StNek_BNSt01
		frontend_desc = qs("\LSet Neck Rosewood")
		mesh = 'models/CAR_Instruments/Bass/CAB_StNek_BNSt01.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_neck_01b_rosewood_d_mls.dds'
				material = CAB_TNeck_BNT01_neck
				mask = $CAB_Neck_01_Finishes
				diffuse
				pre_userlayer
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01b_rosewood_d_mls.dds`
				material = CAB_TNeck_BNT01_neck
				diffuse
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAB/CAB_Nek_LyrMpl_Wht_Dot.img`
						flags = 4
					}
				]
			}
		]
	}
	{
		desc_id = CAB_StNek_Ebony
		frontend_desc = qs("\LSet Neck Ebony")
		mesh = 'models/CAR_Instruments/Bass/CAB_StNek_Ebony.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_nek_ebony01.dds'
				material = CAB_StNek_Ebony_Neck
				mask = $CAB_Neck_01_Finishes
				diffuse
				pre_userlayer
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Bass/cab_nek_ebony01.dds`
				material = CAB_StNek_Ebony_Neck
				diffuse
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAB/CAB_Nek_LyrMpl_Wht_Dot.img`
						flags = 4
					}
				]
			}
		]
	}
	{
		desc_id = CAB_StNekF_Maple
		frontend_desc = qs("\LFretless Set Neck Maple")
		mesh = 'models/CAR_Instruments/Bass/CAB_StNekF_Mpale.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_nekf_maple01.dds'
				material = CAB_StNekF_Maple_Neck
				mask = $CAB_Neck_Fretless01_Finishes
				initial_values = {
					color = grey_3
				}
				diffuse
				pre_userlayer
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Bass/cab_nekf_maple01.dds`
				material = CAB_StNekF_Maple_Neck
				diffuse
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAB/CAB_Nek_tribal2_F.img`
						flags = 4
						color = grey_1
					}
				]
			}
		]
	}
	{
		desc_id = CAB_StNekF_Rosewood
		frontend_desc = qs("\LFretless Set Neck Rosewood")
		mesh = 'models/CAR_Instruments/Bass/CAB_StNekF_Rosewood.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_neck_fretlss01_d.dds'
				material = CAB_StNekF_Rosewood_neck
				mask = $CAB_Neck_Fretless01_Finishes
				diffuse
				pre_userlayer
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Bass/cab_neck_fretlss01_d.dds`
				material = CAB_StNekF_Rosewood_neck
				diffuse
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAB/CAB_Nek_pumpkins.img`
						flags = 4
					}
				]
			}
		]
	}
	{
		desc_id = CAB_StNekF_Ebony
		frontend_desc = qs("\LFretless Set Neck Ebony")
		mesh = 'models/CAR_Instruments/Bass/CAB_StNekF_Ebony.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_nekf_ebony01.dds'
				material = CAB_StNekF_Ebony_Neck
				mask = $CAB_Neck_Fretless01_Finishes
				diffuse
				pre_userlayer
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Bass/cab_nekf_ebony01.dds`
				material = CAB_StNekF_Ebony_Neck
				diffuse
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAB/CAB_Nek_tribal_F.img`
						flags = 4
					}
				]
			}
		]
	}
	{
		desc_id = CAB_Neck_BFretlss03
		frontend_desc = qs("\LFretless Maple")
		mesh = 'models/CAR_Instruments/Bass/CAB_Neck_BFretlss03.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_nekf_maple01.dds'
				material = CAB_Neck_Fretless03_neck
				mask = $CAB_Neck_Fretless01_Finishes
				initial_values = {
					color = grey_3
				}
				diffuse
				pre_userlayer
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Bass/cab_nekf_maple01.dds`
				material = CAB_Neck_Fretless03_neck
				diffuse
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAB/CAB_Nek_tribal_F.img`
						flags = 4
						color = grey_1
					}
				]
			}
		]
	}
	{
		desc_id = CAB_Neck_BFretlss01
		frontend_desc = qs("\LFretless Rosewood")
		mesh = 'models/CAR_Instruments/Bass/CAB_Neck_BFretlss01.skin'
		locked
		polaroid = Bass_Rwds_Nek_Frtls_Rose
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_neck_fretlss01_d.dds'
				material = CAB_Neck_Fretless01_neck
				mask = $CAB_Neck_Fretless01_Finishes
				diffuse
				pre_userlayer
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Bass/cab_neck_fretlss01_d.dds`
				material = CAB_Neck_Fretless01_neck
				diffuse
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAB/CAB_Nek_tribal2_F.img`
						flags = 4
					}
				]
			}
		]
	}
	{
		desc_id = CAB_Neck_BFretlss02
		frontend_desc = qs("\LFretless Ebony")
		mesh = 'models/CAR_Instruments/Bass/CAB_Neck_BFretlss02.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_nekf_ebony01.dds'
				material = CAB_Neck_Fretless02_neck
				mask = $CAB_Neck_Fretless01_Finishes
				diffuse
				pre_userlayer
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Bass/cab_nekf_ebony01.dds`
				material = CAB_Neck_Fretless02_neck
				diffuse
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAB/CAB_Nek_vineF_D_DS.img`
						flags = 4
					}
				]
			}
		]
	}
]
CAS_Bass_Head = [
	{
		desc_id = CAB_Head_RadEx
		frontend_desc = qs("\LRadEx")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_Radex.skin'
		materials = [
			CAB_Head_RadEx_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $CAB_Head_13_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $CAB_Head_13_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = 5
					y_trans = 8
					x_scale = 25
					y_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = 5
					y_trans = 8
					x_scale = 25
					y_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = 5
					y_trans = 8
					x_scale = 25
					y_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $car_icons
				initial_values = {
					x_trans = 5
					y_trans = 8
					x_scale = 25
					y_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $car_living_shapes
				initial_values = {
					x_trans = 5
					y_trans = 8
					x_scale = 25
					y_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $car_graphics
				initial_values = {
					x_trans = 5
					y_trans = 8
					x_scale = 25
					y_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $car_sponsors
				initial_values = {
					x_trans = 5
					y_trans = 8
					x_scale = 25
					y_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = 5
					y_trans = 8
					x_scale = 25
					y_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = 5
					y_trans = 8
					x_scale = 25
					y_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = 5
					y_trans = 8
					x_scale = 25
					y_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds'
				material = CAB_Head_RadEx_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = 5
					y_trans = 8
					x_scale = 25
					y_scale = 35
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_BH1A
		frontend_desc = qs("\LGedulus IV")
		mesh = 'models/CAR_Instruments/bass/Cab_Head_BH1A.skin'
		materials = [
			CAB_Head_BH2A_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $CAB_Head_01_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $CAB_Head_01_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					y_trans = -7
					x_scale = 65
					y_scale = 30
					rot = 1400
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex\\models\\CAR_Instruments\\bass\\cab_body_beech01_b1_d_mls.dds'
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					y_trans = -7
					x_scale = 65
					y_scale = 30
					rot = 1400
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					y_trans = -7
					x_scale = 65
					y_scale = 30
					rot = 1400
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $car_icons
				initial_values = {
					y_trans = -7
					x_scale = 65
					y_scale = 30
					rot = 1400
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $car_living_shapes
				initial_values = {
					y_trans = -7
					x_scale = 65
					y_scale = 30
					rot = 1400
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $car_graphics
				initial_values = {
					y_trans = -7
					x_scale = 65
					y_scale = 30
					rot = 1400
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $car_sponsors
				initial_values = {
					y_trans = -7
					x_scale = 65
					y_scale = 30
					rot = 1400
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					y_trans = -7
					x_scale = 65
					y_scale = 30
					rot = 1400
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					y_trans = -7
					x_scale = 65
					y_scale = 30
					rot = 1400
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					y_trans = -7
					x_scale = 65
					y_scale = 30
					rot = 1400
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds'
				material = CAB_Head_BH2A_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					y_trans = -7
					x_scale = 65
					y_scale = 30
					rot = 1400
					x_trans = -28
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_BH6A
		frontend_desc = qs("\LChunder Trad")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_BH6A.skin'
		materials = [
			CAB_Head_Chunder02_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $CAB_Head_02_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $CAB_Head_02_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -33
					x_scale = 25
					y_scale = 60
					flags = 3
					y_trans = 3
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -33
					x_scale = 25
					y_scale = 60
					flags = 3
					y_trans = 3
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -33
					x_scale = 25
					y_scale = 60
					flags = 3
					y_trans = 3
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -33
					x_scale = 25
					y_scale = 60
					flags = 3
					y_trans = 3
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -33
					x_scale = 25
					y_scale = 60
					flags = 3
					y_trans = 3
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -33
					x_scale = 25
					y_scale = 60
					flags = 3
					y_trans = 3
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -33
					x_scale = 25
					y_scale = 60
					flags = 3
					y_trans = 3
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -33
					x_scale = 25
					y_scale = 60
					flags = 3
					y_trans = 3
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -33
					x_scale = 25
					y_scale = 60
					flags = 3
					y_trans = 3
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -33
					x_scale = 25
					y_scale = 60
					flags = 3
					y_trans = 3
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh6a.dds'
				material = CAB_Head_Chunder02_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -33
					x_scale = 25
					y_scale = 60
					flags = 3
					y_trans = 3
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_HEAD_Rubyat
		frontend_desc = qs("\LRubaiyat Headless")
		mesh = 'models/CAR_Instruments/bass/CAB_HEAD_Rubyat.skin'
		materials = [
			CAB_Head_Rubyat_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_machine_rubyat_d.dds'
				material = CAB_Head_Rubyat_Hardware
				mask = $CAB_Head_Rubyat_Finishes
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_Head_BH6B
		frontend_desc = qs("\LChunder Trad DeLuxe")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_BH6B.skin'
		materials = [
			CAB_Head_Chunder01_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $CAB_Head_03_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $CAB_Head_03_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $car_icons
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $car_living_shapes
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $car_graphics
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $car_sponsors
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds'
				material = CAB_Head_Chunder01_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_BH7A
		frontend_desc = qs("\LBachenhacker 2008")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_BH7A.skin'
		materials = [
			CAB_Head_BH7A_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $CAB_Head_05_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $CAB_Head_05_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $car_icons
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $car_living_shapes
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $car_graphics
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $car_sponsors
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh7a.dds'
				material = CAB_Head_BH7A_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					y_trans = -5
					x_scale = 20
					y_scale = 45
					flags = 3
					x_trans = -28
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_BH4A
		frontend_desc = qs("\LDarker Flay I")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_BH4A.skin'
		materials = [
			CAB_Head_BH1A_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $CAB_Head_06_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $CAB_Head_06_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_icons
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_living_shapes
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_graphics
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_sponsors
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_Flay_rev
		frontend_desc = qs("\LDarker Flay Reverse")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_Flay_rev.skin'
		materials = [
			CAB_Head_BH1A_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $CAB_Head_06_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $CAB_Head_06_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_icons
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_living_shapes
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_graphics
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_sponsors
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_flay001.dds'
				material = CAB_Head_BH1A_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -41
					x_scale = 10
					y_scale = 50
					y_trans = -1
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_BH5A
		frontend_desc = qs("\LLaurenz Spyter")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_BH5A.skin'
		materials = [
			CAB_Head_BH5A_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $CAB_Head_07_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $CAB_Head_07_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					y_trans = -1
					x_scale = 20
					y_scale = 60
					flags = 3
					x_trans = -29
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					y_trans = -1
					x_scale = 20
					y_scale = 60
					flags = 3
					x_trans = -29
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					y_trans = -1
					x_scale = 20
					y_scale = 60
					flags = 3
					x_trans = -29
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $car_icons
				initial_values = {
					y_trans = -1
					x_scale = 20
					y_scale = 60
					flags = 3
					x_trans = -29
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $car_living_shapes
				initial_values = {
					y_trans = -1
					x_scale = 20
					y_scale = 60
					flags = 3
					x_trans = -29
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $car_graphics
				initial_values = {
					y_trans = -1
					x_scale = 20
					y_scale = 60
					flags = 3
					x_trans = -29
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $car_sponsors
				initial_values = {
					y_trans = -1
					x_scale = 20
					y_scale = 60
					flags = 3
					x_trans = -29
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					y_trans = -1
					x_scale = 20
					y_scale = 60
					flags = 3
					x_trans = -29
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					y_trans = -1
					x_scale = 20
					y_scale = 60
					flags = 3
					x_trans = -29
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					y_trans = -1
					x_scale = 20
					y_scale = 60
					flags = 3
					x_trans = -29
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh5a.dds'
				material = CAB_Head_BH5A_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					y_trans = -1
					x_scale = 20
					y_scale = 60
					flags = 3
					x_trans = -29
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_BHPhnq01
		frontend_desc = qs("\LPhunquie DanzKlas ")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_BHPhnq01.skin'
		materials = [
			CAB_Head_Phunquie01_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $CAB_Head_08_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $CAB_Head_08_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -26
					x_scale = 20
					y_scale = 45
					y_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -26
					x_scale = 20
					y_scale = 45
					y_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -26
					x_scale = 20
					y_scale = 45
					y_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $car_icons
				initial_values = {
					x_trans = -26
					x_scale = 20
					y_scale = 45
					y_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $car_living_shapes
				initial_values = {
					x_trans = -26
					x_scale = 20
					y_scale = 45
					y_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $car_graphics
				initial_values = {
					x_trans = -26
					x_scale = 20
					y_scale = 45
					y_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $car_sponsors
				initial_values = {
					x_trans = -26
					x_scale = 20
					y_scale = 45
					y_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -26
					x_scale = 20
					y_scale = 45
					y_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -26
					x_scale = 20
					y_scale = 45
					y_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -26
					x_scale = 20
					y_scale = 45
					y_trans = -14
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_bh8a.dds'
				material = CAB_Head_Phunquie01_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -26
					x_scale = 20
					y_scale = 45
					y_trans = -14
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_Mnemonic
		frontend_desc = qs("\LMnemonic")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_Mnemonic.skin'
		locked
		polaroid = Bass_Rward_Head_Mnemonic
		materials = [
			CAB_Head_Mnemonic_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $CAB_Head_14_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $CAB_Head_14_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $car_icons
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $car_living_shapes
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $car_graphics
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $car_sponsors
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Mnemonic_d.dds'
				material = CAB_Head_mnemonic_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_Foots01
		frontend_desc = qs("\LFootsie StarHead I ")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_Foots01.skin'
		locked
		polaroid = Bass_Rewards_Head_Star
		materials = [
			CAB_Head_Star01_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_star01_d.dds'
				material = CAB_Head_Star01_Headstock
				mask = $CAB_Head_09_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_star01_d.dds'
				material = CAB_Head_Star01_Headstock
				mask = $CAB_Head_09_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Star01_D.dds'
				material = CAB_Head_Star01_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Star01_D.dds'
				material = CAB_Head_Star01_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Star01_D.dds'
				material = CAB_Head_Star01_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Star01_D.dds'
				material = CAB_Head_Star01_Headstock
				mask = $car_icons
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Star01_D.dds'
				material = CAB_Head_Star01_Headstock
				mask = $car_living_shapes
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Star01_D.dds'
				material = CAB_Head_Star01_Headstock
				mask = $car_graphics
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Star01_D.dds'
				material = CAB_Head_Star01_Headstock
				mask = $car_sponsors
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Star01_D.dds'
				material = CAB_Head_Star01_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Star01_D.dds'
				material = CAB_Head_Star01_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Star01_D.dds'
				material = CAB_Head_Star01_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Star01_D.dds'
				material = CAB_Head_Star01_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_Grumbel01
		frontend_desc = qs("\LGrumbel Machete ")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_Grumbel01.skin'
		materials = [
			CAB_Head_Grumbel01_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $CAB_Head_04_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $CAB_Head_04_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -18
					y_trans = -3
					x_scale = 20
					flags = 3
					y_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -18
					y_trans = -3
					x_scale = 20
					y_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -18
					y_trans = -3
					x_scale = 20
					y_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $car_icons
				initial_values = {
					x_trans = -18
					y_trans = -3
					x_scale = 20
					y_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $car_living_shapes
				initial_values = {
					x_trans = -18
					y_trans = -3
					x_scale = 20
					y_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $car_graphics
				initial_values = {
					x_trans = -18
					y_trans = -3
					x_scale = 20
					y_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $car_sponsors
				initial_values = {
					x_trans = -18
					y_trans = -3
					x_scale = 20
					y_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -18
					y_trans = -3
					x_scale = 20
					y_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -18
					y_trans = -3
					x_scale = 20
					y_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -18
					y_trans = -3
					x_scale = 20
					y_scale = 55
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_Grumbel01.dds'
				material = CAB_Head_Grumbel01_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -18
					y_trans = -3
					x_scale = 20
					y_scale = 55
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_SixTease
		frontend_desc = qs("\LSix Tease")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_SixTease.skin'
		materials = [
			CAB_Head_Sixtease_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $CAB_Head_10_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $CAB_Head_10_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -29
					y_trans = -4
					x_scale = 20
					y_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -29
					y_trans = -4
					x_scale = 20
					y_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -29
					y_trans = -4
					x_scale = 20
					y_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $car_icons
				initial_values = {
					x_trans = -29
					y_trans = -4
					x_scale = 20
					y_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $car_living_shapes
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $car_graphics
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $car_sponsors
				initial_values = {
					x_trans = -29
					y_trans = -4
					x_scale = 20
					y_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -29
					y_trans = -4
					x_scale = 20
					y_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -29
					y_trans = -4
					x_scale = 20
					y_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -29
					y_trans = -4
					x_scale = 20
					y_scale = 50
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_sixtease_d_mls.dds'
				material = CAB_Head_SixTease_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -29
					y_trans = -4
					x_scale = 20
					y_scale = 50
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_Predikt
		frontend_desc = qs("\LThe Ladder")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_Predikt.skin'
		materials = [
			CAB_Head_Predikt_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $CAB_Head_Predikt_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $CAB_Head_Predikt_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -25
					x_scale = 26
					y_scale = 55
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -25
					x_scale = 26
					y_scale = 55
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -25
					x_scale = 26
					y_scale = 55
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $car_icons
				initial_values = {
					x_trans = -25
					x_scale = 26
					y_scale = 55
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $car_living_shapes
				initial_values = {
					x_trans = -25
					x_scale = 26
					y_scale = 55
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $car_graphics
				initial_values = {
					x_trans = -25
					x_scale = 26
					y_scale = 55
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $car_sponsors
				initial_values = {
					x_trans = -25
					x_scale = 26
					y_scale = 55
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -25
					x_scale = 26
					y_scale = 55
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -25
					x_scale = 26
					y_scale = 55
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -25
					x_scale = 26
					y_scale = 55
					y_trans = 2
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds'
				material = CAB_Head_Predikt_Primary
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -25
					x_scale = 26
					y_scale = 55
					y_trans = 2
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_Guppy
		frontend_desc = qs("\LThe Guppy")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_Guppy.skin'
		materials = [
			CAB_Head_Guppy_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $CAB_Head_12_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $CAB_Head_12_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -38
					y_trans = -7
					x_scale = 20
					y_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -38
					y_trans = -7
					x_scale = 20
					y_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -38
					y_trans = -7
					x_scale = 20
					y_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $car_icons
				initial_values = {
					x_trans = -38
					y_trans = -7
					x_scale = 20
					y_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $car_living_shapes
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $car_graphics
				initial_values = {
					y_trans = 13
					x_scale = 20
					y_scale = 45
					x_trans = 37
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $car_sponsors
				initial_values = {
					x_trans = -38
					y_trans = -7
					x_scale = 20
					y_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -38
					y_trans = -7
					x_scale = 20
					y_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -38
					y_trans = -7
					x_scale = 20
					y_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -38
					y_trans = -7
					x_scale = 20
					y_scale = 60
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/CAB_Head_guppy_d.dds'
				material = CAB_Head_Guppy_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -38
					y_trans = -7
					x_scale = 20
					y_scale = 60
				}
				userlayer
				diffuse
			}
		]
	}
	{
		desc_id = CAB_Head_MLSplit
		frontend_desc = qs("\LMLS Aluminum")
		locked
		polaroid = Bass_Rewards_Head_MLS
		mesh = 'models/CAR_Instruments/bass/CAB_Head_MLSplit.skin'
		materials = [
			CAB_Head_MLSplit_Hardware
		]
	}
	{
		desc_id = CAB_Head_Skull
		frontend_desc = qs("\LSkullstock")
		mesh = 'models/CAR_Instruments/bass/CAB_Head_Skull.skin'
		locked
		polaroid = Bass_Rward_Head_Skull
		materials = [
			CAB_Head_Skull_Hardware
		]
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_Skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $CAB_Head_11_Finishes
				diffuse
				pre_userlayer
			}
			{
				desc_id = Details
				frontend_desc = qs("Details")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_Skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $CAB_Head_11_Details
				diffuse
				pre_userlayer
			}
			{
				desc_id = car_primitives
				frontend_desc = qs("PRIMITIVES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $car_basic_primitives_1
				initial_values = {
					x_trans = -21
					y_trans = 4
					y_scale = 50
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_outlines_primitives
				frontend_desc = qs("OUTLINES")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $car_basic_primitives_2
				initial_values = {
					x_trans = -21
					y_trans = 4
					y_scale = 50
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_tattoo_decal
				frontend_desc = qs("GRADIENTS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $car_gradiant_shapes
				initial_values = {
					x_trans = -21
					y_trans = 4
					y_scale = 50
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_icon_decals
				frontend_desc = qs("ICONS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $car_icons
				initial_values = {
					x_trans = -21
					y_trans = 4
					y_scale = 50
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_living
				frontend_desc = qs("LIVING")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $car_living_shapes
				initial_values = {
					x_trans = -21
					y_trans = 4
					y_scale = 50
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_graphics
				frontend_desc = qs("GRAPHICS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $car_graphics
				initial_values = {
					x_trans = -21
					y_trans = 4
					y_scale = 50
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = car_sponsors
				frontend_desc = qs("SPONSORS")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $car_sponsors
				initial_values = {
					x_trans = -21
					y_trans = 4
					y_scale = 50
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A1`
				frontend_desc = qs("\LHARBOUR")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $car_fontgrid_title_a1
				initial_values = {
					x_trans = -21
					y_trans = 4
					y_scale = 50
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $car_fontgrid_text_a3
				initial_values = {
					x_trans = -21
					y_trans = 4
					y_scale = 50
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A6`
				frontend_desc = qs("\LBORDELLO")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $car_fontgrid_text_a6
				initial_values = {
					x_trans = -21
					y_trans = 4
					y_scale = 50
					x_scale = 35
				}
				userlayer
				diffuse
			}
			{
				desc_id = `Font A8`
				frontend_desc = qs("\LAAUX PRO B")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_head_skull_d.dds'
				material = CAB_Head_Skull_Headstock
				mask = $car_fontgrid_text_a8
				initial_values = {
					x_trans = -21
					y_trans = 4
					y_scale = 50
					x_scale = 35
				}
				userlayer
				diffuse
			}
		]
	}
]
CAS_Bass_Pickguards = [
	{
		desc_id = CAB_PickG_BP1
		frontend_desc = qs("\LGedulus Arcos Psychic Turtle")
		mesh = 'models/CAR_Instruments/bass/CAB_PickG_BP1.skin'
		random_weight = 4.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_dark001.dds'
				material = CAB_PickG_Unos03_Primary
				mask = $CAB_ARCOS_PGrd01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PickG_BP2
		frontend_desc = qs("\LGedulus Arcos Splendid Turtle")
		mesh = 'models/CAR_Instruments/bass/CAB_PickG_BP2.skin'
		random_weight = 4.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_dark001.dds'
				material = CAB_PickG_Unos03_Primary
				mask = $CAB_ARCOS_PGrd01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PickG_BP3
		frontend_desc = qs("\LGedulus Arcos Visceral")
		mesh = 'models/CAR_Instruments/bass/CAB_PickG_BP3.skin'
		random_weight = 2.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg02_bp1b.dds'
				material = CAB_PickG_BP3_Primary
				mask = $CAB_ARCOS_PGrd01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = cab_pguard_sting
		frontend_desc = qs("\LSting's Pickguard")
		mesh = 'models/CAR_Instruments/bass/Cab_PGuard_Sting.skin'
		hidden
		random_weight = 4.0
	}
	{
		desc_id = CAB_PickG_E1
		frontend_desc = qs("\LMLS Music Ova Plate")
		mesh = 'models/CAR_Instruments/bass/CAB_PickG_E1.skin'
		random_weight = 10.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg02_bp1b.dds'
				material = CAB_PickG_BP3_Primary
				mask = $CAB_ARCOS_PGrd01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_Phnq_PG001
		frontend_desc = qs("\LPhunquie Break")
		mesh = 'models/CAR_Instruments/bass/CAB_Phnq_PG001.skin'
		random_weight = 3.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_phnq_pg002.dds'
				material = CAB_Phnq_PG001_Primary
				mask = $CAB_PG_Phunq01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_Phnq_PG002
		frontend_desc = qs("\LPhunquie Punk")
		mesh = 'models/CAR_Instruments/bass/CAB_Phnq_PG002.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_phnq_pg001b.dds'
				material = CAB_Phnq_PG002_Primary
				mask = $CAB_PG_Phunq02
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_Phnq_PG003
		frontend_desc = qs("\LPhunquie Chunk")
		mesh = 'models/CAR_Instruments/bass/CAB_Phnq_PG003.skin'
		random_weight = 7.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_phnq_pg003.dds'
				material = CAB_Phnq_PG003_Primary
				mask = $CAB_PG_Phunq03
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PGard_Grmbl01
		frontend_desc = qs("\LGrumbel Machete I")
		mesh = 'models/CAR_Instruments/bass/CAB_PGard_Grmbl01.skin'
		random_weight = 4.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_grmbl01.dds'
				material = CAB_PGard_Grmbl01_Primary
				mask = $CAB_PGrd_Grumbel01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PGard_Grmbl02
		frontend_desc = qs("\LGrumbel Machete II")
		mesh = 'models/CAR_Instruments/bass/CAB_PGard_Grmbl04.skin'
		random_weight = 7.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_grmbl04.dds'
				material = CAB_PGard_Grmbl04_Primary
				mask = $CAB_PGrd_Grumbel02
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PGard_Grmbl03
		frontend_desc = qs("\LGrumbel Machete III")
		mesh = 'models/CAR_Instruments/bass/CAB_PGard_Grmbl05.skin'
		random_weight = 2.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_grmbl05.dds'
				material = CAB_PGard_Grmbl05_Primary
				mask = $CAB_PGrd_Grumbel03
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PickG_F1
		frontend_desc = qs("\LBachenhacker Kex")
		mesh = 'models/CAR_Instruments/bass/CAB_PickG_F3.skin'
		random_weight = 10.0
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_f3_d_mls.dds'
				material = CAB_PickG_F3_Primary
				mask = $CAB_HACK_PGrd01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PickG_F2
		frontend_desc = qs("\LBachenhacker Simpleton")
		mesh = 'models/CAR_Instruments/bass/CAB_PickG_F2.skin'
		random_weight = 10.0
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_f1_d_mls.dds'
				material = CAB_PickG_F1_Primary
				mask = $CAB_HACK_PGrd02
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PickG_F3
		frontend_desc = qs("\LBachenhacker DeLuxe Dark")
		mesh = 'models/CAR_Instruments/bass/CAB_PickG_F1.skin'
		random_weight = 10.0
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_f1_d_mls.dds'
				material = CAB_PickG_F1_Primary
				mask = $CAB_HACK_PGrd01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_Pred01
		frontend_desc = qs("\LI KNEW IT!")
		mesh = 'models/CAR_Instruments/bass/CAB_PG_Pred01.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_pickg01_d_mls.dds'
				material = GTR_Body16_Pickgrd_01_Primary
				mask = $CAG_GTR16_PickGrd01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_Pred02
		frontend_desc = qs("\LTold You So!")
		mesh = 'models/CAR_Instruments/Bass/CAB_PG_Pred02.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_pickg02_d_mls.dds'
				material = GTR_Body16_Pickgrd_02_Primary
				mask = $CAG_GTR16_PickGrd02
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_Pred03
		frontend_desc = qs("\LPsychic Fool")
		mesh = 'models/CAR_Instruments/Bass/CAB_PG_Pred03.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_pickg03_d_mls.dds'
				material = GTR_Body16_Pickgrd_03_Primary
				mask = $CAG_GTR16_PickGrd03
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = GTR_Body16_PickG04
		frontend_desc = qs("None")
		mesh = 'models/CAR_Instruments/Guitar/CAG_PGard_Prdiktr04.skin'
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_pickg01_d_mls.dds'
				material = GTR_Body16_Pickgrd_01_Primary
				mask = $CAG_GTR16_PickGrd01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PGuardChndr01
		frontend_desc = qs("\LChunder Ancient Black")
		mesh = 'models/CAR_Instruments/bass/CAB_PGuardChndr01.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_grmbl02.dds'
				material = CAB_PickG_ChndBlk_Primary
				mask = $CAB_PGuardChndr01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PGuardChndr04
		frontend_desc = qs("\LChunder Trad")
		mesh = 'models/CAR_Instruments/bass/CAB_PGuardChndr04.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickgchndr02_d_mls.dds'
				material = CAB_PGuardChndr05_Primary
				mask = $CAB_PGuardChndr05
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PGuardChndr06
		frontend_desc = qs("\LChunder New")
		mesh = 'models/CAR_Instruments/bass/CAB_PGARD_Chnder06.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pguardchndr06.dds'
				material = CAB_PGuardChndr06_Primary
				mask = $CAB_PGuardChndr06
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PGuardChndr07
		frontend_desc = qs("\LChunder Bold")
		mesh = 'models/CAR_Instruments/bass/CAB_PGARD_Chnder07.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pguardchndr07.dds'
				material = CAB_PGARD_Chundr_07_Primary
				mask = $CAB_PGuardChndr07
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PickG_B_Unos01
		frontend_desc = qs("\LUnos spunoS")
		mesh = 'models/CAR_Instruments/bass/CAB_PickG_B_Unos01.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_dark001.dds'
				material = CAB_PickG_Unos02_Primary
				mask = $CAB_UNOS_PGrd01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PickG_B_Unos02
		frontend_desc = qs("\LUnos standarD")
		mesh = 'models/CAR_Instruments/bass/CAB_PickG_B_Unos02.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_dark001.dds'
				material = CAB_PickG_Unos02_Primary
				mask = $CAB_UNOS_PGrd01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PickG_B_Unos03
		frontend_desc = qs("\LUnos ominoS")
		mesh = 'models/CAR_Instruments/bass/CAB_PickG_B_Unos03.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_dark001.dds'
				material = CAB_PickG_Unos02_Primary
				mask = $CAB_UNOS_PGrd01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PickG_B_Unos05
		frontend_desc = qs("\LUnos ludicruS")
		mesh = 'models/CAR_Instruments/bass/CAB_PickG_B_Unos05.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pickg_dark001.dds'
				material = CAB_PickG_Unos02_Primary
				mask = $CAB_UNOS_PGrd01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PGrdFts001
		frontend_desc = qs("\LFootsie Plate A")
		mesh = 'models/CAR_Instruments/bass/CAB_PGrdFts001.skin'
		random_weight = 3.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pgrdfts005b.dds'
				material = CAB_PGrdFts001b_Primary
				mask = $CAB_FTS_PickGuard01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PGrdFtsB
		frontend_desc = qs("\LFootsie Plate B")
		mesh = 'models/CAR_Instruments/bass/CAB_PGrdFtsB.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pgrdftsb001b.dds'
				material = CAB_PGrdFtsB002b_Primary
				mask = $CAB_FTS_PickGuard02
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PGrdFtsC
		frontend_desc = qs("\LFootsie Plate C")
		mesh = 'models/CAR_Instruments/bass/CAB_PGrdFtsC.skin'
		random_weight = 2.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pgrdftsc001b.dds'
				material = CAB_PGrdFtsB001b_Primary
				mask = $CAB_FTS_PickGuard03
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_Spyt001
		frontend_desc = qs("\LLightning Bolt!")
		mesh = 'models/CAR_Instruments/bass/CAB_PG_Spyt001.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pg_spyt001c.dds'
				material = CAB_PG_Spyt001c_Primary
				mask = $CAB_PG_SPYT01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_Spyt002
		frontend_desc = qs("\LEpic Level Paladin")
		mesh = 'models/CAR_Instruments/bass/CAB_PG_Spyt002.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pg_spyt002b.dds'
				material = CAB_PG_Spyt002b_Primary
				mask = $CAB_PG_SPYT02
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_Spyt003
		frontend_desc = qs("\LFrostburn")
		mesh = 'models/CAR_Instruments/bass/CAB_PG_Spyt003.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pg_spyt003.dds'
				material = CAB_PG_Spyt003_Primary
				mask = $CAB_PG_SPYT03
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_Spyt004
		frontend_desc = qs("\LAfflux")
		mesh = 'models/CAR_Instruments/bass/CAB_PG_Spyt004.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pg_spyt004.dds'
				material = CAB_PG_Spyt004_Primary
				mask = $CAB_PG_SPYT04
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_6TZ001
		frontend_desc = qs("\LThe Jean-Paul")
		mesh = 'models/CAR_Instruments/bass/CAB_PG_6TZ001.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pg_6tz005.dds'
				material = CAB_PickG_6TZ005_Primary
				mask = $CAB_PG_6TZ001
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_6TZ002
		frontend_desc = qs("\LThe Georgian Ringeau")
		mesh = 'models/CAR_Instruments/bass/CAB_PG_6TZ002.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pg_6tz006.dds'
				material = CAB_PG_6TZ006_Primary
				mask = $CAB_PG_6TZ002
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_6TZ004
		frontend_desc = qs("\LSwitchivator")
		mesh = 'models/CAR_Instruments/bass/CAB_PG_6TZ004.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pg_6tz008.dds'
				material = CAB_PG_6TZ008_Primary
				mask = $CAB_PG_6TZ003
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_Xrend001
		frontend_desc = qs("\LCIA")
		mesh = 'models/CAR_Instruments/bass/CAB_PG_Xrend001.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pg_xrend004.dds'
				material = CAB_PG_Xrend004_Primary
				mask = $CAB_PG_XREND01
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_Xrend002
		frontend_desc = qs("\LPrivate Army")
		mesh = 'models/CAR_Instruments/bass/CAB_PG_Xrend002.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pg_xrend005.dds'
				material = CAB_PG_Xrend005_Primary
				mask = $CAB_PG_XREND02
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = CAB_PG_Xrend003
		frontend_desc = qs("\LPolice Action")
		mesh = 'models/CAR_Instruments/bass/CAB_PG_Xrend003.skin'
		random_weight = 5.0
		sections = [
			{
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				base_tex = 'tex/models/Car_Instruments/Bass/cab_pg_xrend006.dds'
				material = CAB_PG_Xrend006_Primary
				mask = $CAB_PG_XREND03
				diffuse
				pre_userlayer
			}
		]
	}
	{
		desc_id = none
		frontend_desc = qs("none")
		random_weight = 10.0
	}
]
CAS_Bass_Pickups = [
	{
		desc_id = CAB_Pickups_BP1A
		frontend_desc = qs("\LKaChunka 2")
		mesh = 'models/CAR_Instruments/Bass/CAB_Pickups_BP1A.skin'
	}
	{
		desc_id = CAB_Pickups_BP1A2
		frontend_desc = qs("\LKaChunka 3")
		mesh = 'models/CAR_Instruments/Bass/CAB_Pickups_BP1A2.skin'
	}
	{
		desc_id = CAB_Pickups_BP1A3
		frontend_desc = qs("\LKaChunka 1")
		mesh = 'models/CAR_Instruments/Bass/CAB_Pickups_BP1A3.skin'
	}
	{
		desc_id = CAB_Jbass_pickup_01
		frontend_desc = qs("\LChunder Jazzmongous")
		mesh = 'models/CAR_Instruments/Bass/CAB_Jbass_pickup_01.skin'
	}
	{
		desc_id = CAB_PBass_Pickup_A
		frontend_desc = qs("\LChunder Splitter")
		mesh = 'models/CAR_Instruments/Bass/CAB_PBass_Pickup_A.skin'
	}
	{
		desc_id = CAB_JP_Pickup_A
		frontend_desc = qs("\LJazz Splitter")
		mesh = 'models/CAR_Instruments/Bass/CAB_JP_Pickup_A.skin'
	}
	{
		desc_id = CAB_JP_Pickup_B
		frontend_desc = qs("\LChunder Jazz Rocker")
		mesh = 'models/CAR_Instruments/Bass/CAB_JP_Pickup_B.skin'
	}
	{
		desc_id = CAB_Bumbl_pickup_A1
		frontend_desc = qs("\LBumbelini Mono")
		mesh = 'models/CAR_Instruments/Bass/CAB_Bumbl_pickup_A1.skin'
	}
	{
		desc_id = CAB_Bumbl_pickup_A2
		frontend_desc = qs("\LBumbelini Duo")
		mesh = 'models/CAR_Instruments/Bass/CAB_Bumbl_pickup_A2.skin'
	}
	{
		desc_id = CAB_Bumbl_pickup_A3
		frontend_desc = qs("\LBumbelini Trio")
		mesh = 'models/CAR_Instruments/Bass/CAB_Bumbl_pickup_A3.skin'
	}
	{
		desc_id = CAB_pickups_EMG01
		frontend_desc = qs("\LEMG-35CS Single")
		mesh = 'models/CAR_Instruments/Bass/CAB_pickups_EMG01.skin'
	}
	{
		desc_id = CAB_pickups_EMG02
		frontend_desc = qs("\LEMG-35CS Double")
		mesh = 'models/CAR_Instruments/Bass/CAB_pickups_EMG02.skin'
	}
	{
		desc_id = CAB_pickups_EMG03
		frontend_desc = qs("\LEMG-35CS Triple")
		mesh = 'models/CAR_Instruments/Bass/CAB_pickups_EMG03.skin'
	}
	{
		desc_id = CAB_HBuck_pickup_A1
		frontend_desc = qs("\LThrumbucker Ace")
		mesh = 'models/CAR_Instruments/Bass/CAB_HBuck_pickup_A1.skin'
		locked
		polaroid = Bass_Rwds_pckp_thrum1
	}
	{
		desc_id = CAB_HBuck_pickup_A2
		frontend_desc = qs("\LThrumbucker Deuce")
		mesh = 'models/CAR_Instruments/Bass/CAB_HBuck_pickup_A2.skin'
		locked
		polaroid = Bass_Rwds_pckp_thrum2
	}
	{
		desc_id = CAB_HBuck_pickup_A3
		frontend_desc = qs("\LThrumbucker Thrice")
		mesh = 'models/CAR_Instruments/Bass/CAB_HBuck_pickup_A3.skin'
		locked
		polaroid = Bass_Rwds_pckp_thrum3
	}
	{
		desc_id = CAB_pickup_Hack01
		frontend_desc = qs("\LBach-O-Sound Inova")
		mesh = 'models/CAR_Instruments/Bass/CAB_pickup_Hack01.skin'
	}
	{
		desc_id = CAB_pickup_Hack02
		frontend_desc = qs("\LBach-O-Sound Renova")
		mesh = 'models/CAR_Instruments/Bass/CAB_pickup_Hack02.skin'
	}
	{
		desc_id = CAB_pickup_Hack03
		frontend_desc = qs("\LBach-O-Sound Enova")
		mesh = 'models/CAR_Instruments/Bass/CAB_pickup_Hack03.skin'
	}
	{
		desc_id = cab_pickup_sting
		frontend_desc = qs("\LSting pickup")
		mesh = 'models/CAR_Instruments/Bass/CAB_pickup_Sting.skin'
		hidden
	}
]
CAS_Bass_Knobs = [
	{
		desc_id = cab_knobs_6tz01
		frontend_desc = qs("\LSix Tease Knobset A")
		mesh = 'models/CAR_Instruments/bass/CAB_Knobs_6TZ01.skin'
		materials = [
			CAB_Knobs_6TZ01_Primary
		]
	}
	{
		desc_id = cab_knobs_6tz02
		frontend_desc = qs("\LSix Tease Knobset B")
		mesh = 'models/CAR_Instruments/bass/CAB_Knobs_6TZ02.skin'
		materials = [
			CAB_Knob_Star01_Primary
		]
	}
	{
		desc_id = cab_knobs_6tz03
		frontend_desc = qs("\LSix Tease Knobset C")
		mesh = 'models/CAR_Instruments/bass/CAB_Knobs_6TZ03.skin'
		materials = [
			CAB_Knobs_Spd_Blak_Primary
		]
	}
	{
		desc_id = cab_knobs_6tz04
		frontend_desc = qs("\LSix Tease Knobset D")
		mesh = 'models/CAR_Instruments/bass/CAB_Knobs_6TZ04.skin'
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = cab_knobs_6tz05
		frontend_desc = qs("\LSix Tease Knobset E")
		mesh = 'models/CAR_Instruments/bass/CAB_Knobs_6TZ05.skin'
		materials = [
			CAB_Knobs_JBASS01_Primary
		]
	}
	{
		desc_id = cab_knobs_6tz06
		frontend_desc = qs("\LSix Tease Knobset F")
		mesh = 'models/CAR_Instruments/bass/CAB_Knobs_6TZ06.skin'
		materials = [
			CAB_Knobs_HACK001_Primary
		]
	}
	{
		desc_id = cab_knobs_6tz07
		frontend_desc = qs("\LSix Tease Knobset G")
		mesh = 'models/CAR_Instruments/bass/CAB_Knobs_6TZ07.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
	}
	{
		desc_id = cab_knobs_6tz08
		frontend_desc = qs("\LSix Tease Knobset H")
		mesh = 'models/CAR_Instruments/bass/CAB_Knobs_6TZ08.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = cab_knobs_6tz09
		frontend_desc = qs("\LSix Tease Knobset J")
		mesh = 'models/CAR_Instruments/bass/CAB_Knobs_6TZ09.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = CAB_Knobs_6TZ10
		frontend_desc = qs("\LSix Tease Knobset K")
		mesh = 'models/CAR_Instruments/bass/CAB_Knobs_6TZ10.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = cab_knob_spyt01
		frontend_desc = qs("\LStar Spyter")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Spyt01.skin'
		materials = [
			CAB_Knob_Star01_Primary
		]
	}
	{
		desc_id = cab_knob_spyt02
		frontend_desc = qs("\LSpeed Spyter")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Spyt02.skin'
		materials = [
			CAB_Knobs_Spd_Blak_Primary
		]
	}
	{
		desc_id = cab_knob_spyt03
		frontend_desc = qs("\LHack Spyter")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Spyt03.skin'
		materials = [
			CAB_Knobs_HACK001_Primary
		]
	}
	{
		desc_id = cab_knob_spyt04
		frontend_desc = qs("\LKnurled Spyter A")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Spyt04.skin'
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = cab_knob_spyt05
		frontend_desc = qs("\LSixties Spyter")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Spyt05.skin'
		materials = [
			CAB_Knobs_6TZ01_Primary
		]
	}
	{
		desc_id = cab_knob_spyt06
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Spyt06.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		locked
		polaroid = Bass_Rewards_knobs_Dice
	}
	{
		desc_id = cab_knob_spyt07
		frontend_desc = qs("\LKnurled Spyter B")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Spyt07.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = cab_knob_spyt08
		frontend_desc = qs("\LSpyter Jazzy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Spyt08.skin'
		materials = [
			CAB_Knobs_JBASS01_Primary
		]
	}
	{
		desc_id = cab_knob_spyt09
		frontend_desc = qs("\LVintage Spyter 2")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Spyt09.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = cab_knob_spyt10
		frontend_desc = qs("\LSpyter Tone Zones")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Spyt10.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = cab_knob_xrend01
		frontend_desc = qs("\LHack")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_XRend01.skin'
		materials = [
			CAB_Knobs_HACK001_Primary
		]
	}
	{
		desc_id = cab_knob_xrend02
		frontend_desc = qs("\LStar")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_XRend02.skin'
		materials = [
			CAB_Knob_Star01_Primary
		]
	}
	{
		desc_id = cab_knob_xrend03
		frontend_desc = qs("\LSpeed")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_XRend03.skin'
		materials = [
			CAB_Knobs_Spd_Blak_Primary
		]
	}
	{
		desc_id = cab_knob_xrend04
		frontend_desc = qs("\LJazzy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_XRend04.skin'
		materials = [
			CAB_Knobs_JBASS01_Primary
		]
	}
	{
		desc_id = cab_knob_xrend05
		frontend_desc = qs("\LKnurl A")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_XRend05.skin'
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = cab_knob_xrend06
		frontend_desc = qs("\LSixties")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_XRend06.skin'
		materials = [
			CAB_Knobs_6TZ01_Primary
		]
	}
	{
		desc_id = cab_knob_xrend07
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_XRend07.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		locked
		polaroid = Bass_Rewards_knobs_Dice
	}
	{
		desc_id = cab_knob_xrend08
		frontend_desc = qs("\LKnurl B")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_XRend08.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = cab_knob_xrend09
		frontend_desc = qs("\LVintage")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_XRend09.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = cab_knob_xrend10
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_XRend10.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = CAB_Knob_Unos01
		frontend_desc = qs("\LHack")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Unos01.skin'
		materials = [
			CAB_Knobs_HACK001_Primary
		]
	}
	{
		desc_id = CAB_Knob_Unos02
		frontend_desc = qs("\LStar")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Unos02.skin'
		materials = [
			CAB_Knob_Star01_Primary
		]
	}
	{
		desc_id = cab_knob_unos03
		frontend_desc = qs("\LSpeed")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Unos03.skin'
		materials = [
			CAB_Knobs_Spd_Blak_Primary
		]
	}
	{
		desc_id = cab_knob_unos04
		frontend_desc = qs("\LJazzy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Unos04.skin'
		materials = [
			CAB_Knobs_JBASS01_Primary
		]
	}
	{
		desc_id = cab_knob_unos05
		frontend_desc = qs("\LKnurl A")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Unos05.skin'
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = cab_knob_unos06
		frontend_desc = qs("\LSixties")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Unos06.skin'
		materials = [
			CAB_Knobs_6TZ01_Primary
		]
	}
	{
		desc_id = cab_knob_unos07
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Unos07.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		locked
		polaroid = Bass_Rewards_knobs_Dice
	}
	{
		desc_id = cab_knob_unos08
		frontend_desc = qs("\LKnurl B")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Unos08.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = cab_knob_unos09
		frontend_desc = qs("\LVintage")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Unos09.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = cab_knob_unos10
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Unos10.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = cab_knob_hack01
		frontend_desc = qs("\LHack")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Hack01.skin'
		materials = [
			CAB_Knobs_HACK001_Primary
		]
	}
	{
		desc_id = cab_knob_hack02
		frontend_desc = qs("\LStar")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Hack02.skin'
		materials = [
			CAB_Knob_Star01_Primary
		]
	}
	{
		desc_id = cab_knob_hack03
		frontend_desc = qs("\LSpeedy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Hack03.skin'
		materials = [
			CAB_Knobs_Spd_Blak_Primary
		]
	}
	{
		desc_id = cab_knob_hack04
		frontend_desc = qs("\LJazzy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Hack04.skin'
		materials = [
			CAB_Knobs_JBASS01_Primary
		]
	}
	{
		desc_id = cab_knob_hack05
		frontend_desc = qs("\LKnurl A")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Hack05.skin'
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = cab_knob_hack06
		frontend_desc = qs("\LSixties")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Hack06.skin'
		materials = [
			CAB_Knobs_6TZ01_Primary
		]
	}
	{
		desc_id = cab_knob_hack07
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Hack07.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		locked
		polaroid = Bass_Rewards_knobs_Dice
	}
	{
		desc_id = cab_knob_hack08
		frontend_desc = qs("\LKnurl B")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Hack08.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = CAB_Knob_Hack09
		frontend_desc = qs("\LVintage")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Hack09.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = cab_knob_hack10
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Hack10.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = cab_knob_chndr01
		frontend_desc = qs("\LHack")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Chndr01.skin'
		materials = [
			CAB_Knobs_HACK001_Primary
		]
	}
	{
		desc_id = cab_knob_chndr02
		frontend_desc = qs("\LStar")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Chndr02.skin'
		materials = [
			CAB_Knob_Star01_Primary
		]
	}
	{
		desc_id = CAB_Knob_Chndr03
		frontend_desc = qs("\LSpeedy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Chndr03.skin'
		materials = [
			CAB_Knobs_Spd_Blak_Primary
		]
	}
	{
		desc_id = cab_knob_chndr04
		frontend_desc = qs("\LJazzy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Chndr04.skin'
		materials = [
			CAB_Knobs_JBASS01_Primary
		]
	}
	{
		desc_id = cab_knob_chndr05
		frontend_desc = qs("\LKnurl A")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Chndr05.skin'
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = cab_knob_chndr06
		frontend_desc = qs("\LSixties")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Chndr06.skin'
		materials = [
			CAB_Knobs_6TZ01_Primary
		]
	}
	{
		desc_id = cab_knob_chndr07
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Chndr07.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		locked
		polaroid = Bass_Rewards_knobs_Dice
	}
	{
		desc_id = cab_knob_chndr08
		frontend_desc = qs("\LKnurl B")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Chndr08.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = cab_knob_chndr09
		frontend_desc = qs("\LVintage")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Chndr09.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = cab_knob_chndr10
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Chndr10.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = cab_knob_foots01
		frontend_desc = qs("\LHack")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Foots01.skin'
		materials = [
			CAB_Knobs_HACK001_Primary
		]
	}
	{
		desc_id = cab_knob_foots02
		frontend_desc = qs("\LStar")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Foots02.skin'
		materials = [
			CAB_Knob_Star01_Primary
		]
	}
	{
		desc_id = cab_knob_foots03
		frontend_desc = qs("\LSpeedy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Foots03.skin'
		materials = [
			CAB_Knobs_Spd_Blak_Primary
		]
	}
	{
		desc_id = cab_knob_foots04
		frontend_desc = qs("\LJazzy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Foots04.skin'
		materials = [
			CAB_Knobs_JBASS01_Primary
		]
	}
	{
		desc_id = cab_knob_foots05
		frontend_desc = qs("\LKnurl A")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Foots05.skin'
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = cab_knob_foots06
		frontend_desc = qs("\LSixties")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Foots06.skin'
		materials = [
			CAB_Knobs_6TZ01_Primary
		]
	}
	{
		desc_id = cab_knob_foots07
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Foots07.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		locked
		polaroid = Bass_Rewards_knobs_Dice
	}
	{
		desc_id = cab_knob_foots08
		frontend_desc = qs("\LKnurl B")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Foots08.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = cab_knob_foots09
		frontend_desc = qs("\LVintage")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Foots09.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = cab_knob_foots10
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Foots10.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = cab_knob_grmbl01
		frontend_desc = qs("\LHack")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Grmbl01.skin'
		materials = [
			CAB_Knobs_HACK001_Primary
		]
	}
	{
		desc_id = cab_knob_grmbl02
		frontend_desc = qs("\LStar")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Grmbl02.skin'
		materials = [
			CAB_Knob_Star01_Primary
		]
	}
	{
		desc_id = cab_knob_grmbl03
		frontend_desc = qs("\LSpeedy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Grmbl03.skin'
		materials = [
			CAB_Knobs_Spd_Blak_Primary
		]
	}
	{
		desc_id = cab_knob_grmbl04
		frontend_desc = qs("\LJazzy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Grmbl04.skin'
		materials = [
			CAB_Knobs_JBASS01_Primary
		]
	}
	{
		desc_id = cab_knob_grmbl05
		frontend_desc = qs("\LKnurl A")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Grmbl05.skin'
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = cab_knob_grmbl06
		frontend_desc = qs("\LSixties")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Grmbl06.skin'
		materials = [
			CAB_Knobs_6TZ01_Primary
		]
	}
	{
		desc_id = cab_knob_grmbl07
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Grmbl07.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		locked
		polaroid = Bass_Rewards_knobs_Dice
	}
	{
		desc_id = CAB_Knob_Grmbl08
		frontend_desc = qs("\LKnurl B")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Grmbl08.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = CAB_Knob_Grmbl09
		frontend_desc = qs("\LVintage")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Grmbl09.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = CAB_Knob_Grmbl10
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Grmbl10.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = cab_knob_phunq01
		frontend_desc = qs("\LHack")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Phunq01.skin'
		materials = [
			CAB_Knobs_HACK001_Primary
		]
	}
	{
		desc_id = cab_knob_phunq02
		frontend_desc = qs("\LStar")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_phunq02.skin'
		materials = [
			CAB_Knob_Star01_Primary
		]
	}
	{
		desc_id = cab_knob_phunq03
		frontend_desc = qs("\LSpeedy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_phunq03.skin'
		materials = [
			CAB_Knobs_Spd_Blak_Primary
		]
	}
	{
		desc_id = cab_knob_phunq04
		frontend_desc = qs("\LJazzy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_phunq04.skin'
		materials = [
			CAB_Knobs_JBASS01_Primary
		]
	}
	{
		desc_id = CAB_Knob_Phunq05
		frontend_desc = qs("\LKnurl A")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_phunq05.skin'
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = cab_knob_phunq06
		frontend_desc = qs("\LSixties")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_phunq06.skin'
		materials = [
			CAB_Knobs_6TZ01_Primary
		]
	}
	{
		desc_id = cab_knob_phunq07
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_phunq07.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		locked
		polaroid = Bass_Rewards_knobs_Dice
	}
	{
		desc_id = CAB_Knob_Phunq08
		frontend_desc = qs("\LKnurl B")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_phunq08.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = cab_knob_phunq09
		frontend_desc = qs("\LVintage")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_phunq09.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = cab_knob_phunq10
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_phunq10.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = cab_knob_skull01
		frontend_desc = qs("\LHack")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_skull01.skin'
		materials = [
			CAB_Knobs_HACK001_Primary
		]
	}
	{
		desc_id = cab_knob_skull02
		frontend_desc = qs("\LStar")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_skull02.skin'
		materials = [
			CAB_Knob_Star01_Primary
		]
	}
	{
		desc_id = cab_knob_skull03
		frontend_desc = qs("\LSpeedy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_skull03.skin'
		materials = [
			CAB_Knobs_Spd_Blak_Primary
		]
	}
	{
		desc_id = cab_knob_skull04
		frontend_desc = qs("\LJazzy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_skull04.skin'
		materials = [
			CAB_Knobs_JBASS01_Primary
		]
	}
	{
		desc_id = cab_knob_skull05
		frontend_desc = qs("\LKnurl A")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_skull05.skin'
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = cab_knob_skull06
		frontend_desc = qs("\LSixties")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_skull06.skin'
		materials = [
			CAB_Knobs_6TZ01_Primary
		]
	}
	{
		desc_id = cab_knob_skull07
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_skull07.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		locked
		polaroid = Bass_Rewards_knobs_Dice
	}
	{
		desc_id = cab_knob_skull08
		frontend_desc = qs("\LKnurl B")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_skull08.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = cab_knob_skull09
		frontend_desc = qs("\LVintage")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_skull09.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = cab_knob_skull10
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_skull10.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = cab_knob_rubyat01
		frontend_desc = qs("\LHack")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Rubyat01.skin'
		materials = [
			CAB_Knobs_HACK001_Primary
		]
	}
	{
		desc_id = cab_knob_rubyat02
		frontend_desc = qs("\LStar")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Rubyat02.skin'
		materials = [
			CAB_Knob_Star01_Primary
		]
	}
	{
		desc_id = cab_knob_rubyat03
		frontend_desc = qs("\LSpeedy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Rubyat03.skin'
		materials = [
			CAB_Knobs_Spd_Blak_Primary
		]
	}
	{
		desc_id = cab_knob_rubyat04
		frontend_desc = qs("\LJazzy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Rubyat04.skin'
		materials = [
			CAB_Knobs_JBASS01_Primary
		]
	}
	{
		desc_id = cab_knob_rubyat05
		frontend_desc = qs("\LKnurl A")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Rubyat05.skin'
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = cab_knob_rubyat06
		frontend_desc = qs("\LSixties")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Rubyat06.skin'
		materials = [
			CAB_Knobs_6TZ01_Primary
		]
	}
	{
		desc_id = cab_knob_rubyat07
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Rubyat07.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		locked
		polaroid = Bass_Rewards_knobs_Dice
	}
	{
		desc_id = cab_knob_rubyat08
		frontend_desc = qs("\LKnurl B")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Rubyat08.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = cab_knob_rubyat09
		frontend_desc = qs("\LVintage")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Rubyat09.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = cab_knob_rubyat10
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Rubyat10.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = cab_knob_icross01
		frontend_desc = qs("\LHack")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_ICross01.skin'
		materials = [
			CAB_Knobs_HACK001_Primary
		]
	}
	{
		desc_id = cab_knob_icross02
		frontend_desc = qs("\LStar")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_ICross02.skin'
		materials = [
			CAB_Knob_Star01_Primary
		]
	}
	{
		desc_id = cab_knob_icross03
		frontend_desc = qs("\LSpeedy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_ICross03.skin'
		materials = [
			CAB_Knobs_Spd_Blak_Primary
		]
	}
	{
		desc_id = cab_knob_icross04
		frontend_desc = qs("\LJazzy")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_ICross04.skin'
		materials = [
			CAB_Knobs_JBASS01_Primary
		]
	}
	{
		desc_id = cab_knob_icross05
		frontend_desc = qs("\LKnurl A")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_ICross05.skin'
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = cab_knob_icross06
		frontend_desc = qs("\LSixties")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_ICross06.skin'
		materials = [
			CAB_Knobs_6TZ01_Primary
		]
	}
	{
		desc_id = cab_knob_icross07
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_ICross07.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		locked
		polaroid = Bass_Rewards_knobs_Dice
	}
	{
		desc_id = cab_knob_icross08
		frontend_desc = qs("\LKnurl B")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_ICross08.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = cab_knob_icross09
		frontend_desc = qs("\LVintage")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_ICross09.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = cab_knob_icross10
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_ICross10.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = cab_knob_sting
		frontend_desc = qs("\LSting Knobs")
		mesh = 'models/CAR_Instruments/bass/Cab_Knob_Sting.skin'
		hidden
		materials = [
			CAB_Knobs_Knurl01_Primary
		]
	}
	{
		desc_id = none
		frontend_desc = qs("None")
		random_weight = 10.0
	}
]
CAS_Bass_Bridges = [
	{
		desc_id = CAB_Bridge_BB1A
		frontend_desc = qs("\LSuperTuning")
		mesh = 'models/CAR_Instruments/bass/CAB_Bridge_BB1A.skin'
		materials = [
			CAB_Bridge_BB1A_Primary
		]
	}
	{
		desc_id = CAB_Bridge_BB3A
		frontend_desc = qs("\LChunder Classic")
		mesh = 'models/CAR_Instruments/bass/CAB_Bridge_BB3A.skin'
		materials = [
			CAB_Bridge_BB3A_Primary
		]
	}
	{
		desc_id = CAB_Bridge_Hack
		frontend_desc = qs("\LBachenhacker")
		mesh = 'models/CAR_Instruments/bass/CAB_Bridge_Hack.skin'
		materials = [
			CAB_Bridge_Hack_Primary
		]
	}
	{
		desc_id = CAB_Bridge_BB2A
		frontend_desc = qs("\LModular")
		mesh = 'models/CAR_Instruments/bass/CAB_Bridge_BB2A.skin'
		materials = [
			CAB_Bridge_BB2A_Primary
		]
	}
	{
		desc_id = CAB_Bridge_MLS
		frontend_desc = qs("\LMLS")
		mesh = 'models/CAR_Instruments/bass/CAB_Bridge_MLS.skin'
		materials = [
			CAB_Bridge_MLS_Primary
		]
	}
]
