cas_preset_guitars = [
	{
		genre = [
			Rock
			Punk
			`Classic Rock`
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body01
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds`
					material = Guitar_Body_Style_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style1_LD_06.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style1_DTL_22.img`
							flags = 4
						}
					]
				}
			]
		}
		CAS_Guitar_Neck = {
			desc_id = Guitar_Neck05
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_05.dds`
					material = Guitar_Neck5_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							flags = 36
							color = grey_3
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head13
			chosen_materials = {
				material1 = grey_5guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock13_d_01.dds`
					material = Guitar_Head_13_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock13_LD_01.img`
							flags = 36
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock13_DTL_01.img`
							flags = 36
							color = Black_1guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = Guitar_PickG01
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/Pickgrd1_Body1_D_01.dds`
					material = GTR_Body1_Pickgrd_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd1_Body1_LD_02.img`
							flags = 4
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
			chosen_materials = {
				material1 = grey_5guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR1_Knob_Type4_04
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blk_2
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Goth
			`Black Metal`
			`Heavy Metal`
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body02
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds`
					material = Guitar_Body_Style_02_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style2_LD_13.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style2_D_04.img`
							flags = 4
							color = yellow_1guitar
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Vine1_D_03.img`
							flags = 36
							color = yellow_orange_1
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head02
			chosen_materials = {
				material1 = grey_2guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock02_d_01.dds`
					material = Headstock2_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_LD_01.img`
							flags = 36
							color = orange_3
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_DTL_04.img`
							flags = 36
							color = yellow_orange_1
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
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR2_Knob_Type4_04
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type3b_03
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			`Classic Rock`
			`Black Metal`
			`Heavy Metal`
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body03
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style3_d_01.dds`
					material = Guitar_Body_Style_03_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style3_LD_41.img`
							flags = 4
							color = orange_5
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style3_DTL_04.img`
							color = red_3
							flags = 4
							a = 70
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
							flags = 36
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
							color = orange_1
							flags = 36
							a = 55
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock10_DTL_04.img`
							flags = 36
							color = red_2
						}
					]
				}
			]
			chosen_materials = {
				material1 = orange_4
			}
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
			desc_id = GTR3_Knob_Type10_03
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blktan_2
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			`Classic Rock`
			Punk
			`Heavy Metal`
			Rock
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body04
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style4_d_01.dds`
					material = Guitar_Body_Style_04_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style4_LD_40.img`
							flags = 4
							color = orange_4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style4_DTL_04.img`
							color = red_1
							flags = 4
							a = 90
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
							flags = 36
							color = grey_2guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head99
			chosen_materials = {
				material1 = orange_4
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock099.dds`
					material = Guitar_Head_99_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock099_WHT.img`
							flags = 36
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock99__DTL_01.img`
							flags = 36
							color = red_3
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body4_PickG01
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body4_d_01.dds`
					material = Pckgrd_Body4_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body4_LD_04.img`
							flags = 4
							color = red_3
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware05
			chosen_materials = {
				material1 = orange_4
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR4_Knob_Type10_04
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
	}
	{
		genre = [
			`Classic Rock`
			Punk
			`Heavy Metal`
			Rock
			Goth
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body05
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style5_d_01.dds`
					material = Guitar_Body_Style_05_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style5_DTL_03.img`
							flags = 4
							color = red_1
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Dancers_D_22.img`
							flags = 36
							color = red_1
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head04
			chosen_materials = {
				material1 = yellow_5guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds`
					material = Guitar_Head_04_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock04_LD_01.img`
							color = red_3
							flags = 36
							a = 45
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock04_DTL_03.img`
							flags = 36
							color = red_1
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body5_PickG01
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body5_d_01.dds`
					material = Pckgrd_Body5_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body5_LD_04.img`
							flags = 4
							color = grey_1
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware06
			chosen_materials = {
				material1 = yellow_5guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR4_Knob_Type7_04
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blk_2
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
	}
	{
		genre = [
			`Classic Rock`
			Rock
			`Glam Rock`
		]
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
							color = red_1
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Skulls_D_21.img`
							flags = 36
							color = grey_4guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head12
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds`
					material = Guitar_Head_12_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock12_LD_01.img`
							flags = 36
							color = red_1
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock12_Dtl_06.img`
							flags = 36
						}
					]
				}
			]
			chosen_materials = {
				material1 = orange_4
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = none
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
			chosen_materials = {
				material1 = orange_4
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR6_Knob_Type5_03
			chosen_materials = {
				material1 = grey_5guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blktan_2
			chosen_materials = {
				material1 = red_2
			}
		}
	}
	{
		genre = [
			Goth
			`Black Metal`
			`Heavy Metal`
		]
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
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style7_DTL_81.img`
							color = red_orange_3
							flags = 4
							a = 85
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Diamonds_D_16.img`
							flags = 36
							color = grey_3guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head08
			chosen_materials = {
				material1 = orange_5
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock08_d_01.dds`
					material = Guitar_Head_08_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock08_LD_01.img`
							flags = 36
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock08_DTL_01.img`
							flags = 36
							color = red_orange_3
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body7_PickG01
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body7_d_01.dds`
					material = Pckgrd_Body7_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body7_LD_04.img`
							flags = 4
							color = yellow_orange_1
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
			chosen_materials = {
				material1 = orange_5
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR7_Knob_Type1_03
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blk_3
			chosen_materials = {
				material1 = red_orange_1
			}
		}
	}
	{
		genre = [
			Goth
			`Black Metal`
			`Heavy Metal`
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body08
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style8_d_01.dds`
					material = Guitar_Body_Style_08_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style8_LD_66.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style8_DTL_82.img`
							color = teal_1
							flags = 4
							a = 60
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
							texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							flags = 36
							color = teal_2
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
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock099_WHT.img`
							color = red_orange_1
							flags = 36
							a = 90
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock099_DTL_03.img`
							color = teal_1
							flags = 36
							a = 45
						}
					]
				}
			]
			chosen_materials = {
				material1 = orange_5
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body8_PickG03
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body8_d_03.dds`
					material = Pckgrd_Body8_03_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body8_LD_06.img`
							flags = 4
							color = teal_1
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
			chosen_materials = {
				material1 = orange_5
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR8_Knob_Type4_03
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type6_TKD_02
			chosen_materials = {
				material1 = teal_1
			}
		}
	}
	{
		genre = [
			Goth
			`Black Metal`
			`Heavy Metal`
			Rock
			Punk
			`Glam Rock`
			Pop
		]
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
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style9_DTL_82.img`
							flags = 4
							color = grey_4guitar
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
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head10
			chosen_materials = {
				material1 = grey_5guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock10_d_01.dds`
					material = Guitar_Head_10_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock10_LD_01.img`
							flags = 36
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock10_Dtl_06.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body9_PickG01
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
			chosen_materials = {
				material1 = grey_5guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR9_Knob_Type2_03
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickups_Style_01a
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Goth
			`Heavy Metal`
			Rock
			Punk
			`Glam Rock`
			Pop
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body10
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style10_d_01.dds`
					material = Guitar_Body_Style_10_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style10_LD_66.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style10_DTL_80.img`
							color = yellow_1guitar
							flags = 4
							a = 45
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Tribal2_D_20.img`
							flags = 36
							color = grey_3guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head12
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds`
					material = Guitar_Head_12_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock12_LD_01.img`
							flags = 36
							color = orange_3
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock12_DTL_01.img`
							flags = 36
							color = orange_2
						}
					]
				}
			]
			chosen_materials = {
				material1 = orange_5
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body10_PickG01
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
			chosen_materials = {
				material1 = orange_5
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR10_Knob_Type2_03
			chosen_materials = {
				material1 = red_1
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type2_04
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Goth
			`Black Metal`
			`Heavy Metal`
			Rock
			Punk
			`Glam Rock`
			Pop
			`Classic Rock`
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body11
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style11_d_01.dds`
					material = Guitar_Body_Style_11_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_LD_11.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_DTL_01.img`
							color = green_3guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Neck = {
			desc_id = Guitar_Neck05
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_05.dds`
					material = Guitar_Neck5_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Block2_D_26.img`
							flags = 36
							color = grey_5guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head01
			chosen_materials = {
				material1 = yellow_4guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds`
					material = Guitar_Head_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock01_LD_01.img`
							flags = 36
							color = green_3guitar
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
				material1 = yellow_4guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR11_Knob_Type1_03
			chosen_materials = {
				material1 = yellow_green_1guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blktan_2
			chosen_materials = {
				material1 = green_3guitar
			}
		}
	}
	{
		genre = [
			Rock
			Punk
			`Glam Rock`
			Pop
			`Classic Rock`
		]
		CAS_Guitar_Body = {
			desc_id = Guitar_Body12
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style12_d_01.dds`
					material = Guitar_Body_Style_12_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style12_LD_20.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style12_DTL_01.img`
							color = orange_2
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
							color = grey_1
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Diamonds_D_16.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head14
			chosen_materials = {
				material1 = grey_3guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock14_d_01.dds`
					material = Guitar_Head_14_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock14_LD_01.img`
							flags = 36
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock14_DTL_01.img`
							flags = 36
							color = orange_3
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
			desc_id = GTR12_Knob_Type6_04
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blk_3
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Rock
			Punk
			`Glam Rock`
			Pop
			`Classic Rock`
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body13
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style13_d_01.dds`
					material = Guitar_Body_Style_13_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style13_LD_01.img`
							color = yellow_2guitar
							flags = 4
							a = 60
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style13_DTL_04.img`
							flags = 4
							color = red_2
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
							texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head01
			chosen_materials = {
				material1 = grey_3guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds`
					material = Guitar_Head_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock01_Dtl_06.img`
							flags = 36
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock01_Detail_04.img`
							flags = 36
							color = red_3
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body13_PickG03
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body13_d_03.dds`
					material = Pckgrd_Body13_03_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body13_LD_06.img`
							flags = 4
							color = red_2
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
			chosen_materials = {
				material1 = grey_3guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR13_Knob_Type10_02
			chosen_materials = {
				material1 = grey_4guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type4_03
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Goth
			Rock
			Punk
			`Glam Rock`
			Pop
			`Classic Rock`
		]
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
							color = orange_4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style14_DTL_03.img`
							flags = 4
							color = red_orange_1
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
							color = grey_1
							texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head09
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock09_d_01.dds`
					material = Guitar_Head_09_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock09_LD_01.img`
							color = red_orange_1
							flags = 36
							a = 80
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock09_DTL_01.img`
							flags = 36
							color = red_1
						}
					]
				}
			]
			chosen_materials = {
				material1 = orange_4
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body14_PickG02
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware05
			chosen_materials = {
				material1 = orange_4
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR14_Knob_Type10_04
			chosen_materials = {
				material1 = orange_4
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type3b_03
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Goth
			`Heavy Metal`
			`Glam Rock`
			Pop
		]
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
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style15_DTL_04.img`
							flags = 4
							color = teal_1
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
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head06
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds`
					material = Guitar_Head_06_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock06_LD_01.img`
							flags = 36
							color = teal_4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock06_DTL_04.img`
							flags = 36
							color = teal_1
						}
					]
				}
			]
			chosen_materials = {
				material1 = teal_5
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = none
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware07
			chosen_materials = {
				material1 = teal_5
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR15_Knob_Type3_03
			chosen_materials = {
				material1 = grey_3guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickups_Style_01c
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Rock
			`Glam Rock`
			`Classic Rock`
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body05
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style5_d_01.dds`
					material = Guitar_Body_Style_05_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style5_LD_14.img`
							flags = 4
							color = green_3guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style5_DTL_01.img`
							flags = 4
							color = yellow_green_3guitar
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Shards_D_12.img`
							flags = 36
							color = grey_3guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head05
			chosen_materials = {
				material1 = yellow_4guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds`
					material = Guitar_Head_05_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock05_LD_01.img`
							flags = 36
							color = green_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock05_DTL_01.img`
							flags = 36
							color = yellow_green_3guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body5_PickG01
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01a
			chosen_materials = {
				material1 = yellow_4guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR4_Knob_Type1_04
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blk_3
			chosen_materials = {
				material1 = green_1guitar
			}
		}
	}
	{
		genre = [
			Goth
			`Black Metal`
			`Heavy Metal`
		]
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
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style7_DTL_81.img`
							flags = 4
							color = grey_2guitar
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
							flags = 36
							color = grey_2guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head02
			chosen_materials = {
				material1 = grey_2guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock02_d_01.dds`
					material = Headstock2_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_LD_01.img`
							flags = 36
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_DTL_01.img`
							flags = 36
							color = grey_2guitar
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
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR7_Knob_Type5_03
			chosen_materials = {
				material1 = grey_3guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type6_TKD_03
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Rock
			`Classic Rock`
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body08
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style8_d_01.dds`
					material = Guitar_Body_Style_08_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style8_LD_69.img`
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Diamonds_D_16.img`
							flags = 36
							color = grey_2guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head08
			chosen_materials = {
				material1 = grey_2guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock08_d_01.dds`
					material = Guitar_Head_08_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock08_LD_01.img`
							color = red_1
							flags = 36
							a = 75
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
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR8_Knob_Type4_03
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type6_TKD_03
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Rock
			`Classic Rock`
			`Heavy Metal`
		]
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
							flags = 36
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
							flags = 36
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock05_Dtl_06.img`
							flags = 36
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
	}
	{
		genre = [
			Rock
			`Glam Rock`
			`Heavy Metal`
		]
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
							flags = 36
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
							flags = 36
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
							flags = 36
							color = yellow_green_3guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_DTL_02.img`
							flags = 36
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
			desc_id = GTR2_Knob_Type2_04
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
	{
		genre = [
			Rock
			`Glam Rock`
		]
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
							flags = 36
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
							flags = 36
							color = red_2
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock10_DTL_01.img`
							flags = 36
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
			desc_id = GTR_Pickup_Type1_Blk_2
			chosen_materials = {
				material1 = red_1
			}
		}
	}
	{
		genre = [
			Pop
			`Glam Rock`
		]
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
							flags = 36
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
							flags = 36
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
	}
	{
		genre = [
			Punk
		]
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
							flags = 36
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
							flags = 36
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
	}
	{
		genre = [
			Goth
			`Black Metal`
			`Heavy Metal`
		]
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
							flags = 36
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
							flags = 36
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock09_DTL_01.img`
							flags = 36
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
	}
	{
		genre = [
			`Black Metal`
			metal
		]
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
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style2_D_04.img`
							flags = 4
							color = Black_1guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Neck = {
			desc_id = Guitar_Neck07
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/neck_stone_tb_07.dds`
					material = Guitar_Neck7_Primary
					diffuse
					pre_layer = [
						{
							color = grey_1
							texture = `tex/models/Characters/Layers/CAG/GTR_Nek_Binding_DTL.img`
							flags = 36
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
							flags = 36
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_DTL_01.img`
							flags = 36
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
			desc_id = GTR_Hardware01b
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR2_Knob_Type7_04
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickups_Style_01c
		}
	}
	{
		genre = [
			Pop
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body15
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style15_d_01.dds`
					material = Guitar_Body_Style_15_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style15_LD_41.img`
							flags = 4
							color = violet_4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style15_DTL_01.img`
							color = teal_1
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_DotBinding_D_76.img`
							flags = 36
							color = blue_2
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head04
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds`
					material = Guitar_Head_04_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock04_LD_01.img`
							flags = 36
							color = violet_2
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock04_DTL_04.img`
							flags = 36
							color = blue_1
						}
					]
				}
			]
			chosen_materials = {
				material1 = grey_5guitar
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body15_PickG01
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body15_d_01.dds`
					material = Pckgrd_Body15_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body15_LD_01.img`
							flags = 4
							color = blue_2
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware07
			chosen_materials = {
				material1 = grey_5guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR15_Knob_Type2_03
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type2_03
			chosen_materials = {
				material1 = blue_5
			}
		}
	}
	{
		genre = [
			Pop
			Rock
			`Classic Rock`
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body10
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style10_d_01.dds`
					material = Guitar_Body_Style_10_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style10_LD_01.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style10_DTL_23.img`
							flags = 4
							color = red_4
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Vine1_D_03.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head09
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock09_d_01.dds`
					material = Guitar_Head_09_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock09_LD_01.img`
							flags = 36
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock09_Dtl_06.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body10_PickG02
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01a
		}
		CAS_Guitar_Knobs = {
			desc_id = none
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type2_03
		}
	}
	{
		genre = [
			Rock
			`Classic Rock`
			metal
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body01
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds`
					material = Guitar_Body_Style_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style1_LD_41.img`
							flags = 4
							color = grey_3guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style1_DTL_22.img`
							flags = 4
						}
					]
				}
			]
		}
		CAS_Guitar_Neck = {
			desc_id = Guitar_Neck05
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_05.dds`
					material = Guitar_Neck5_Primary
					diffuse
					pre_layer = [
						{
							color = grey_1
							texture = `tex/models/Characters/Layers/CAG/All_Clear.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head07
			chosen_materials = {
				material1 = grey_2guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock07_d_01.dds`
					material = Guitar_Head_07_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock07_LD_01.img`
							flags = 36
							color = yellow_orange_1
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock07_Dtl_06.img`
							flags = 36
							color = yellow_1guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body1_PickG03
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/Pickgrd3_Body1_D_01.dds`
					material = GTR_Pckgrd3_Body1_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd3_Body1_LD_04.img`
							flags = 4
							color = grey_3guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware05
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR1_Knob_Type10_04
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type6_TKD_01
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Goth
			Pop
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body03
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style3_d_01.dds`
					material = Guitar_Body_Style_03_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style3_LD_15.img`
							flags = 4
							color = teal_3
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style3_DTL_81.img`
							flags = 4
							color = purple_blue_2
						}
					]
				}
			]
		}
		CAS_Guitar_Neck = {
			desc_id = Guitar_Neck05
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_05.dds`
					material = Guitar_Neck5_Primary
					diffuse
					pre_layer = [
						{
							color = grey_1
							texture = `tex/models/Characters/Layers/CAG/GTR_Nek_Binding_DTL.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head20
			chosen_materials = {
				material1 = Black_1guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock20_d_01.dds`
					material = Guitar_Head_20_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock20_LD_01.img`
							flags = 36
							color = teal_3
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock20_DTL_02.img`
							flags = 36
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
				material1 = Black_1guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR3_Knob_Type3_03
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type5_01
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			`Classic Rock`
		]
		CAS_Guitar_Body = {
			desc_id = Guitar_Body12
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style12_d_01.dds`
					material = Guitar_Body_Style_12_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style12_LD_41.img`
							flags = 4
							color = orange_4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style12_DTL_01.img`
							color = red_1
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
							texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head06
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds`
					material = Guitar_Head_06_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/All_Clear.img`
							flags = 36
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock06_Dtl_06.img`
							flags = 36
						}
					]
				}
			]
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
							texture = `tex/models/Characters/Layers/CAG/All_Clear.img`
							flags = 4
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware07
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR12_Knob_Type2_04
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type4_02
		}
	}
	{
		genre = [
			`Black Metal`
			metal
			Rock
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body01
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds`
					material = Guitar_Body_Style_01_Primary
					diffuse
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics010.img`
							x_trans = -33
							y_trans = 24
							x_scale = 21
							y_scale = 35
							rot = 2850
							flags = 27
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics010.img`
							y_trans = 24
							x_scale = 21
							y_scale = 35
							rot = 3100
							flags = 27
							x_trans = -29
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics010.img`
							y_trans = 24
							x_skew = -15
							y_skew = 0
							x_scale = 21
							y_scale = 35
							rot = 3550
							flags = 27
							x_trans = -27
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon007.img`
							color = grey_5guitar
							x_trans = -31
							y_trans = 10
							x_scale = 71
							y_scale = 25
							rot = 5333
							flags = 3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon007.img`
							color = Black_1guitar
							x_trans = -31
							x_scale = 71
							y_scale = 25
							rot = 5333
							flags = 3
							y_trans = 9
						}
					]
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style1_LD_23.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style1_DTL_02.img`
							color = red_1
							flags = 4
							a = 45
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
							flags = 36
							color = red_1
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head12
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds`
					material = Guitar_Head_12_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock12_LD_01.img`
							flags = 36
							color = red_1
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock12_Dtl_06.img`
							flags = 36
						}
					]
				}
			]
			chosen_materials = {
				material1 = red_1
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = Guitar_PickG01
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/Pickgrd1_Body1_D_01.dds`
					material = GTR_Body1_Pickgrd_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/All_Clear.img`
							flags = 4
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware06
			chosen_materials = {
				material1 = red_1
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR1_Knob_Type8_04
			chosen_materials = {
				material1 = grey_5guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blk_3
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Glam
			Pop
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body15
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style15_d_01.dds`
					material = Guitar_Body_Style_15_Primary
					diffuse
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = grey_5guitar
							y_trans = -1
							x_scale = 116
							y_scale = 6
							rot = 1450
							flags = 3
							x_trans = -29
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = blue_2
							x_trans = -10
							y_trans = 3
							y_scale = 5
							rot = 5133
							flags = 3
							x_scale = 81
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = blue_2
							y_trans = 3
							x_scale = 81
							y_scale = 5
							rot = 450
							flags = 3
							x_trans = -5
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = yellow_2guitar
							x_trans = -5
							y_trans = 3
							x_scale = 91
							y_scale = 1
							flags = 3
							rot = 1250
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = yellow_2guitar
							x_trans = -38
							y_trans = -5
							y_scale = 1
							rot = 1650
							flags = 3
							x_scale = 116
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = yellow_2guitar
							x_trans = -38
							x_scale = 116
							y_scale = 1
							rot = 1450
							flags = 3
							y_trans = -1
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = grey_5guitar
							x_trans = -20
							y_trans = -1
							x_scale = 116
							y_scale = 1
							flags = 3
							rot = 1800
						}
					]
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style15_LD_01.img`
							flags = 4
							color = violet_1
						}
						{
							texture = `tex/models/characters/layers/cag/all_clear2.img`
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Birds_D_08.img`
							flags = 36
							color = yellow_1guitar
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
							flags = 36
							color = violet_1
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock10_Dtl_06.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body15_PickG01
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body15_d_01.dds`
					material = Pckgrd_Body15_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body15_LD_01.img`
							flags = 4
							color = violet_5
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR15_Knob_Type1_03
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type2_03
		}
	}
	{
		genre = [
			Punk
			Rock
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body11
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style11_d_01.dds`
					material = Guitar_Body_Style_11_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_LD_60.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_DTL_22.img`
							flags = 4
						}
					]
				}
			]
		}
		CAS_Guitar_Neck = {
			desc_id = Guitar_Neck05
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_05.dds`
					material = Guitar_Neck5_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Wedge2_D_11.img`
							flags = 36
							color = grey_5guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head14
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock14_d_01.dds`
					material = Guitar_Head_14_Primary
					diffuse
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_elemental003.img`
							x_trans = -3
							x_scale = 81
							y_scale = 35
							rot = 1600
							flags = 3
							y_trans = -3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics005.img`
							y_trans = 12
							x_scale = 46
							y_scale = 70
							rot = 2800
							flags = 3
							x_trans = -28
						}
					]
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock14_DTL_01.img`
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
			desc_id = GTR_Hardware06
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR11_Knob_Type4_03
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type2_03
		}
	}
	{
		genre = [
			`Classic Rock`
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body13
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style13_d_01.dds`
					material = Guitar_Body_Style_13_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style13_LD_42.img`
							flags = 4
							color = orange_3
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style13_DTL_23.img`
							flags = 4
							color = yellow_orange_2
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
							texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head07
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock07_d_01.dds`
					material = Guitar_Head_07_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock07_LD_01.img`
							flags = 36
							color = yellow_orange_1
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock07_Dtl_06.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body13_PickG03
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body13_d_03.dds`
					material = Pckgrd_Body13_03_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/All_Clear.img`
							flags = 4
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR13_Knob_Type7_02
			chosen_materials = {
				material1 = grey_5guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickups_Style_01a
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			metal
			`Black Metal`
			Rock
		]
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
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style2_DTL_21.img`
							flags = 4
							color = grey_5guitar
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Tribal2_D_20.img`
							flags = 36
							color = grey_5guitar
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
							flags = 36
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_Dtl_06.img`
							flags = 36
						}
					]
				}
			]
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body2_PickG02
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd1_body2_02.dds`
					material = GTR_Body2_Pckgrd2_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/All_Clear.img`
							flags = 4
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01a
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR2_Knob_Type3_04
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blk_3
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			metal
			`Black Metal`
			Rock
			Pop
		]
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
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style2_D_04.img`
							flags = 4
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon001.img`
							y_trans = -33
							x_scale = 36
							y_scale = 95
							flags = 3
							x_trans = -34
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon002.img`
							x_trans = -31
							y_trans = 25
							x_scale = 31
							y_scale = 70
							flags = 3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon002.img`
							x_trans = -22
							x_scale = 41
							y_scale = 100
							flags = 19
							y_trans = -6
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_DotBinding_D_76.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head02
			chosen_materials = {
				material1 = grey_2guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock02_d_01.dds`
					material = Headstock2_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_LD_01.img`
							flags = 36
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock02_DTL_01.img`
							flags = 36
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon012.img`
							x_trans = -34
							x_scale = 51
							y_scale = 65
							rot = 5383
							flags = 3
							y_trans = -1
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
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR2_Knob_Type8_04
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickups_Style_01b
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			metal
			`Black Metal`
			Rock
			Pop
		]
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
							color = yellow_3guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style12_DTL_21.img`
							flags = 4
							color = violet_3
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_001.img`
							color = Black_1guitar
							x_trans = -39
							y_trans = 21
							x_scale = 21
							y_scale = 45
							flags = 3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_001.img`
							color = yellow_1guitar
							x_trans = -39
							y_trans = 21
							x_scale = 16
							flags = 3
							y_scale = 35
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_039.img`
							color = Black_1guitar
							y_trans = 28
							x_scale = 6
							y_scale = 5
							flags = 3
							x_trans = -36
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_039.img`
							color = Black_1guitar
							x_trans = -43
							x_scale = 6
							y_scale = 5
							flags = 3
							y_trans = 28
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_005.img`
							color = Black_1guitar
							y_trans = 14
							x_scale = 11
							y_scale = 20
							flags = 19
							x_trans = -42
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_005.img`
							color = Black_1guitar
							x_trans = -36
							y_trans = 14
							x_scale = 11
							y_scale = 20
							flags = 27
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
							color = grey_1
							texture = `tex/models/Characters/Layers/CAG/GTR_Nek_Binding_DTL.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head99
			chosen_materials = {
				material1 = violet_2
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock099.dds`
					material = Guitar_Head_99_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock099_WHT.img`
							flags = 36
							color = yellow_3guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock099_DTL_02.img`
							flags = 36
							color = purple_blue_1
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body12_PickG02
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body12_d_02.dds`
					material = Pckgrd_Body12_02_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body12_LD_05.img`
							flags = 4
							color = yellow_3guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware05
			chosen_materials = {
				material1 = violet_2
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR12_Knob_Type4_04
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickups_Style_01c
			chosen_materials = {
				material1 = violet_1
			}
		}
	}
	{
		genre = [
			`Classic Rock`
			Rock
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body05
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style5_d_01.dds`
					material = Guitar_Body_Style_05_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style5_LD_11.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style5_DTL_22.img`
							flags = 4
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon022.img`
							color = Black_1guitar
							x_trans = -19
							x_scale = 51
							y_scale = 105
							flags = 3
							y_trans = 6
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon022.img`
							color = Black_1guitar
							x_trans = -19
							x_scale = 51
							y_scale = 105
							flags = 3
							y_trans = 2
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon022.img`
							x_trans = -19
							y_trans = 4
							x_scale = 51
							y_scale = 105
							flags = 3
							color = grey_2guitar
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Skulls_D_21.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head07
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock07_d_01.dds`
					material = Guitar_Head_07_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/All_Clear.img`
							flags = 36
						}
						{
							texture = `tex/models/characters/layers/cag/all_clear2.img`
							flags = 36
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
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR4_Knob_Type7_04
			chosen_materials = {
				material1 = grey_3guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickups_Style_01b
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Glam
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body04
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style4_d_01.dds`
					material = Guitar_Body_Style_04_Primary
					diffuse
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = -23
							x_scale = 71
							y_scale = 10
							rot = 300
							flags = 3
							y_trans = -10
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = -23
							x_scale = 71
							y_scale = 10
							rot = 5983
							flags = 3
							y_trans = 9
						}
					]
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style4_LD_01.img`
							flags = 4
							color = green_3guitar
						}
						{
							texture = `tex/models/characters/layers/cag/all_clear2.img`
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
							color = grey_1
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Dancers_D_22.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head07
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock07_d_01.dds`
					material = Guitar_Head_07_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock07_LD_01.img`
							flags = 36
							color = green_3guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock07_DTL_03.img`
							flags = 36
							color = Black_1guitar
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = -16
							y_trans = -5
							x_scale = 86
							flags = 3
							y_scale = 25
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
		}
		CAS_Guitar_Knobs = {
			desc_id = none
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickups_Style_01b
		}
	}
	{
		genre = [
			Glam
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body11
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style11_d_01.dds`
					material = Guitar_Body_Style_11_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_LD_01.img`
							color = red_3
							flags = 4
							a = 70
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_DTL_01.img`
							color = Black_1guitar
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics077.img`
							color = Black_1guitar
							x_trans = -15
							y_trans = -7
							x_scale = 46
							flags = 3
							y_scale = 50
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Hearts_D_13.img`
							flags = 36
							color = red_4
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head07
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock07_d_01.dds`
					material = Guitar_Head_07_Primary
					diffuse
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = -16
							y_trans = -5
							x_scale = 86
							flags = 3
							y_scale = 25
						}
					]
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock07_LD_01.img`
							flags = 36
							color = red_4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock07_DTL_03.img`
							flags = 36
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
		}
		CAS_Guitar_Knobs = {
			desc_id = none
		}
	}
	{
		genre = [
			`Classic Rock`
			Rock
			Glam
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body10
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style10_d_01.dds`
					material = Guitar_Body_Style_10_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style10_LD_66.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style10_DTL_21.img`
							flags = 4
							color = red_3
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
							color = grey_1
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Shards_D_12.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head09
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock09_d_01.dds`
					material = Guitar_Head_09_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock09_LD_01.img`
							flags = 36
							color = red_2
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock09_DTL_01.img`
							flags = 36
							color = red_3
						}
					]
				}
			]
			chosen_materials = {
				material1 = grey_3guitar
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = none
		}
		CAS_Guitar_Bridges = {
			container_id = generic_menu
			part = CAS_Guitar_Bridges
			desc_id = GTR_Hardware07
			chosen_materials = {
				material1 = grey_3guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR10_Knob_Type1_03
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
		CAS_Guitar_Pickups = {
			container_id = generic_menu
			part = CAS_Guitar_Pickups
			desc_id = GTR_Pickup_Type6_TKD_03
			chosen_materials = {
				material1 = red_1
			}
		}
	}
	{
		genre = [
			`Classic Rock`
			Rock
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body09
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style9_d_01.dds`
					material = Guitar_Body_Style_09_Primary
					diffuse
					pre_layer = [
						{
							color = orange_5
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style9_LD_41.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style9_DTL_02.img`
							a = 25
							flags = 4
							color = orange_4
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_DotBinding_D_76.img`
							flags = 36
							color = grey_2guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head15
			chosen_materials = {
				material1 = grey_3guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock15_d_01.dds`
					material = Guitar_Head_15_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock15_LD_01.img`
							color = yellow_orange_1
							flags = 36
							a = 75
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock15_Dtl_06.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body9_PickG02
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body9_d_02.dds`
					material = Pckgrd_Body9_02_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body9_LD_05.img`
							flags = 4
							color = teal_1
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
			chosen_materials = {
				material1 = grey_3guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR9_Knob_Type4_03
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blk_2
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
	}
	{
		genre = [
			Glam
			Pop
			Rock
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body10
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style10_d_01.dds`
					material = Guitar_Body_Style_10_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style10_LD_42.img`
							flags = 4
							color = teal_1
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style10_DTL_82.img`
							flags = 4
							color = green_3guitar
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Wedge1_D_10.img`
							flags = 36
							color = green_1guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head11
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock11_d_01.dds`
					material = Guitar_Head_11_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock11_LD_01.img`
							flags = 36
							color = green_3guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock11_DTL_01.img`
							flags = 36
							color = blue_1
						}
					]
				}
			]
			chosen_materials = {
				material1 = grey_3guitar
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = none
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
			chosen_materials = {
				material1 = grey_3guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR10_Knob_Type10_03
			chosen_materials = {
				material1 = green_3guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type6_TKD_03
			chosen_materials = {
				material1 = green_2guitar
			}
		}
	}
	{
		genre = [
			`Classic Rock`
			Rock
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body05
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style5_d_01.dds`
					material = Guitar_Body_Style_05_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style5_LD_66.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style5_DTL_81.img`
							a = 35
							flags = 4
							color = teal_1
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Diamonds_D_16.img`
							flags = 36
							color = blue_4
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
							color = red_orange_1
							flags = 36
							a = 100
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock05_DTL_01.img`
							color = Black_1guitar
							flags = 36
							a = 35
						}
					]
				}
			]
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body5_PickG03
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body5_d_03.dds`
					material = Pckgrd_Body5_03_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body5_LD_06.img`
							flags = 4
							color = yellow_orange_2
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR4_Knob_Type2_04
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type6_TKD_02
		}
	}
	{
		genre = [
			Glam
			Pop
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body08
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style8_d_01.dds`
					material = Guitar_Body_Style_08_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style8_LD_41.img`
							flags = 4
							color = violet_5
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style8_DTL_82.img`
							flags = 4
							color = violet_4
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
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Hearts_D_13.img`
							flags = 36
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
							flags = 36
							color = orange_3
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock13_DTL_03.img`
							flags = 36
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
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR8_Knob_Type2_03
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blktan_3
		}
	}
	{
		genre = [
			Punk
			Rock
			metal
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body11
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style11_d_01.dds`
					material = Guitar_Body_Style_11_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_LD_19.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_DTL_22.img`
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
							texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head15
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock15_d_01.dds`
					material = Guitar_Head_15_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock15_LD_01.img`
							flags = 36
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
			desc_id = GTR_Hardware01b
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR11_Knob_Type10_03
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blk_3
		}
	}
	{
		genre = [
			metal
			`Black Metal`
			Goth
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body11
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style11_d_01.dds`
					material = Guitar_Body_Style_11_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_LD_01.img`
							flags = 4
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_DTL_21.img`
							flags = 4
							color = Black_1guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Neck = {
			desc_id = Guitar_Neck05
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_05.dds`
					material = Guitar_Neck5_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Dancers_D_22.img`
							flags = 36
							color = yellow_orange_5
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head15
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock15_d_01.dds`
					material = Guitar_Head_15_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock15_LD_01.img`
							flags = 36
							color = grey_2guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock15_DTL_01.img`
							flags = 36
							color = Black_1guitar
						}
					]
				}
			]
			chosen_materials = {
				material1 = grey_3guitar
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = GTR_Body11_PickG01
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/pickgrd_body11_d_01.dds`
					material = Pckgrd_Body11_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/Pickgrd_Body11_LD_04.img`
							flags = 4
							color = Black_1guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
			chosen_materials = {
				material1 = grey_3guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR11_Knob_Type4_03
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type1_Blk_2
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			metal
			`Black Metal`
			Goth
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body08
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style8_d_01.dds`
					material = Guitar_Body_Style_08_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style8_LD_40.img`
							flags = 4
							color = grey_2guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style8_DTL_04.img`
							color = blue_2
							flags = 4
							a = 65
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
							flags = 36
							color = grey_2guitar
						}
					]
				}
			]
		}
		CAS_Guitar_Head = {
			desc_id = Guitar_Head04
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds`
					material = Guitar_Head_04_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock04_LD_01.img`
							color = Black_1guitar
							flags = 36
							a = 85
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock04_DTL_04.img`
							flags = 36
							color = navy_1
						}
					]
				}
			]
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = none
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware01b
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR8_Knob_Type5_03
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type2_04
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			metal
		]
		CAS_Guitar_Body = {
			desc_id = guitar_body11
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Guitars/gtr_body_style11_d_01.dds`
					material = Guitar_Body_Style_11_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_LD_20.img`
							flags = 4
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style11_DTL_23.img`
							flags = 4
							color = red_5
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
							color = grey_1
							texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Lightning_D_25.img`
							flags = 36
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
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock098.img`
							flags = 36
							color = teal_1
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock099_DTL_04.img`
							flags = 36
							color = red_1
						}
					]
				}
			]
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Pickguards = {
			desc_id = none
		}
		CAS_Guitar_Bridges = {
			desc_id = GTR_Hardware07
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Guitar_Knobs = {
			desc_id = GTR11_Knob_Type3_03
		}
		CAS_Guitar_Pickups = {
			desc_id = GTR_Pickup_Type6_TKD_02
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
]
cas_preset_basses = [
	{
		genre = [
			Rock
			`Classic Rock`
		]
		CAS_Bass_Body = {
			desc_id = Bass_Body_B1B
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Bass\cab_body_b1f_d_mls.dds`
					material = CAB_Body_UNOS_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_unos_MapleSpalt_GK.img`
							flags = 4
							color = blue_1
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_Unos_DTL_Fin.img`
							color = red_1
							flags = 4
							a = 55
						}
					]
				}
			]
		}
		CAS_Bass_Neck = {
			desc_id = CAB_Neck_BFretlss03
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_nekf_maple01.dds`
					material = CAB_Neck_Fretless03_neck
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Nek_vineF_D_DS.img`
							flags = 36
							color = red_1
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_Flay_rev
			chosen_materials = {
				material1 = yellow_4
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_head_flay001.dds`
					material = CAB_Head_BH1A_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_Flay001_WTfinish.img`
							color = blue_1
							flags = 36
							a = 90
						}
					]
				}
			]
		}
		CAS_Bass_Pickguards = {
			desc_id = none
		}
		CAS_Bass_Pickups = {
			desc_id = CAB_pickups_EMG02
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_BB2A
			chosen_materials = {
				material1 = yellow_4
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_unos04
			chosen_materials = {
				material1 = yellow_2
			}
		}
	}
	{
		genre = [
			Rock
			`Classic Rock`
		]
		CAS_Bass_Body = {
			desc_id = CAB_Body_Bandera
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\guitars\gtr_body_style17_d.dds`
					material = Guitar_Body_Bandera_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style17_LD_Zi.img`
							flags = 4
							color = yellow_green_3
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style17_DTL_Fout.img`
							color = yellow_green_1
							flags = 4
							a = 65
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
							texture = `tex/models/Characters/Layers/CAB/CAB_Nek_wedgelow.img`
							flags = 36
							color = yellow_green_2
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_Predikt
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds`
					material = CAB_Head_Predikt_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock16_LD_01.img`
							flags = 36
							color = yellow_green_1
						}
						{
							texture = `tex/models/Characters/Layers/CAG/Gtr_Predikt_HStock01_DTL_03.img`
							flags = 36
							color = yellow_1
						}
					]
				}
			]
			chosen_materials = {
				material1 = yellow_1
			}
		}
		CAS_Bass_Pickguards = {
			desc_id = CAB_Phnq_PG002
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_phnq_pg001b.dds`
					material = CAB_Phnq_PG002_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Phnq_PG001_TORT.img`
							flags = 36
							color = yellow_green_1
						}
					]
				}
			]
		}
		CAS_Bass_Pickups = {
			desc_id = CAB_Pickups_BP1A
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_BB1A
			chosen_materials = {
				material1 = yellow_1
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_phunq02
			chosen_materials = {
				material1 = yellow_green_2
			}
		}
	}
	{
		genre = [
			`Glam Rock`
			Pop
		]
		CAS_Bass_Body = {
			desc_id = CAB_Body_Phunq01
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Bass\cab_body_beech01_b1_d_mls.dds`
					material = CAB_Body_Bubinga01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_PhungWHT_D_MLS.img`
							flags = 4
							color = yellow_2
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_phunq_ray02.img`
							flags = 4
							color = purple_blue_1
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
							texture = `tex/models/Characters/Layers/CAB/CAB_Nek_barbwire.img`
							flags = 36
							color = teal_1
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_RadEx
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/CAB_Head_RadEx.dds`
					material = CAB_Head_RadEx_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_RadEx_WT.img`
							flags = 36
							color = red_orange_3
						}
					]
				}
			]
			chosen_materials = {
				material1 = blue_2
			}
		}
		CAS_Bass_Pickguards = {
			desc_id = none
		}
		CAS_Bass_Pickups = {
			desc_id = CAB_Bumbl_pickup_A2
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_Hack
			chosen_materials = {
				material1 = blue_2
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_phunq06
			chosen_materials = {
				material1 = yellow_4
			}
		}
	}
	{
		genre = [
			Rock
			`Classic Rock`
		]
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
							a = 60
							color = yellow_3guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_bach_ray01.img`
							color = red_1
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
							flags = 36
							color = yellow_3guitar
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_Guppy
			chosen_materials = {
				material1 = green_2guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_head_guppy_d.dds`
					material = CAB_Head_Guppy_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_Guppy_WT.img`
							flags = 36
							color = red_1
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_guppy_DTL_01.img`
							flags = 36
							color = yellow_2guitar
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
							texture = `tex/models/Characters/Layers/CAB/cab_pickg_f4_d_mls.img`
							flags = 36
						}
					]
				}
			]
		}
		CAS_Bass_Pickups = {
			desc_id = CAB_JP_Pickup_B
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_Hack
			chosen_materials = {
				material1 = green_2guitar
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_hack01
			chosen_materials = {
				material1 = green_2guitar
			}
		}
	}
	{
		genre = [
			`Glam Rock`
			Pop
		]
		CAS_Bass_Body = {
			desc_id = CAB_Body_Kelly
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\bass\cab_body_kelly_d_mls.dds`
					material = CAB_Kelly_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_Kelly_LD_16.img`
							flags = 4
							color = blue_5
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_Kelly_DTL_Fin.img`
							a = 40
							flags = 4
							color = yellow_1guitar
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
							texture = `tex/models/Characters/Layers/CAB/CAB_Nek_Lyr_Scallops.img`
							flags = 36
							color = blue_5
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_BH1A
			chosen_materials = {
				material1 = yellow_green_5guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds`
					material = CAB_Head_BH2A_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_Gedulus_WTfinish.img`
							flags = 36
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_Gedulus_DTL_05.img`
							flags = 36
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
			desc_id = CAB_Bridge_MLS
			chosen_materials = {
				material1 = yellow_green_5guitar
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_grmbl03
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
	}
	{
		genre = [
			Rock
			`Classic Rock`
		]
		CAS_Bass_Body = {
			desc_id = CAB_Body_Grmbl_A
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Bass\cab_body_grumbel01_d_mls.dds`
					material = CAB_Body_Grmbl_A_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/cab_body_grumbel10_d_mls.img`
							color = yellow_1guitar
							a = 55
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_Grumbel_DTL_Tri.img`
							flags = 4
							color = red_2
						}
					]
				}
			]
		}
		CAS_Bass_Neck = {
			desc_id = CAB_StNek_BNSt01
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_neck_01b_rosewood_d_mls.dds`
					material = CAB_TNeck_BNT01_neck
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/cab_nek_lyrmpl_blk_wht.img`
							flags = 36
							color = blue_5
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_Grumbel01
			chosen_materials = {
				material1 = grey_4guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_head_grumbel01.dds`
					material = CAB_Head_Grumbel01_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_Grumbel01_WTfinish.img`
							color = yellow_3guitar
							flags = 36
							a = 5
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_Grumbel01_DTL_04.img`
							flags = 36
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
			desc_id = CAB_Bumbl_pickup_A3
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_MLS
			chosen_materials = {
				material1 = grey_4guitar
			}
		}
		CAS_Bass_Knobs = {
			desc_id = CAB_Knob_Grmbl09
			chosen_materials = {
				material1 = orange_2
			}
		}
	}
	{
		genre = [
			Rock
			`Classic Rock`
			`Glam Rock`
			Pop
		]
		CAS_Bass_Body = {
			desc_id = CAB_Body_B2A
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Bass\cab_body_b1a_d_mls.dds`
					material = CAB_Body_Arcos_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_Arks_LD_Zi.img`
							flags = 4
							color = teal_1
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_Arcos_DTL_Pin.img`
							flags = 4
							color = red_orange_1
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
							texture = `tex/models/Characters/Layers/CAB/CAB_Nek_Country.img`
							flags = 36
							color = orange_3
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_BHPhnq01
			chosen_materials = {
				material1 = orange_4
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_head_bh8a.dds`
					material = CAB_Head_Phunquie01_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH8A_WTfinish.img`
							flags = 36
							color = green_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH8A_DTL_01.img`
							flags = 36
							color = red_orange_1
						}
					]
				}
			]
		}
		CAS_Bass_Pickguards = {
			desc_id = CAB_PickG_BP2
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_pickg_dark001.dds`
					material = CAB_PickG_Unos03_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_PGard_Wht001.img`
							flags = 36
							color = orange_5
						}
					]
				}
			]
		}
		CAS_Bass_Pickups = {
			desc_id = CAB_Pickups_BP1A
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_Hack
			chosen_materials = {
				material1 = orange_4
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_unos08
			chosen_materials = {
				material1 = orange_4
			}
		}
	}
	{
		genre = [
			`Classic Rock`
			`Glam Rock`
			Pop
		]
		CAS_Bass_Body = {
			desc_id = CAB_Body_SixTease
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Bass\cab_body_sixtease01_d_mls.dds`
					material = CAB_Body_SixTease_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_6tease_LD_13.img`
							flags = 4
							color = yellow_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_6tease_DTL_Fin.img`
							flags = 36
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
							texture = `tex/models/Characters/Layers/CAB/CAB_Nek_Butterflies.img`
							flags = 36
							color = red_orange_3
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_SixTease
			chosen_materials = {
				material1 = teal_5
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_head_sixtease_d_mls.dds`
					material = CAB_Head_SixTease_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_SixTease_WTfinish.img`
							flags = 36
							color = purple_blue_1
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_SixTease_DTL_01.img`
							flags = 36
							color = purple_blue_3
						}
					]
				}
			]
		}
		CAS_Bass_Pickguards = {
			desc_id = none
		}
		CAS_Bass_Pickups = {
			desc_id = CAB_Bumbl_pickup_A1
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_BB3A
			chosen_materials = {
				material1 = teal_5
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knobs_6tz01
		}
	}
	{
		genre = [
			Goth
			`Black Metal`
			`Heavy Metal`
		]
		CAS_Bass_Body = {
			desc_id = CAB_Body_Prediktor
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\guitars\gtr_predikt_body01_d_mls.dds`
					material = Guitar_Body_Prediktor_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style16_LD_10.img`
							color = purple_blue_1
							flags = 4
							a = 85
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style16_DTL_02.img`
							flags = 4
							color = Black_1guitar
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
							texture = `tex/models/Characters/Layers/CAB/CAB_Nek_skulls.img`
							flags = 36
							color = purple_blue_2
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
							flags = 36
							color = purple_blue_1
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH5A_DTL_03.img`
							flags = 36
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
			desc_id = CAB_Bumbl_pickup_A1
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_MLS
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
		CAS_Bass_Knobs = {
			desc_id = CAB_Knob_Phunq08
			chosen_materials = {
				material1 = purple_blue_3
			}
		}
	}
	{
		genre = [
			`Classic Rock`
			`Glam Rock`
			Pop
		]
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
							color = yellow_5guitar
							flags = 4
							a = 100
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
							texture = `tex/models/Characters/Layers/CAB/CAB_Nek_Notes.img`
							flags = 36
							color = blue_5
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_BH1A
			chosen_materials = {
				material1 = grey_5guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_head_01_maple_d_mls.dds`
					material = CAB_Head_BH2A_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_Gedulus_WTfinish.img`
							flags = 36
							color = grey_4guitar
						}
					]
				}
			]
		}
		CAS_Bass_Pickguards = {
			desc_id = CAB_Phnq_PG002
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_phnq_pg001b.dds`
					material = CAB_Phnq_PG002_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Phnq_PG001_TORT.img`
							flags = 36
							color = yellow_1
						}
					]
				}
			]
		}
		CAS_Bass_Pickups = {
			desc_id = CAB_Jbass_pickup_01
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_BB3A
			chosen_materials = {
				material1 = grey_5guitar
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_phunq01
			chosen_materials = {
				material1 = grey_4guitar
			}
		}
	}
	{
		genre = [
			Goth
		]
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
							texture = `tex/models/Characters/Layers/CAB/CAB_Nek_Lyr_Cats.img`
							flags = 36
							color = purple_blue_1
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_Flay_rev
			chosen_materials = {
				material1 = purple_blue_3
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_head_flay001.dds`
					material = CAB_Head_BH1A_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_Flay001_WTfinish.img`
							flags = 36
							color = Black_1guitar
						}
					]
				}
			]
		}
		CAS_Bass_Pickguards = {
			desc_id = CAB_PickG_BP2
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_pickg_dark001.dds`
					material = CAB_PickG_Unos03_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_PGard_Wht001.img`
							flags = 36
							color = grey_1
						}
					]
				}
			]
		}
		CAS_Bass_Pickups = {
			desc_id = CAB_PBass_Pickup_A
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_BB1A
			chosen_materials = {
				material1 = purple_blue_3
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_unos06
			chosen_materials = {
				material1 = grey_2guitar
			}
		}
	}
	{
		genre = [
			`Classic Rock`
			Rock
		]
		CAS_Bass_Body = {
			desc_id = Bass_Body_B1B
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Bass\cab_body_b1f_d_mls.dds`
					material = CAB_Body_UNOS_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_unos_CherrySwirl_GK.img`
							flags = 4
							color = blue_5
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_Unos_DTL_Tri.img`
							color = orange_1
							flags = 4
							a = 60
						}
					]
				}
			]
		}
		CAS_Bass_Neck = {
			desc_id = CAB_Neck_BN1B
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_BH6B
			chosen_materials = {
				material1 = orange_3
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_head_trad_delx_d.dds`
					material = CAB_Head_Chunder01_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_Trad_Delx_DTL_05.img`
							a = 100
							flags = 36
							color = yellow_orange_1
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
			desc_id = CAB_Bridge_BB2A
			chosen_materials = {
				material1 = orange_3
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_unos08
			chosen_materials = {
				material1 = orange_3
			}
		}
	}
	{
		genre = [
			Punk
		]
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
							color = red_1
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Body_chndr_DTL_Trash.img`
							flags = 4
							color = green_2guitar
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
							texture = `tex/models/Characters/Layers/CAB/CAB_Nek_tribal.img`
							flags = 36
							color = green_1guitar
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_BH6A
			chosen_materials = {
				material1 = grey_5guitar
			}
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_head_bh6a.dds`
					material = CAB_Head_Chunder02_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH6A_WTfinish.img`
							a = 45
							flags = 36
							color = orange_1
						}
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_BH6A_DTL_03.img`
							flags = 36
							color = yellow_orange_1
						}
					]
				}
			]
		}
		CAS_Bass_Pickguards = {
			desc_id = CAB_PGuardChndr01
		}
		CAS_Bass_Pickups = {
			desc_id = CAB_pickup_Hack01
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_BB3A
			chosen_materials = {
				material1 = grey_5guitar
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_chndr10
			chosen_materials = {
				material1 = green_2guitar
			}
		}
	}
	{
		genre = [
			Punk
		]
		CAS_Bass_Body = {
			desc_id = CAB_Body_Bandera
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\guitars\gtr_body_style17_d.dds`
					material = Guitar_Body_Bandera_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style17_LD_15.img`
							color = green_1guitar
							flags = 4
							a = 60
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style17_DTL_Trash.img`
							color = red_2
							flags = 4
							a = 55
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
							flags = 36
							color = blue_1
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_Guppy
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_head_guppy_d.dds`
					material = CAB_Head_Guppy_Headstock
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Head_Guppy_WT.img`
							flags = 36
							color = Black_1guitar
						}
					]
				}
			]
			chosen_materials = {
				material1 = orange_5
			}
		}
		CAS_Bass_Pickguards = {
			desc_id = CAB_Phnq_PG002
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_phnq_pg001b.dds`
					material = CAB_Phnq_PG002_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAB/CAB_Phnq_PG001.img`
							flags = 36
							color = green_3
						}
					]
				}
			]
		}
		CAS_Bass_Pickups = {
			desc_id = CAB_Jbass_pickup_01
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_MLS
			chosen_materials = {
				material1 = orange_5
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_phunq09
			chosen_materials = {
				material1 = Black_1guitar
			}
		}
	}
	{
		genre = [
			Punk
			Glam
			Rock
			metal
			Goth
		]
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
							color = red_orange_3
						}
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Body_Style16_DTL_04.img`
							color = red_orange_2
							flags = 4
							a = 75
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
							texture = `tex/models/Characters/Layers/CAB/CAB_Nek_pumpkinF_D_DS.img`
							flags = 36
							color = red_orange_3
						}
					]
				}
			]
		}
		CAS_Bass_Head = {
			desc_id = CAB_Head_Predikt
			cap = [
				{
					base_tex = `tex/models/Car_Instruments/Bass/cab_predikt_hstock_d.dds`
					material = CAB_Head_Predikt_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CAG/GTR_Headtock16_LD_01.img`
							flags = 36
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Layers/CAG/Gtr_Predikt_HStock01_DTL_01.img`
							flags = 36
							color = red_orange_2
						}
					]
				}
			]
			chosen_materials = {
				material1 = red_orange_1
			}
		}
		CAS_Bass_Pickguards = {
			desc_id = none
		}
		CAS_Bass_Pickups = {
			desc_id = CAB_Pickups_BP1A
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_BB3A
			chosen_materials = {
				material1 = red_orange_1
			}
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_phunq09
			chosen_materials = {
				material1 = red_orange_3
			}
		}
	}
]
cas_preset_drums = [
	{
		CAS_Drums = {
			desc_id = basic
		}
	}
	{
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
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_63.img`
							color = yellow_5guitar
							rot = 2350
							flags = 4
							a = 80
						}
					]
				}
			]
		}
	}
	{
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
							color = yellow_1guitar
						}
					]
				}
				{
					base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
					material = CAD_Drums_01_Bassdrum
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_43.img`
							flags = 4
							color = orange_4
						}
					]
				}
			]
		}
	}
	{
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_rm_01.img`
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
							texture = `tex/models/Characters/Layers/CADrm/bass_skin_GK_05.img`
							color = red_orange_5
						}
					]
				}
			]
		}
	}
	{
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
							color = teal_3
						}
					]
				}
				{
					base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
					material = CAD_Drums_01_Bassdrum
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_73.img`
							flags = 4
							color = red_orange_4
						}
					]
				}
			]
		}
	}
	{
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
							color = teal_3
						}
					]
				}
				{
					base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
					material = CAD_Drums_01_Bassdrum
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_73.img`
							flags = 4
							color = red_orange_4
						}
					]
				}
			]
		}
	}
	{
		genre = [
			Glam
		]
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
							color = green_4guitar
						}
					]
				}
				{
					base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
					material = CAD_Drums_01_Bassdrum
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_61.img`
							flags = 4
							color = orange_3
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics035.img`
							y_trans = 53
							x_scale = 125
							y_scale = 80
							flags = 3
							a = 50
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics035.img`
							a = 50
							x_scale = 125
							y_scale = 80
							flags = 3
							y_trans = -60
						}
					]
				}
			]
		}
	}
	{
		genre = [
			Glam
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_rm_01.img`
							flags = 32
							color = yellow_2guitar
						}
					]
				}
				{
					base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
					material = CAD_Drums_01_Bassdrum
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_79.img`
							flags = 4
							color = green_5guitar
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_034.img`
							color = Black_1guitar
							x_trans = -25
							x_scale = 20
							y_scale = 15
							rot = 950
							flags = 3
							y_trans = 35
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_034.img`
							x_trans = -26
							y_trans = 36
							x_scale = 20
							y_scale = 15
							rot = 950
							flags = 3
							color = yellow_1guitar
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_034.img`
							color = Black_1guitar
							x_trans = -17
							x_scale = 20
							y_scale = 15
							flags = 3
							y_trans = 21
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_034.img`
							color = red_3
							x_trans = -16
							x_scale = 20
							y_scale = 15
							flags = 3
							y_trans = 22
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_034.img`
							color = Black_1guitar
							x_trans = 21
							x_scale = 20
							y_scale = 15
							rot = 350
							flags = 11
							y_trans = 26
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_034.img`
							color = green_2guitar
							x_trans = 20
							y_trans = 27
							x_scale = 20
							y_scale = 15
							rot = 350
							flags = 11
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_034.img`
							color = Black_1guitar
							x_trans = 6
							x_scale = 15
							y_scale = 10
							rot = 350
							flags = 11
							y_trans = 32
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_034.img`
							x_trans = 5
							y_trans = 33
							x_scale = 15
							y_scale = 10
							rot = 350
							flags = 11
							color = teal_3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_034.img`
							color = Black_1guitar
							y_trans = 9
							x_scale = 15
							y_scale = 10
							rot = 5583
							flags = 11
							x_trans = 32
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_034.img`
							color = yellow_1guitar
							y_trans = 10
							x_scale = 15
							y_scale = 10
							rot = 5583
							flags = 11
							x_trans = 31
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics097.img`
							color = yellow_3guitar
							y_trans = -12
							x_scale = 80
							y_scale = 60
							flags = 3
							a = 100
						}
					]
				}
			]
		}
	}
	{
		genre = [
			Punk
			Rock
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_ds_50.img`
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
							texture = `tex/models/Characters/Layers/CADrm/bass_skin_DS_71.img`
							flags = 4
							color = red_orange_3
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							y_trans = -28
							x_scale = 125
							flags = 3
							y_scale = 16
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_scale = 125
							y_scale = 6
							flags = 3
							y_trans = -9
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_scale = 125
							y_scale = 45
							flags = 3
							y_trans = 22
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_elemental004.img`
							y_trans = -39
							x_scale = 85
							y_scale = 60
							rot = 3833
							flags = 19
							x_trans = 37
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_elemental004.img`
							x_trans = -36
							x_scale = 85
							y_scale = 60
							rot = 5633
							flags = 3
							y_trans = -39
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Wing002.img`
							x_trans = -22
							y_trans = 19
							x_scale = 40
							y_scale = 50
							rot = 250
							flags = 11
							color = green_3guitar
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Wing002.img`
							x_trans = 24
							y_trans = 19
							x_scale = 40
							y_scale = 50
							rot = 5983
							flags = 3
							color = green_3guitar
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics012.img`
							flags = 3
						}
					]
				}
			]
		}
	}
	{
		genre = [
			Punk
			Rock
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_ds_49.img`
							color = yellow_2guitar
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
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_21.img`
							color = green_2guitar
							flags = 4
							rot = 5533
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							y_trans = 38
							x_scale = 5
							y_scale = 50
							flags = 3
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_scale = 5
							y_scale = 50
							flags = 3
							y_trans = -37
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_scale = 55
							y_scale = 5
							flags = 3
							x_trans = 40
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_scale = 55
							y_scale = 5
							flags = 3
							x_trans = -39
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal001.img`
							color = Black_1guitar
							y_trans = 19
							x_scale = 40
							y_scale = 55
							rot = 5783
							flags = 3
							x_trans = -19
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Mammal001.img`
							color = yellow_3guitar
							x_trans = -21
							y_trans = 21
							x_scale = 40
							y_scale = 55
							flags = 3
							rot = 5783
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect001.img`
							color = Black_1guitar
							x_trans = -19
							x_scale = 40
							y_scale = 50
							flags = 3
							y_trans = -23
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect001.img`
							color = yellow_2guitar
							x_trans = -21
							x_scale = 40
							y_scale = 50
							flags = 3
							y_trans = -22
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect002.img`
							color = Black_1guitar
							x_trans = 23
							x_scale = 45
							y_scale = 35
							rot = 4033
							flags = 3
							y_trans = 19
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect002.img`
							color = yellow_2guitar
							x_trans = 21
							x_scale = 45
							y_scale = 35
							rot = 4033
							flags = 3
							y_trans = 21
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Creature002.img`
							color = Black_1guitar
							x_trans = 24
							x_scale = 45
							y_scale = 40
							rot = 700
							flags = 3
							y_trans = -24
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Creature002.img`
							color = yellow_2guitar
							x_trans = 21
							y_trans = -22
							x_scale = 45
							y_scale = 40
							flags = 3
							rot = 700
						}
					]
				}
			]
		}
	}
	{
		genre = [
			Punk
			Rock
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_ds_23.img`
							flags = 32
							color = blue_3
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
							color = red_orange_3
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_scale = 20
							y_scale = 20
							flags = 3
							y_trans = -7
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_scale = 20
							y_scale = 20
							flags = 3
							y_trans = 27
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							y_trans = -24
							x_scale = 20
							y_scale = 20
							flags = 3
							x_trans = 17
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							y_trans = -41
							x_scale = 20
							y_scale = 20
							flags = 3
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							y_trans = -24
							x_scale = 20
							y_scale = 20
							flags = 3
							x_trans = -17
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							y_trans = 10
							x_scale = 20
							y_scale = 20
							flags = 3
							x_trans = -17
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = -17
							x_scale = 20
							y_scale = 20
							flags = 3
							y_trans = 44
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = 17
							x_scale = 20
							y_scale = 20
							flags = 3
							y_trans = 10
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = 17
							x_scale = 20
							y_scale = 20
							flags = 3
							y_trans = 44
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							y_trans = 27
							x_scale = 20
							y_scale = 20
							flags = 3
							x_trans = 34
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = 34
							x_scale = 20
							y_scale = 20
							flags = 3
							y_trans = -7
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = 34
							x_scale = 20
							y_scale = 20
							flags = 3
							y_trans = -41
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							y_trans = -41
							x_scale = 20
							y_scale = 20
							flags = 3
							x_trans = -34
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = -34
							x_scale = 20
							y_scale = 20
							flags = 3
							y_trans = 27
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = -34
							y_trans = -7
							x_scale = 20
							y_scale = 20
							flags = 3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
							y_trans = 4
							x_scale = 1
							y_scale = 155
							rot = 800
							flags = 3
							color = red_orange_3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
							y_trans = -5
							x_scale = 1
							y_scale = 155
							rot = 800
							flags = 3
							color = red_orange_3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
							y_trans = -30
							x_scale = 1
							y_scale = 155
							rot = 800
							flags = 3
							color = red_orange_3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
							y_trans = -40
							x_scale = 1
							y_scale = 155
							rot = 800
							flags = 3
							color = red_orange_3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
							y_trans = -49
							x_scale = 1
							y_scale = 155
							rot = 800
							flags = 3
							color = red_orange_3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
							y_trans = 26
							x_scale = 1
							y_scale = 155
							rot = 800
							flags = 3
							color = red_orange_3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
							y_trans = -16
							x_scale = 1
							y_scale = 155
							rot = 800
							flags = 3
							color = red_orange_3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
							y_trans = 17
							x_scale = 1
							y_scale = 155
							rot = 800
							flags = 3
							color = red_orange_3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
							y_trans = 34
							x_scale = 1
							y_scale = 155
							rot = 800
							flags = 3
							color = red_orange_3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
							y_trans = 60
							x_scale = 1
							y_scale = 155
							rot = 800
							flags = 3
							color = red_orange_3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_007.img`
							y_trans = 53
							x_scale = 1
							y_scale = 155
							rot = 800
							flags = 3
							color = red_orange_3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics017.img`
							color = green_2guitar
							x_trans = -4
							x_scale = 85
							y_scale = 90
							flags = 11
							y_trans = 1
						}
					]
				}
			]
		}
	}
	{
		genre = [
			Punk
			Rock
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_ds_04.img`
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
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_15.img`
							flags = 4
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_011.img`
							color = Black_1guitar
							a = 60
							x_trans = 0
							x_scale = 20
							y_scale = 135
							rot = 5933
							flags = 19
							y_trans = -2
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_011.img`
							color = Black_1guitar
							a = 60
							x_trans = -32
							x_scale = 20
							y_scale = 135
							rot = 5233
							flags = 19
							y_trans = -21
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_011.img`
							color = Black_1guitar
							a = 60
							x_trans = -16
							x_scale = 20
							y_scale = 135
							rot = 5633
							flags = 19
							y_trans = -6
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_011.img`
							color = Black_1guitar
							a = 60
							y_trans = -2
							x_scale = 20
							y_scale = 135
							rot = 0
							flags = 19
							x_trans = 17
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_011.img`
							color = Black_1guitar
							a = 60
							y_trans = -7
							x_scale = 20
							y_scale = 135
							rot = 500
							flags = 19
							x_trans = 40
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_009.img`
							x_trans = 1
							y_trans = -13
							x_scale = 35
							y_scale = 25
							rot = 6133
							flags = 3
							color = grey_5guitar
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_009.img`
							x_trans = -3
							x_scale = 45
							y_scale = 25
							rot = 6133
							flags = 3
							y_trans = 19
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_009.img`
							y_trans = 1
							x_scale = 45
							y_scale = 40
							rot = 6133
							flags = 19
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = -20
							y_trans = 18
							x_scale = 5
							y_scale = 25
							flags = 3
							rot = 550
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							y_trans = 27
							x_scale = 5
							y_scale = 25
							rot = 1450
							flags = 3
							x_trans = -6
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = 11
							x_scale = 5
							y_scale = 25
							rot = 2300
							flags = 3
							y_trans = 22
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = 16
							x_scale = 5
							y_scale = 35
							rot = 3400
							flags = 3
							y_trans = 2
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = -16
							x_scale = 5
							y_scale = 35
							rot = 2450
							flags = 3
							y_trans = 0
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							y_trans = -16
							x_scale = 5
							y_scale = 15
							rot = 3450
							flags = 3
							x_trans = -9
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							y_trans = -15
							x_scale = 5
							y_scale = 10
							rot = 2650
							flags = 3
							x_trans = 14
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							color = Black_1guitar
							x_trans = 4
							x_scale = 5
							y_scale = 30
							rot = 4550
							flags = 3
							y_trans = -19
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_011.img`
							color = Black_1guitar
							x_trans = 1
							y_trans = -3
							y_skew = 27
							x_scale = 10
							y_scale = 10
							flags = 3
							rot = 6183
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon026.img`
							color = Black_1guitar
							x_trans = 3
							x_scale = 70
							y_scale = 35
							rot = 6183
							flags = 3
							y_trans = -28
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_011.img`
							color = Black_1guitar
							x_trans = -10
							y_trans = 13
							x_scale = 5
							y_scale = 15
							flags = 3
							rot = 5550
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_011.img`
							color = Black_1guitar
							x_trans = 8
							y_trans = 13
							x_scale = 5
							y_scale = 15
							rot = 600
							flags = 3
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_011.img`
							color = Black_1guitar
							x_trans = 6
							x_scale = 5
							y_scale = 10
							rot = 5983
							flags = 3
							y_trans = -14
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_011.img`
							color = Black_1guitar
							x_trans = -2
							x_scale = 5
							y_scale = 10
							rot = 50
							flags = 3
							y_trans = -16
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_plant_002.img`
							color = Black_1guitar
							x_trans = -2
							y_trans = 16
							x_scale = 90
							y_scale = 65
							rot = 6233
							flags = 19
							a = 65
						}
					]
				}
			]
		}
	}
	{
		genre = [
			`Black Metal`
			metal
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
					material = CAD_Drums_01_Bassdrum
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_15.img`
							flags = 4
							color = Black_1guitar
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics010.img`
							y_trans = -13
							x_scale = 70
							y_scale = 80
							rot = 5733
							flags = 3
							x_trans = -9
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics010.img`
							x_trans = -3
							y_trans = -7
							x_scale = 70
							y_scale = 80
							flags = 3
							rot = 5983
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics010.img`
							x_trans = 7
							x_scale = 70
							y_scale = 80
							rot = 6233
							flags = 3
							y_trans = -4
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics010.img`
							x_trans = 13
							y_trans = -4
							x_scale = 70
							y_scale = 80
							flags = 3
							rot = 250
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics010.img`
							x_trans = 21
							x_scale = 70
							y_scale = 80
							rot = 450
							flags = 3
							y_trans = -13
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							x_trans = 3
							y_trans = 25
							x_scale = 10
							y_scale = 20
							rot = 250
							flags = 3
							color = grey_5guitar
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							x_trans = -11
							y_trans = 21
							x_scale = 10
							y_scale = 20
							rot = 6283
							flags = 3
							color = grey_5guitar
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							x_trans = -26
							y_trans = 13
							x_scale = 10
							y_scale = 20
							rot = 5933
							flags = 3
							color = grey_5guitar
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							x_trans = -37
							y_trans = 1
							x_scale = 10
							y_scale = 20
							rot = 5683
							flags = 3
							color = grey_5guitar
						}
						{
							font = fontgrid_title_a1
							text = '6'
							color = Black_1guitar
							x_trans = 3
							y_trans = 25
							y_scale = 90
							rot = 6183
							flags = 3
							x_scale = 90
						}
						{
							font = fontgrid_title_a1
							text = '6'
							color = Black_1guitar
							x_trans = -11
							x_scale = 90
							y_scale = 90
							rot = 200
							flags = 3
							y_trans = 22
						}
						{
							font = fontgrid_title_a1
							text = '6'
							color = Black_1guitar
							x_trans = -26
							y_trans = 14
							x_scale = 90
							y_scale = 90
							flags = 3
							rot = 550
						}
						{
							font = fontgrid_title_a1
							text = 'K'
							color = Black_1guitar
							y_trans = 2
							x_scale = 75
							y_scale = 75
							rot = 550
							flags = 3
							x_trans = -37
						}
					]
				}
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_ds_52.img`
							flags = 32
						}
					]
				}
			]
		}
	}
	{
		genre = [
			`Black Metal`
			metal
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
					material = CAD_Drums_01_Bassdrum
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_31.img`
							flags = 4
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShapeGradient_002.img`
							color = red_1
							y_trans = -22
							x_scale = 130
							y_scale = 170
							flags = 3
							a = 100
						}
					]
				}
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_ds_42.img`
							color = red_3
							a = 100
							flags = 32
						}
					]
				}
			]
		}
	}
	{
		genre = [
			`Black Metal`
			metal
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_ds_21.img`
							a = 100
							flags = 32
							color = grey_3guitar
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
							color = grey_2guitar
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_006.img`
							x_scale = 120
							y_scale = 25
							flags = 3
							color = Black_1guitar
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics011.img`
							color = red_1
							x_scale = 105
							flags = 3
							y_scale = 95
						}
					]
				}
			]
		}
	}
	{
		genre = [
			Goth
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_ds_27.img`
							flags = 32
							color = red_3
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
							color = red_1
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_PrimitiveShape_001.img`
							color = Black_1guitar
							x_scale = 95
							flags = 3
							y_scale = 95
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics047.img`
							flags = 3
							y_trans = -11
						}
					]
				}
			]
		}
	}
	{
		genre = [
			Goth
		]
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
							color = violet_2
						}
					]
				}
				{
					base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
					material = CAD_Drums_01_Bassdrum
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/bass_skin_gk_02.img`
							flags = 4
							color = grey_5guitar
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics073.img`
							x_trans = 33
							y_trans = 61
							flags = 3
							color = red_1
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics073.img`
							color = red_1
							x_trans = -48
							y_trans = 36
							flags = 3
						}
					]
				}
			]
		}
	}
	{
		genre = [
			Goth
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CADrm/Drumshell_DS_31.img`
							flags = 32
							color = teal_4
						}
					]
				}
				{
					base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
					material = CAD_Drums_01_Bassdrum
					diffuse
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics058.img`
							x_trans = 3
							y_trans = -23
							x_scale = 95
							y_scale = 120
							flags = 3
							color = teal_3
						}
					]
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_32.img`
							flags = 4
							color = teal_3
						}
					]
				}
			]
		}
	}
	{
		genre = [
			Pop
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\bass_skin_DS_15a.dds`
					material = CAD_Drums_01_Bassdrum
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_81.img`
							flags = 4
							color = violet_3
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect003.img`
							color = Black_1guitar
							x_trans = -1
							x_scale = 80
							y_scale = 50
							rot = 6133
							flags = 3
							y_trans = -36
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect003.img`
							color = violet_4
							x_trans = -1
							y_trans = -36
							x_scale = 70
							rot = 6133
							flags = 3
							y_scale = 40
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect003.img`
							color = Black_1guitar
							x_trans = 26
							y_trans = 22
							x_scale = 30
							y_scale = 25
							flags = 3
							rot = 200
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect003.img`
							x_trans = 26
							y_trans = 22
							x_scale = 25
							y_scale = 20
							rot = 200
							flags = 3
							color = violet_4
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect003.img`
							color = Black_1guitar
							x_trans = -14
							y_trans = 34
							x_scale = 30
							rot = 5583
							flags = 3
							y_scale = 25
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon_Insect003.img`
							color = violet_4
							x_trans = -14
							y_trans = 34
							y_scale = 20
							rot = 5583
							flags = 3
							x_scale = 25
						}
					]
				}
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
			]
		}
	}
	{
		genre = [
			Pop
		]
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
							color = navy_3
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
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_74.img`
							flags = 4
							color = blue_2
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics104.img`
							x_trans = -4
							x_scale = 250
							y_scale = 195
							flags = 3
							y_trans = 15
						}
					]
				}
			]
		}
	}
	{
		genre = [
			Pop
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/Characters/Layers/CADrm/Drumshell_DS_15.img`
							flags = 0
							color = red_3
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
							flags = 4
							color = violet_3
						}
					]
				}
			]
		}
	}
	{
		genre = [
			`Classic Rock`
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_ds_22.img`
							color = green_1guitar
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
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_61.img`
							flags = 4
							color = red_3
						}
					]
				}
			]
		}
	}
	{
		genre = [
			`Classic Rock`
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_rm_01.img`
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
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_40.img`
							flags = 4
							color = teal_4
						}
					]
				}
			]
		}
	}
	{
		genre = [
			`Classic Rock`
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_rm_03.img`
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
							texture = `tex/models/characters/layers/cadrm/bass_skin_ds_11.img`
							flags = 4
							color = red_orange_3
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_graphics076.img`
							flags = 3
							color = yellow_2guitar
						}
					]
				}
			]
		}
	}
	{
		genre = [
			Rock
		]
		CAS_Drums = {
			desc_id = basic
			cap = [
				{
					base_tex = `tex\models\CAR_Instruments\Drums\drumshell_ds_pork1.dds`
					material = CAD_Drums_01_Primary
					diffuse
					pre_layer = [
						{
							texture = `tex/models/characters/layers/cadrm/drumshell_ds_23.img`
							color = yellow_orange_3
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
							texture = `tex/models/Characters/Layers/CADrm/bass_skin_GK_05.img`
							flags = 4
							color = grey_5guitar
						}
					]
					layers = [
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon010.img`
							color = Black_1guitar
							y_trans = 20
							x_scale = 60
							y_scale = 65
							rot = 1900
							flags = 3
							x_trans = 12
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon010.img`
							x_trans = 13
							y_trans = 20
							x_scale = 60
							y_scale = 65
							rot = 1900
							flags = 3
							color = yellow_orange_1
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon006.img`
							color = Black_1guitar
							y_trans = 10
							x_scale = 80
							y_scale = 90
							rot = 1150
							flags = 3
							x_trans = -36
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon005.img`
							color = Black_1guitar
							y_trans = 6
							flags = 3
							x_trans = -15
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon005.img`
							x_trans = -14
							y_trans = 6
							flags = 3
							color = yellow_orange_1
						}
						{
							texture = `tex/models/Characters/Skater_Male/Decals/CAG_Icon006.img`
							x_trans = -35
							y_trans = 10
							x_scale = 80
							y_scale = 90
							rot = 1150
							flags = 3
							color = yellow_orange_1
						}
					]
				}
			]
		}
	}
]
cas_preset_female_vocals = [
	{
		genre = [
			Glam
			Rock
			Goth
			Pop
			Punk
			`Black Metal`
			`Heavy Metal`
			`Classic Rock`
		]
		CAS_Mic = {
			desc_id = mic_standard
		}
		CAS_Mic_Stand = {
			desc_id = `Classic Rock`
		}
	}
	{
		CAS_Mic = {
			desc_id = `Black Metal`
		}
		CAS_Mic_Stand = {
			desc_id = `Classic Rock`
		}
	}
	{
		CAS_Mic = {
			desc_id = `Glam Rock`
		}
		CAS_Mic_Stand = {
			desc_id = `Classic Rock`
		}
	}
	{
		CAS_Mic = {
			desc_id = Punk
		}
		CAS_Mic_Stand = {
			desc_id = `Classic Rock`
		}
	}
	{
		CAS_Mic = {
			desc_id = `Classic Rock`
		}
		CAS_Mic_Stand = {
			desc_id = `Classic Rock`
		}
	}
	{
		genre = [
			Glam
			Rock
			metal
			Goth
			Pop
		]
		CAS_Mic = {
			desc_id = mic_standard
		}
		CAS_Mic_Stand = {
			desc_id = Glam
		}
	}
	{
		CAS_Mic = {
			desc_id = `Black Metal`
		}
		CAS_Mic_Stand = {
			desc_id = Glam
		}
	}
	{
		CAS_Mic = {
			desc_id = `Glam Rock`
		}
		CAS_Mic_Stand = {
			desc_id = Glam
		}
	}
	{
		CAS_Mic = {
			desc_id = Punk
		}
		CAS_Mic_Stand = {
			desc_id = Glam
		}
	}
	{
		CAS_Mic = {
			desc_id = `Classic Rock`
		}
		CAS_Mic_Stand = {
			desc_id = Glam
		}
	}
	{
		genre = [
			Glam
			Rock
			Pop
			Punk
			`Classic Rock`
		]
		CAS_Mic = {
			desc_id = mic_standard
		}
		CAS_Mic_Stand = {
			desc_id = Poptastic
		}
	}
	{
		CAS_Mic = {
			desc_id = `Black Metal`
		}
		CAS_Mic_Stand = {
			desc_id = Poptastic
		}
	}
	{
		CAS_Mic = {
			desc_id = `Glam Rock`
		}
		CAS_Mic_Stand = {
			desc_id = Poptastic
		}
	}
	{
		CAS_Mic = {
			desc_id = Punk
		}
		CAS_Mic_Stand = {
			desc_id = Poptastic
		}
	}
	{
		CAS_Mic = {
			desc_id = `Classic Rock`
		}
		CAS_Mic_Stand = {
			desc_id = Poptastic
		}
	}
	{
		genre = [
			Rock
			Goth
			`Black Metal`
			`Heavy Metal`
		]
		CAS_Mic = {
			desc_id = mic_standard
		}
		CAS_Mic_Stand = {
			desc_id = Rock
		}
	}
	{
		CAS_Mic = {
			desc_id = `Black Metal`
		}
		CAS_Mic_Stand = {
			desc_id = Rock
		}
	}
	{
		CAS_Mic = {
			desc_id = `Glam Rock`
		}
		CAS_Mic_Stand = {
			desc_id = Rock
		}
	}
	{
		CAS_Mic = {
			desc_id = Punk
		}
		CAS_Mic_Stand = {
			desc_id = Rock
		}
	}
	{
		CAS_Mic = {
			desc_id = `Classic Rock`
		}
		CAS_Mic_Stand = {
			desc_id = Rock
		}
	}
]
cas_preset_male_vocals = [
	{
		CAS_Mic = {
			desc_id = Rock
		}
		CAS_Mic_Stand = {
			desc_id = Rock
		}
		genre = [
			Rock
		]
	}
	{
		CAS_Mic = {
			desc_id = Goth
		}
		CAS_Mic_Stand = {
			desc_id = Goth
		}
		genre = [
			Goth
		]
	}
	{
		CAS_Mic = {
			desc_id = Pop
		}
		CAS_Mic_Stand = {
			desc_id = Poptastic
		}
		genre = [
			Pop
		]
	}
	{
		CAS_Mic = {
			desc_id = metal
		}
		CAS_Mic_Stand = {
			desc_id = Goth
		}
		genre = [
			`Glam Rock`
			`Classic Rock`
			Punk
		]
	}
	{
		CAS_Mic = {
			desc_id = mic_standard
		}
		CAS_Mic_Stand = {
			desc_id = mic_stand_metal
		}
		genre = [
			`Heavy Metal`
			`Black Metal`
		]
	}
]
