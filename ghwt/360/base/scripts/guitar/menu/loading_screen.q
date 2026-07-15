loading_screen_tips = [
	qs("Having trouble?  Check out the tutorials in the training menu.")
	qs("Having trouble?  Check out the tutorials in the training menu.")
	qs("Go to Rock Star Creator to purchase new clothing and instruments with the money you earn.")
	qs("Go to Rock Star Creator to purchase new clothing and instruments with the money you earn.")
	qs("Going into practice can help you nail those tricky solos.")
	qs("Going into practice can help you nail those tricky solos.")
	qs("When using Dolby Pro Logic® II, switch your receiver to Music Mode for the best sound quality.")
	qs("Get your personal Guitar Hero stats on the web.  Visit community.guitarhero.com to find out how!")
	qs("Need new songs?  Check the 'Daily Message' to see if new content is available!")
	qs("Win stuff by playing Guitar Hero!  Check the 'Daily Message' for info on tournaments.")
	qs("Link to your game stats, earn groupies, and form an online band at community.guitarhero.com!")
	qs("Want to play in a band but don't have any friends?  Play online to hook up and jam!")
	qs("Who's a Guitar God?  Check the leaderboards or go to community.guitarhero.com on the web.")
	qs("When in doubt, blame the singer's girlfriend.")
	qs("Don't hide those years of partying - adjust your rocker's age in the 'Rock Star Creator' 'Edit Face' menu.")
	qs("Is your bassist too loud?  You can change the mix of instruments in the 'Set Audio' menu!")
	qs("Born as a lefty?  No prob, just turn on lefty flip in the options menu!")
	qs("Wanna create your own epic song?  Check out the 'Music Studio' from the main menu!")
	qs("Unlocked a cool new piece of clothing?  Go into the 'Rock Star Creator' to buy new stuff.")
	qs("If it's illegal to Rock and Roll, then throw my @#$ in jail!")
	qs("Head to GHTunes to download new user created tracks to play in the game!")
]
loading_screen_tips_guitar = [
	qs("Try holding down the button before the note reaches the strike line.")
	qs("For a long string of notes, try alternating the strum bar up and down.")
	qs("You can look even cooler tap strumming with the neck slider.")
	qs("Use a combination of tap wah and whammy to earn maximum cash.")
	qs("If you see a purple rope connecting notes it means you can use the neck slider to tap or slide.")
	qs("Slide your hand on the neck slider during long sustained notes to make a wah effect.")
	qs("It's cool to use both hands on the fret buttons during complex parts.  It's even cooler to use your feet!")
]
loading_screen_tips_drum = [
	qs("If you're having trouble finding the beat, start with the kick and snare and then add in your other hand.")
	qs("If your foot starts cramping, try resting it on the kick pedal.")
	qs("Instead of whaling on the pads, try using softer hits.  Using your wrists will give you more accuracy and speed.")
	qs("For fast repeated notes, try not to tense up.")
	qs("The silver topped notes are accents.  Hit them harder for extra points.")
	qs("Start moving your hand before the note, so that you can hit it on time, and not late.")
	qs("Improvise! At the start of songs or when the drum highway looks wavy, play anything you want - there's no penalty.")
]
loading_screen_tips_vocals = [
	qs("Deep voice?  No problem.  Sing the song in any octave and you will be scored the same.")
	qs("Tip: Move away from the mic to breathe.")
	qs("Feel free to freestyle your own lyrics as long as they're on-time and on-pitch.")
	qs("Just like a real rock singer, enunciation doesn't really matter.  Pitch and timing are the most important things.")
	qs("Watch for glowing freeform sections - sing anything you want to the song's beat and pitch to earn bonus points.")
	qs("Bring the hype! When you see hands appear on the vocal highway, shout out to the crowd to boost your rock meter!")
]
loading_screen_tips_bass = [
	qs("Have you seen that bar in the middle of the highway?  That's an open strum.  Hit it by strumming without holding buttons.")
	qs("Try holding down the button before the note reaches the strike line.")
	qs("For a long string of notes, try alternating the strum bar up and down.")
]
loading_screen_tips_band = [
	qs("You're all in this together.  Once Star Power is ready, anybody in your band can activate it.")
	qs("Hitting note streaks together as a band will give the band a score bonus.")
	qs("If one of your bandmates is struggling they can pull from the Star Power meter to help themselves.")
	qs("When your highway edges glow brighter you're on a note streak. If your bandmates join you, you'll score bonus points.")
]
loading_screen_tips_jam = [
	qs("In GHMix, Step Recording is the easiest way to keep notes on beat.")
	qs("Play to the beat of your own drum.  Plug your GH Drum Kit into the Music Studio and jam away.")
	qs("You don't have to rip to play ripping solos.  Try the 'Lead Machine'.")
	qs("Spit some rhymes with a Drum Machine and Mic in the recording studio.")
	qs("When you've finished your masterpiece, select the Publish option to send it up to GHTunes!")
]
loading_screen_tips_leaderboard = [
	qs("Are you the best around?  Is nothing gonna ever keep you down?")
	qs("Each song in the game has a leaderboard for each instrument, and for band play.")
	qs("Any time you download a new song you will be able to post a score onto that song's leaderboard.")
	qs("Get your personal Guitar Hero stats on the web. Visit community.guitarhero.com to find out how!")
]
loading_screen_destroy_state = 'none'

