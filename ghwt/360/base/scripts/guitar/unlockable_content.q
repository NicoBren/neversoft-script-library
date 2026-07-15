Bonus_Songs = {
	prefix = 'bonus'
	num_tiers = 1
	tier1 = {
		title = qs("Bonus songs")
		songs = [
			eyeofthetiger
			SatchBoogie
		]
		level = load_z_artdeco
		defaultunlocked = 0
	}
}
Bonus_Videos = [
	{
		text = qs("CREDITS")
		id = credits
		movie = 'credits'
		unlocked
	}
	{
		text = qs("LINE 6:WHAT IS POD?")
		id = line6_01
		movie = 'what_is_pod'
		unlocked
	}
	{
		text = qs("LINE 6:GUITAR 101")
		id = line6_02
		movie = 'Line_6_Guitar_101'
		unlocked
	}
	{
		text = qs("BEHIND THE SCENES")
		id = In_GameMontage
		movie = 'In-GameMontage'
		unlocked
	}
	{
		text = qs("\LMETALLICA")
		id = GHMetallica
		movie = 'GHMetallica'
		unlocked
	}
	{
		text = qs("BAND INTRO")
		id = band_intro
		movie = 'band_intro'
		unlocked
	}
	{
		text = qs("BAND FINALE")
		id = band_outro
		movie = 'band_outro'
	}
	{
		text = qs("GUITAR INTRO")
		id = guitarist_intro
		movie = 'guitarist_intro'
	}
	{
		text = qs("GUITAR FINALE")
		id = guitarist_outro
		movie = 'guitarist_outro'
	}
	{
		text = qs("DRUM INTRO")
		id = drummer_intro
		movie = 'drummer_intro'
	}
	{
		text = qs("DRUM FINALE")
		id = drummer_outro
		movie = 'drummer_outro'
	}
	{
		text = qs("BASS INTRO")
		id = bass_intro
		movie = 'bass_intro'
	}
	{
		text = qs("BASS FINALE")
		id = bass_outro
		movie = 'bass_outro'
	}
	{
		text = qs("SINGER INTRO")
		id = singer_intro
		movie = 'singer_intro'
	}
	{
		text = qs("SINGER FINALE")
		id = singer_outro
		movie = 'singer_outro'
	}
]
Bonus_Songs_Info = [
]
progression_band_rewards = [
	{
		group_name = qs("Left Arm New Wristband")
		car_pieces = [
			{
				part = CAS_Female_Acc_Left
				desc_id = f_bmtl_acc_lstichband
			}
			{
				part = CAS_Male_Acc_Left
				desc_id = m_bmtl_acc_lstichband
			}
		]
	}
	{
		group_name = qs("Right Arm New Wristband")
		car_pieces = [
			{
				part = CAS_Female_Acc_Right
				desc_id = f_glam_acc_rdenimband
			}
			{
				part = CAS_Male_Acc_Right
				desc_id = m_glam_acc_rdenimband
			}
		]
	}
	{
		group_name = qs("Left Arm New Wristband")
		car_pieces = [
			{
				part = CAS_Female_Acc_Left
				desc_id = f_glam_acc_purpleband
			}
			{
				part = CAS_Male_Acc_Left
				desc_id = m_glam_acc_lwristband
			}
		]
	}
	{
	}
	{
		group_name = qs("Left Arm New Spikes")
		car_pieces = [
			{
				part = CAS_Female_Acc_Left
				desc_id = f_bmtl_acc_ltripleband
			}
			{
				part = CAS_Male_Acc_Left
				desc_id = m_bmtl_acc_ltripleband
			}
		]
	}
	{
		group_name = qs("Left Arm New Spikes")
		car_pieces = [
			{
				part = CAS_Female_Acc_Left
				desc_id = f_bmtl_acc_lblackspike
			}
			{
				part = CAS_Male_Acc_Left
				desc_id = m_bmtl_acc_lblackspike
			}
		]
	}
	{
		group_name = qs("New Hat")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = F_Metl_Head_HatStuds01
			}
			{
				part = CAS_Male_Hat
				desc_id = M_Metl_Hat_Studs
			}
		]
	}
	{
		group_name = qs("New Hat")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = F_Pop_Head_WW2Helm
			}
			{
				part = CAS_Male_Hat
				desc_id = M_Pop_Head_WW2Helm
			}
		]
	}
	{
		group_name = qs("New Glasses")
		car_pieces = [
			{
				part = CAS_Female_Acc_Face
				desc_id = f_clsc_glasses_avtr
			}
			{
				part = CAS_Male_Acc_Face
				desc_id = M_Clsc_Glasses_Avtr
			}
		]
	}
	{
		group_name = qs("New Glasses")
		car_pieces = [
			{
				part = CAS_Female_Acc_Face
				desc_id = f_goth_glasses_ggls
			}
			{
				part = CAS_Male_Acc_Face
				desc_id = m_goth_glasses_ggls
			}
		]
	}
	{
		group_name = qs("New Hat")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = f_rock_hat_cowboy
			}
			{
				part = CAS_Male_Hat
				desc_id = m_clsc_hat_cowboy
			}
		]
	}
	{
		group_name = qs("New Hats")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = F_Pop_Acc_Catears
			}
			{
				part = CAS_Male_Hat
				desc_id = M_Hat_Pimp
			}
		]
	}
	{
		group_name = qs("New Helmet")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = F_Bmtl_Head_Viking
			}
			{
				part = CAS_Male_Hat
				desc_id = M_Bmtl_Hat_Viking
			}
		]
	}
	{
		group_name = qs("New Helmet")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = F_Bmtl_Hat_SkullHelmet
			}
			{
				part = CAS_Male_Hat
				desc_id = M_Bmtl_Hat_SkullHelmet
			}
		]
	}
	{
		group_name = qs("New Torso")
		car_pieces = [
			{
				part = CAS_Female_Torso
				desc_id = f_fun_torso_angelw
			}
			{
				part = CAS_Male_Torso
				desc_id = m_fun_torso_angelw
			}
		]
	}
	{
		group_name = qs("\LBilly Corgan")
		characters = [
			Billy
		]
	}
]
progression_guitar_rewards = [
	{
		group_name = qs("Ernie Ball Guitar Strings")
		car_pieces = [
			{
				part = CAS_Guitar_Strings
				desc_id = Hybrid_SLINKY
			}
			{
				part = CAS_Guitar_Strings
				desc_id = Beefy_Slinky
			}
			{
				part = CAS_Guitar_Strings
				desc_id = NotEven_Slinky
			}
			{
				part = CAS_Guitar_Strings
				desc_id = Skinny_Top
			}
			{
				part = CAS_Guitar_Strings
				desc_id = Nickel_Lite
			}
			{
				part = CAS_Guitar_Strings
				desc_id = Nickel_Med_Lite
			}
			{
				part = CAS_Guitar_Strings
				desc_id = Nickel_Medium
			}
			{
				part = CAS_Guitar_Strings
				desc_id = 7_String_Slinky
			}
			{
				part = CAS_Guitar_Strings
				desc_id = 7_String_Slinky_2
			}
			{
				part = CAS_Guitar_Strings
				desc_id = Earthwood_Acoustic_Light
			}
			{
				part = CAS_Guitar_Strings
				desc_id = Earthwood_Acoustic_Medium
			}
			{
				part = CAS_Guitar_Strings
				desc_id = Earthwood_Acoustic_MediumLite
			}
			{
				part = CAS_Guitar_Strings
				desc_id = Reg_Slinky_Acoustic
			}
			{
				part = CAS_Guitar_Strings
				desc_id = Regular_Slinky
			}
			{
				part = CAS_Guitar_Strings
				desc_id = Power_Slinky
			}
			{
				part = CAS_Guitar_Strings
				desc_id = coat_reg_slinky
			}
			{
				part = CAS_Guitar_Strings
				desc_id = coat_super_slinky
			}
			{
				part = CAS_Guitar_Strings
				desc_id = coat_power_slinky
			}
			{
				part = CAS_Guitar_Strings
				desc_id = coat_hybrid_slinky
			}
		]
	}
	{
		group_name = qs("New Guitar Body Shape")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = Guitar_X_Flames_08
			}
		]
	}
	{
		group_name = qs("New Guitar Knobs")
		car_pieces = [
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR1_Knob_Type6_04
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR2_Knob_Type6_04
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR3_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR4_Knob_Type6_04
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR6_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR7_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR8_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR9_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR10_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR11_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR12_Knob_Type6_04
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR13_Knob_Type6_02
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR14_Knob_Type6_04
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR15_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = gtr20_knob_type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = gtr31_knob_type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = gtr32_knob_type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = gtr_x13_knob_type6_02
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = gtr_x14_knob_type6_02
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X1_Knob_Type6_02
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X1_Knob_Type6_01
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X2_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X3_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X4_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X5_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X6_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X7_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X8_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X9_Knob_Type6_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X10_Knob_Type6_03
			}
		]
	}
	{
		group_name = qs("Humdinger Pickups")
		car_pieces = [
			{
				part = CAS_Guitar_Pickups
				desc_id = GTR_Pickup_Type3_02
			}
			{
				part = CAS_Guitar_Pickups
				desc_id = GTR_Pickup_Type3_03
			}
			{
				part = CAS_Guitar_Pickups
				desc_id = GTR_Pickup_Type3b_02
			}
			{
				part = CAS_Guitar_Pickups
				desc_id = GTR_Pickup_Type3b_03
			}
		]
	}
	{
		group_name = qs("New Guitar Body Shape")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = Guitar_X_Trident_10
			}
		]
	}
	{
		group_name = qs("New Guitar Headstock")
		car_pieces = [
			{
				part = CAS_Guitar_Head
				desc_id = guitar_head_x_03
			}
		]
	}
	{
		group_name = qs("New Guitar Body Shape")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = Guitar_X_Anarchy_03
			}
		]
	}
	{
		group_name = qs("New Guitar Knobs")
		car_pieces = [
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR1_Knob_Type9_04
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR2_Knob_Type9_04
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR7_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR8_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR9_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR10_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR11_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR12_Knob_Type9_04
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR13_Knob_Type9_02
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR14_Knob_Type9_04
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR15_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = gtr20_knob_type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = gtr31_knob_type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = gtr32_knob_type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = gtr_x13_knob_type9_02
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = gtr_x14_knob_type9_02
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X1_Knob_Type9_02
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X1_Knob_Type9_01
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X2_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X3_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X4_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X5_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X6_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X7_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X8_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X9_Knob_Type9_03
			}
			{
				part = CAS_Guitar_Knobs
				desc_id = GTR_X10_Knob_Type9_03
			}
		]
	}
	{
		group_name = qs("New Guitar Body Shape")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = Guitar_X_YinYang_14
			}
		]
	}
	{
		group_name = qs("New Guitar Headstock")
		car_pieces = [
			{
				part = CAS_Guitar_Head
				desc_id = Headstock_X_Cents_07
			}
		]
	}
	{
		group_name = qs("New Guitar Body Shape")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = Guitar_X_Freebird_09
			}
		]
	}
	{
		group_name = qs("New Guitar Body Shape")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = Guitar_Special_Spider_02
			}
		]
	}
	{
		group_name = qs("New Guitar Body Shape")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = Guitar_X_Clear_11
			}
		]
	}
	{
		group_name = qs("New Guitar Body Shape")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = Guitar_X_Clear_12
			}
		]
	}
	{
		group_name = qs("New Guitar Body Shape")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = Guitar_X_Money_07
			}
		]
	}
	{
		group_name = qs("\LZakk Wylde")
		characters = [
			ZakkWylde
		]
	}
	{
		group_name = qs("\LTed Nugent")
		characters = [
			TedNugent
		]
	}
]
progression_bass_rewards = [
	{
		group_name = qs("Ernie Ball Bass Strings")
		car_pieces = [
			{
				part = CAS_Bass_Strings
				desc_id = Hybrid_SLINKY
			}
			{
				part = CAS_Bass_Strings
				desc_id = Power_Slinky
			}
			{
				part = CAS_Bass_Strings
				desc_id = Super_Slinky
			}
		]
	}
	{
		group_name = qs("New Bass Knobs")
		car_pieces = [
			{
				part = CAS_Bass_Knobs
				desc_id = cab_knob_spyt06
			}
			{
				part = CAS_Bass_Knobs
				desc_id = cab_knob_xrend07
			}
			{
				part = CAS_Bass_Knobs
				desc_id = cab_knob_unos07
			}
			{
				part = CAS_Bass_Knobs
				desc_id = cab_knob_hack07
			}
			{
				part = CAS_Bass_Knobs
				desc_id = cab_knob_chndr07
			}
			{
				part = CAS_Bass_Knobs
				desc_id = cab_knob_foots07
			}
			{
				part = CAS_Bass_Knobs
				desc_id = cab_knob_grmbl07
			}
			{
				part = CAS_Bass_Knobs
				desc_id = cab_knob_phunq07
			}
			{
				part = CAS_Bass_Knobs
				desc_id = cab_knob_skull07
			}
			{
				part = CAS_Bass_Knobs
				desc_id = cab_knob_rubyat07
			}
			{
				part = CAS_Bass_Knobs
				desc_id = cab_knob_icross07
			}
		]
	}
	{
		group_name = qs("New Bass Headstock")
		car_pieces = [
			{
				part = CAS_Bass_Head
				desc_id = CAB_Head_MLSplit
			}
		]
	}
	{
		group_name = qs("New Bass Pickups")
		car_pieces = [
			{
				part = CAS_Bass_Pickups
				desc_id = CAB_HBuck_pickup_A1
			}
			{
				part = CAS_Bass_Pickups
				desc_id = CAB_HBuck_pickup_A2
			}
			{
				part = CAS_Bass_Pickups
				desc_id = CAB_HBuck_pickup_A3
			}
		]
	}
	{
		group_name = qs("New Bass Fretboard")
		car_pieces = [
			{
				part = CAS_Bass_Neck
				desc_id = CAB_Neck_BFretlss01
			}
		]
	}
	{
		group_name = qs("New Bass Body Shape")
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = CAB_Body_Rubyat
			}
		]
	}
	{
		group_name = qs("New Bass Headstock")
		car_pieces = [
			{
				part = CAS_Bass_Head
				desc_id = CAB_Head_Mnemonic
			}
		]
	}
	{
		group_name = qs("New Bass Headstock")
		car_pieces = [
			{
				part = CAS_Bass_Head
				desc_id = CAB_Head_Foots01
			}
		]
	}
	{
		group_name = qs("New Bass Body Shape")
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = CAB_BodyFoots01
			}
		]
	}
	{
		group_name = qs("New Bass Headstock")
		car_pieces = [
			{
				part = CAS_Bass_Head
				desc_id = CAB_Head_Skull
			}
		]
	}
	{
		group_name = qs("New Bass Body Shape")
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = CAB_Body_Laurenz_BBA
			}
		]
	}
	{
		group_name = qs("New Bass Body Shape")
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = CAB_Body_XRend01
			}
		]
	}
	{
		group_name = qs("New Bass Body Shape")
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = CAB_Skull
			}
		]
	}
	{
		group_name = qs("New Bass Body Shape")
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = CAB_Body_X_ICross
			}
		]
	}
	{
		group_name = qs("New Bass Body Shape")
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = CAB_Body_X_Battleaxe
			}
		]
	}
	{
		group_name = qs("\LSting")
		characters = [
			Sting
		]
	}
]
progression_drum_rewards = [
	{
		group_name = qs("\LZildjian Sticks")
		car_pieces = [
			{
				part = CAS_Drums_Sticks
				desc_id = Drumsticks_Zildjian1
			}
			{
				part = CAS_Drums_Sticks
				desc_id = Drumsticks_Zildjian2
			}
		]
	}
	{
		group_name = qs("\LRegal Tip Sticks")
		car_pieces = [
			{
				part = CAS_Drums_Sticks
				desc_id = Drumsticks_Regal
			}
		]
	}
	{
		group_name = qs("\LPork Pie Double Bass Kit")
		car_pieces = [
			{
				part = CAS_Drums
				desc_id = DoubleBass
			}
		]
	}
	{
	}
	{
		group_name = qs("New Piercing")
		car_pieces = [
			{
				part = CAS_Female_Acc_Ears
				desc_id = f_punk_acc_ring_02
			}
			{
				part = CAS_Male_Acc_Ears
				desc_id = M_Punk_Acc_Ring_02
			}
		]
	}
	{
		group_name = qs("New Hat")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = f_clsc_hat_cptn
			}
			{
				part = CAS_Male_Hat
				desc_id = m_clsc_hat_cptn
			}
		]
	}
	{
		group_name = qs("New Hat")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = f_rock_hat_starpin
			}
			{
				part = CAS_Male_Hat
				desc_id = m_rock_hat_starpin
			}
		]
	}
	{
		group_name = qs("\LOC Drums Monster Kit")
		car_pieces = [
			{
				part = CAS_Drums
				desc_id = Monster
			}
		]
	}
	{
		group_name = qs("New Hat")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = f_goth_hat_tophat
			}
			{
				part = CAS_Male_Hat
				desc_id = m_goth_hat_tophat
			}
		]
	}
	{
		group_name = qs("New Hat")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = F_Pop_Head_GasMask
			}
			{
				part = CAS_Male_Hat
				desc_id = M_Pop_Head_GasMask
			}
		]
	}
	{
	}
	{
	}
	{
		group_name = qs("\LRockbot")
		characters = [
			Rockbot
		]
	}
	{
		group_name = qs("New Hat")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = F_Fun_Hat_EyeBall
			}
			{
				part = CAS_Male_Hat
				desc_id = M_Fun_Hat_EyeBall
			}
		]
	}
	{
		group_name = qs("New Hat")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = f_bmtl_hat_chicken
			}
			{
				part = CAS_Male_Hat
				desc_id = m_bmtl_hat_chicken
			}
		]
	}
	{
		group_name = qs("\LTravis Barker")
		characters = [
			travis
		]
	}
]
progression_vocals_rewards = [
	{
		group_name = qs("Left Arm New Wristband")
		car_pieces = [
			{
				part = CAS_Female_Acc_Left
				desc_id = f_clsc_acc_lbeads
			}
			{
				part = CAS_Male_Acc_Left
				desc_id = m_clsc_acc_lbeads
			}
		]
	}
	{
		group_name = qs("New Mic")
		car_pieces = [
			{
				part = CAS_Mic
				desc_id = Pop
			}
		]
	}
	{
		group_name = qs("New Mic Stand")
		car_pieces = [
			{
				part = CAS_Mic_Stand
				desc_id = Twisted
			}
		]
	}
	{
	}
	{
		group_name = qs("New Hat")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = f_clsc_hat_triangle
			}
			{
				part = CAS_Male_Hat
				desc_id = m_clsc_hat_triangle
			}
		]
	}
	{
		group_name = qs("Left Arm New Watch")
		car_pieces = [
			{
				part = CAS_Female_Acc_Left
				desc_id = f_rock_acc_lskullwatch
			}
			{
				part = CAS_Male_Acc_Left
				desc_id = M_Rock_Acc_LSkullwatch
			}
		]
	}
	{
		group_name = qs("New Face Accessory")
		car_pieces = [
			{
				part = CAS_Female_Acc_Face
				desc_id = f_metl_acc_eyepatch
			}
			{
				part = CAS_Male_Acc_Face
				desc_id = m_metl_eyepatch
			}
		]
	}
	{
		group_name = qs("New Mic")
		car_pieces = [
			{
				part = CAS_Mic
				desc_id = Goth
			}
		]
	}
	{
		group_name = qs("New Hat")
		car_pieces = [
			{
				part = CAS_Female_Hat
				desc_id = F_Metl_Acc_Horn
			}
			{
				part = CAS_Male_Hat
				desc_id = M_Metl_Horn
			}
		]
	}
	{
		group_name = qs("New Mic Stand")
		car_pieces = [
			{
				part = CAS_Mic_Stand
				desc_id = mic_stand_blackmetal
			}
		]
	}
	{
		group_name = qs("New Mic Stand")
		car_pieces = [
			{
				part = CAS_Mic_Stand
				desc_id = mic_stand_metal
			}
		]
	}
	{
		group_name = qs("New Mic Stand")
		car_pieces = [
			{
				part = CAS_Mic_Stand
				desc_id = Goth
			}
		]
	}
	{
		group_name = qs("\LSkeleton")
		characters = [
			skeleton
		]
	}
	{
		group_name = qs("New Mic")
		car_pieces = [
			{
				part = CAS_Mic
				desc_id = Rock
			}
		]
	}
	{
		group_name = qs("New Mic")
		car_pieces = [
			{
				part = CAS_Mic
				desc_id = metal
			}
		]
	}
	{
		group_name = qs("\LHayley Williams")
		characters = [
			Hayley
		]
	}
	{
		group_name = qs("\LOzzy Osbourne")
		characters = [
			Ozzy
		]
	}
]
