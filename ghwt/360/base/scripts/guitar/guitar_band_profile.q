default_custom_musician_profile_female = {
	allowed_parts = [
		drum
		Vocals
		guitar
		Bass
	]
	blurb = qs("\L")
	appearance = {
		CAS_Body = {
			desc_id = GH4_CAR_Female
		}
		cas_physique = {
			desc_id = FemalePhysique
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
			desc_id = CAB_HBuck_pickup_A2
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_chndr05
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
		CAS_Female_Win_Anim = {
			desc_id = Win_Hype
		}
		CAS_Female_Lose_Anim = {
			desc_id = Lose_AngryAtCrowd
		}
		CAS_Female_Intro_Anim = {
			desc_id = Intro_Hype
		}
		genre = Rock
	}
}
default_custom_musician_profile_male = {
	allowed_parts = [
		drum
		Vocals
		guitar
		Bass
	]
	blurb = qs("\L")
	appearance = {
		CAS_Body = {
			desc_id = GH4_CAR_Male
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
			desc_id = CAB_HBuck_pickup_A2
		}
		CAS_Bass_Knobs = {
			desc_id = cab_knob_chndr05
		}
		CAS_Bass_Bridges = {
			desc_id = CAB_Bridge_BB3A
		}
		CAS_Mic = {
			desc_id = Paramore
		}
		CAS_Mic_Stand = {
			desc_id = Poptastic
		}
		CAS_Drums = {
			desc_id = basic
		}
		CAS_Male_Intro_Anim = {
			desc_id = Intro_Waving
		}
		CAS_Male_Win_Anim = {
			desc_id = Win_Robot
		}
		CAS_Male_Lose_Anim = {
			desc_id = Lose_AngryAtCrowd
		}
		genre = Rock
	}
}
Net_Musician_Profiles = [
	{
		name = netappearance1
		fullname = qs("\Lnetappearance1")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
		}
	}
	{
		name = netappearance2
		fullname = qs("\Lnetappearance2")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
		}
	}
	{
		name = netappearance3
		fullname = qs("\Lnetappearance3")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
		}
	}
	{
		name = netappearance4
		fullname = qs("\Lnetappearance4")
		allowed_parts = [
			drum
			Vocals
			guitar
			Bass
		]
		selection_not_allowed
		appearance = {
		}
	}
]
modifiable_preset_musician_parts = [
	CAS_Female_Hair
	CAS_Female_Hat_Hair
	CAS_Female_Hat
	CAS_Female_Facial_Hair
	CAS_Female_Torso
	CAS_Female_Legs
	CAS_Female_Shoes
	CAS_Female_Acc_Left
	CAS_Female_Acc_Right
	CAS_Female_Acc_Face
	CAS_Female_Acc_Ears
	CAS_Male_Hair
	CAS_Male_Hat_Hair
	CAS_Male_Hat
	CAS_Male_Facial_Hair
	CAS_Male_Torso
	CAS_Male_Legs
	CAS_Male_Shoes
	CAS_Male_Acc_Left
	CAS_Male_Acc_Right
	CAS_Male_Acc_Face
	CAS_Male_Acc_Ears
]
modifiable_preset_musician_instrument_parts = [
	CAS_Full_Instrument
	CAS_Guitar_Body
	CAS_Guitar_Neck
	CAS_Guitar_Head
	CAS_Guitar_Pickguards
	CAS_Guitar_Bridges
	CAS_Guitar_Knobs
	CAS_Guitar_Pickups
	CAS_Guitar_Strings
	CAS_Guitar_Highway
	CAS_Bass_Body
	CAS_Bass_Neck
	CAS_Bass_Head
	CAS_Bass_Pickguards
	CAS_Bass_Pickups
	CAS_Bass_Bridges
	CAS_Bass_Knobs
	CAS_Bass_Strings
	CAS_Bass_Highway
	CAS_Drums
	CAS_Drums_Sticks
	CAS_Drums_Highway
	CAS_Mic
	CAS_Mic_Stand
]
default_band = {
	Guitarist = RandomCharacter
	bassist = RandomCharacter
	vocalist = RandomCharacter
	Drummer = RandomCharacter
}
worst_female_band = {
	Guitarist = WorstFemaleGuitarist
	bassist = WorstFemaleBassist
	vocalist = WorstFemaleVocalist
	Drummer = WorstFemaleDrummer
}
worst_male_band = {
	Guitarist = WorstmaleGuitarist
	bassist = WorstmaleBassist
	vocalist = WorstmaleVocalist
	Drummer = WorstmaleDrummer
}
Band_ZakkBossBattle = {
	Guitarist = RandomCharacter
	bassist = ZakkWylde
	vocalist = RandomCharacter
	Drummer = RandomCharacter
}
Band_Stillborn = {
	Guitarist = ZakkWylde
	bassist = RandomCharacter
	vocalist = ZakkWylde
	Drummer = RandomCharacter
}
Band_CrazyTrain = {
	Guitarist = ZakkWylde
	bassist = RandomCharacter
	vocalist = Ozzy
	Drummer = RandomCharacter
}
Band_MrCrowley = {
	Guitarist = ZakkWylde
	bassist = RandomCharacter
	vocalist = Ozzy
	Drummer = RandomCharacter
}
Band_TedBossBattle = {
	Guitarist = RandomCharacter
	bassist = TedNugent
	vocalist = RandomCharacter
	Drummer = RandomCharacter
}
Band_Stranglehold = {
	Guitarist = TedNugent
	bassist = RandomCharacter
	vocalist = RandomCharacter
	Drummer = RandomCharacter
}
Band_MiseryBusiness = {
	Guitarist = RandomCharacter
	bassist = RandomCharacter
	vocalist = Hayley
	Drummer = RandomCharacter
}
Band_Hendrix = {
	Guitarist = Jimi
	bassist = RandomCharacter
	vocalist = Jimi
	Drummer = RandomCharacter
	allow_player_selected_characters = false
}
Band_Dammit = {
	Guitarist = RandomCharacter
	bassist = RandomCharacter
	vocalist = RandomCharacter
	Drummer = travis
}
Band_Today = {
	Guitarist = Billy
	bassist = RandomCharacter
	vocalist = Billy
	Drummer = RandomCharacter
}
Band_DemolitionMan = {
	Guitarist = RandomCharacter
	bassist = Sting
	vocalist = Sting
	Drummer = RandomCharacter
}
Band_FinalGig_Male_Singer = {
	Guitarist = ZakkWylde
	bassist = Sting
	vocalist = Ozzy
	Drummer = travis
}
Band_FinalGig_Female_Singer = {
	Guitarist = TedNugent
	bassist = Sting
	vocalist = Hayley
	Drummer = travis
}
jam_mode_band = 0
jam_mode_band_profiles = {
	Guitarist = Guitarist
	bassist = bassist
	vocalist = singer
	Drummer = Drummer
}
