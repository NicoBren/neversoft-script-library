gh4_career_drum_songs = {
	prefix = 'career_drum'
	part = drum
	num_tiers = 9
	tier1 = {
		$gh4_1_intro_tier
	}
	tier2 = {
		title = qs(0x87931eee)
		songs = [
			turnthepage
			tuesdaysgone
			motherofmercy
			amievil
			theboysareback
		]
		stars = 6
		level = load_z_tushino
	}
	tier3 = {
		title = qs(0xc7118aa2)
		songs = [
			nothingelsematters
			sadbuttrue
			kingnothing
			entersandman
			noleafclover
		]
		stars = 16
		encore_stars = 16
		level = load_z_tushino
	}
	tier4 = {
		title = qs(0x2de7d2e1)
		songs = [
			noexcuses
			aceofspades
			toxicity
			albatross
			blackriver
			thememoryremains
			orion
			fadetoblack
			whereverimayroam
			sanitarium
		]
		stars = 26
		encore_stars = 31
		level = load_z_mop
	}
	tier5 = {
		title = qs(0x36cd3e47)
		songs = [
			demoncleaner
			stackedactors
			hellbentforleather
			armedandready
			stonecoldcrazy
			fuel
			one
			frantic
			mercyfulfate
			theshorteststraw
		]
		stars = 36
		encore_stars = 43
		level = load_z_justice
	}
	tier6 = {
		title = qs(0x36aabf4b)
		songs = [
			mommyslittlemonster
			evil
			warinsidemyhead
			hitthelights
			seekanddestroy
			creepingdeath
			masterofpuppets
			battery
		]
		stars = 50
		encore_stars = 55
		level = load_z_meadowlands
	}
	tier7 = {
		title = qs(0x88266a5b)
		songs = [
			beautifulmourning
			bloodandthunder
			warensemble
			whiplash
			disposeableheroes
			allnightmarelong
			fightfirewithfire
			dyerseve
		]
		stars = 60
		encore_stars = 67
		level = load_z_donnington
	}
	tier8 = {
		title = qs(0xe52af9f7)
		songs = [
			thethingthat
		]
		stars = 72
		level = load_z_icecave
	}
	tier9 = {
		title = qs(0x36d44196)
		songs = [
			brokenbeatandscarred
			cyanide
			myapocalypse
		]
		stars = 0
		level = load_z_stone
	}
}
gh4_career_drum_progression_unlock_order = {
	Name = 'Career_Drum'
	freegigs = {
		gig1 = {
			Name = 'gig1'
			num = 1
		}
		gig2 = {
			Name = 'gig2'
			num = 2
		}
		gig3 = {
			Name = 'gig3'
			num = 3
		}
		gig4 = {
			Name = 'gig4'
			num = 4
		}
		gig5 = {
			Name = 'gig5'
			num = 5
		}
		gig6 = {
			Name = 'gig6'
			num = 6
		}
		gig7 = {
			Name = 'gig7'
			num = 7
		}
		gig8 = {
			Name = 'gig8'
			num = 8
		}
		gig9 = {
			Name = 'gig9'
			num = 9
		}
	}
}
gh4_career_drum_gig_complete_params = {
	career_drum
	unlock_order = gh4_career_drum_progression_unlock_order
	part = 'Drum'
}
gh4_career_drum_progression = [
	{
		Name = set_initial_states
		Type = Scr
		atom_script = progression_career_drum_init
		atom_params = {
		}
	}
	{
		Name = drum_career_gig1_complete
		Type = Scr
		atom_script = progression_career_gig_complete
		atom_params = $gh4_career_drum_gig_complete_params
		depends_on = [
			{
				Type = Scr
				Scr = progression_career_check_gig_complete
				params = {
					career_drum
					gig = 1
				}
			}
		]
	}
	{
		Name = end_of_first_update
		Type = Scr
		atom_script = progression_career_drum_endoffirstupdate
		atom_params = {
		}
	}
]

script progression_career_drum_init 
	printf \{qs(0xf347395d)}
endscript

script progression_career_drum_endoffirstupdate 
	printf \{qs(0xd8377944)}
endscript