script create_loading_screen \{mode = play_song
		jam_mode = 0}
	printscriptinfo \{'create_loading_screen'}
	disable_pause
	if ($is_changing_levels = 1)
		return
	endif
	change \{is_changing_levels = 1}
	if ($guitar_motion_enable_test = 1)
		return
	endif
	if ScreenElementExists \{id = loading_screen_container}
		return
	endif
	mark_unsafe_for_shutdown
	movie = 'loading_flipbook'
	movie_path = ('movies\\bik\\' + <movie> + '.bik.xen')
	desc = 'loading'
	buffer_slot = 0
	TextureSlot = 2
	loading_text = qs("LOADING...")
	if (($game_mode) = p4_pro_faceoff)
		movie = 'loading_online'
		movie_path = ('movies\\bik\\' + <movie> + '.bik.xen')
		desc = 'loading_online'
	endif
	GetRandomValue \{name = global_or_not
		a = 0
		b = 2
		Integer}
	if (<global_or_not> = 1)
		<tips_array> = ($loading_screen_tips)
	else
		if (<jam_mode> = 1)
			<tips_array> = ($loading_screen_tips_jam)
		elseif GotParam \{leaderboard}
			<tips_array> = ($loading_screen_tips_leaderboard)
		elseif ($current_num_players = 1)
			<part> = ($player1_status.part)
			switch <part>
				case guitar
				<tips_array> = ($loading_screen_tips_guitar)
				case drum
				<tips_array> = ($loading_screen_tips_drum)
				case Vocals
				<tips_array> = ($loading_screen_tips_vocals)
				case Bass
				<tips_array> = ($loading_screen_tips_bass)
				default
				<tips_array> = ($loading_screen_tips_guitar)
			endswitch
		else
			if (($game_mode = p2_battle) || ($game_mode = p2_faceoff) || ($game_mode = p2_pro_faceoff))
				<tips_array> = ($loading_screen_tips)
			else
				<tips_array> = ($loading_screen_tips_band)
			endif
		endif
	endif
	if GotParam \{leaderboard}
		loading_text = qs("SEARCHING...")
	endif
	GetArraySize <tips_array>
	GetRandomValue name = rand_num a = 0 b = (<array_size> - 1) Integer
	rand_tip = (<tips_array> [<rand_num>])
	CreateScreenElement {
		type = DescInterface
		parent = root_window
		desc = <desc>
		id = loading_screen_container
		z_priority = 500000
		tags = {
			movie = <movie>
			movie_path = <movie_path>
			buffer_slot = <buffer_slot>
			TextureSlot = <TextureSlot>
			loading_text = <loading_text>
			tip_text = <rand_tip>
		}
		loading_text = qs("\L")
		tip_text = qs("\L")
	}
	if GotParam \{destroy_state}
		change loading_screen_destroy_state = <destroy_state>
	else
		change \{loading_screen_destroy_state = 'none'}
	endif
	if GotParam \{spawn}
		loading_screen_container :obj_spawnscript \{create_loading_screen_spawned}
	else
		create_loading_screen_spawned
	endif
endscript

script create_loading_screen_spawned 
	loading_screen_container :GetTags
	KillAllMovies
	if NOT IsMovieInBuffer movie = <movie>
		FreeMovieBuffer buffer_slot = <buffer_slot>
		MemPushContext \{loadingscreen}
		AllocateMovieBuffer buffer_slot = <buffer_slot> movie = <movie_path>
		MemPopContext
		LoadMovieIntoBuffer buffer_slot = <buffer_slot> movie = <movie>
	endif
	PlayMovieFromBuffer {
		buffer_slot = <buffer_slot>
		TextureSlot = <TextureSlot>
		TexturePri = 200000
		no_hold
		wait_until_rendered
	}
	begin
	if IsMoviePlaying TextureSlot = <TextureSlot>
		break
	endif
	Wait \{1
		gameframe
		ignoreslomo}
	repeat
	if ScreenElementExists \{id = loading_screen_container}
		loading_screen_container :SE_SetProps {
			loading_text = <loading_text>
			tip_text = <tip_text>
		}
	endif
endscript

script create_loading_screen_empty \{mode = play_song
		jam_mode = 0}
	printscriptinfo \{'create_loading_screen'}
	mark_unsafe_for_shutdown
	stoprendering
	disable_pause
	if ($is_changing_levels = 1)
		return
	endif
	change \{is_changing_levels = 1}
	if ($guitar_motion_enable_test = 1)
		return
	endif
	if ScreenElementExists \{id = loading_screen_container}
		return
	endif
	if GotParam \{destroy_state}
		change loading_screen_destroy_state = <destroy_state>
	else
		change \{loading_screen_destroy_state = 'none'}
	endif
endscript

script destroy_loading_screen \{force = 0}
	printscriptinfo \{'destroy_loading_screen'}
	if (<force> = 0)
		if NOT ($loading_screen_destroy_state = 'none')
			ui_event_get_top
			if NOT ($loading_screen_destroy_state = <base_name>)
				return
			endif
		endif
	endif
	if ScreenElementExists \{id = loading_screen_container}
		printf \{qs("\LHit")
			channel = movie}
		if NOT ScriptIsRunning \{destroy_loading_screen_spawned}
			loading_screen_container :obj_spawnscript destroy_loading_screen_spawned params = <...>
		endif
	endif
	Hideloadingscreen
	if ($playing_song = 0 || $end_credits = 1)
		change \{is_changing_levels = 0}
	endif
	mark_safe_for_shutdown
endscript

script destroy_loading_screen_spawned \{time = 0.1}
	GetTags
	stoprendering \{reason = loading_screen}
	SE_SetProps \{alpha = 0}
	if GotParam \{TextureSlot}
		if IsMoviePlaying TextureSlot = <TextureSlot>
			KillMovie TextureSlot = <TextureSlot>
		endif
	endif
	startrendering \{reason = loading_screen}
	Die
endscript

script refresh_screen 
	destroy_loading_screen
	begin
	if NOT ScreenElementExists \{id = loading_screen_container}
		break
	endif
	Wait \{1
		gameframe}
	repeat
	create_loading_screen
endscript

script show_page_flip_loading_screen 
	spawnscriptnow show_page_flip_loading_screen_spawned params = <...>
endscript

script show_page_flip_loading_screen_spawned 
	KillAllMovies \{blocking}
	FreeMovieBuffer \{buffer_slot = 0}
	DisplayLoadingScreen \{'boot_copyright_BG_1'
		spin3d_texture = 'load_wheel'
		spin_x = 800
		spin_y = 554
		scale = 0.055
		Speed = -2}
endscript
