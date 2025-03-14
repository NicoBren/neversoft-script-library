improv2_solo_part = 1

script improv2mode_startup 
	player_status = player1_status
	Change \{game_mode = improv}
	Change \{Clean_Note_Multiplier = 1.0}
	Change \{improv2_solo_part = 1}
	L2_Counter = 0
	L1_Counter = 0
	R2_Counter = 0
	R1_Counter = 0
	X_Counter = 0
	Solo_Score = 0
	if NOT ScreenElementExists \{id = solo_text}
		CreateScreenElement \{Type = TextElement
			parent = hud_window
			id = solo_text
			font = text_a1
			Pos = (48.0, 530.0)
			just = [
				left
				top
			]
			Scale = 1.0
			rgba = [
				210
				210
				210
				250
			]
			text = 'Solo Score: 0'
			z_priority = 100.0}
	endif
	formatText TextName = run 'Solo Score: %b' b = <Solo_Score>
	SetScreenElementProps id = solo_text text = <run>
	begin
	Block \{anytypes = [
			{
				Type = hit_notesp1
			}
		]}
	GetHeldPattern controller = ($<player_status>.controller) player_status = <player_status>
	if (<hold_pattern> && 65536)
		if ($improv2_solo_part = 1)
			SoundEvent \{event = Improv_Lead_Bend1}
		else
			SoundEvent \{event = Improv_LeadB_2beat1}
		endif
		L2_Counter = (<L2_Counter> + 1)
		if (<L2_Counter> > 10)
			Solo_Score = (<Solo_Score> + 1 * $Clean_Note_Multiplier)
		else
			if (<L2_Counter> > 5)
				Solo_Score = (<Solo_Score> + 5 * $Clean_Note_Multiplier)
			else
				Solo_Score = (<Solo_Score> + 10 * $Clean_Note_Multiplier)
			endif
		endif
	endif
	if (<hold_pattern> && 4096)
		if ($improv2_solo_part = 1)
			SoundEvent \{event = Lead_Sliding_Lick}
		else
			SoundEvent \{event = Improv_LeadB_2beat2}
		endif
		L1_Counter = (<L1_Counter> + 1)

		if (<L1_Counter> > 10)
			Solo_Score = (<Solo_Score> + 1 * $Clean_Note_Multiplier)
		else
			if (<L1_Counter> > 5)
				Solo_Score = (<Solo_Score> + 5 * $Clean_Note_Multiplier)
			else
				Solo_Score = (<Solo_Score> + 10 * $Clean_Note_Multiplier)
			endif
		endif
	endif
	if (<hold_pattern> && 256)
		StopSoundEvent \{Improv_Lead_Hold3}
		KillSpawnedScript Name = improv2_check_held_r1 <...>
		if ($improv2_solo_part = 1)
			SoundEvent \{event = Lead_Real_Short5}
			SpawnScriptNow improv2_check_held_r1 params = {<...>}
		else
			SoundEvent \{event = Improv_LeadB_1beat}
		endif
		R1_Counter = (<R1_Counter> + 1)

		if (<R1_Counter> > 10)
			Solo_Score = (<Solo_Score> + 1 * $Clean_Note_Multiplier)
		else
			if (<R1_Counter> > 5)
				Solo_Score = (<Solo_Score> + 5 * $Clean_Note_Multiplier)
			else
				Solo_Score = (<Solo_Score> + 10 * $Clean_Note_Multiplier)
			endif
		endif
	endif
	if (<hold_pattern> && 16)
		StopSoundEvent \{Improv_Lead_Hold1}
		KillSpawnedScript Name = improv2_check_held_r2 <...>
		if ($improv2_solo_part = 1)
			SoundEvent \{event = Lead_Real_Short4}
			SpawnScriptNow improv2_check_held_r2 params = {<...>}
		else
			SoundEvent \{event = Improv_LeadB_8th2}
		endif
		R2_Counter = (<R2_Counter> + 1)

		if (<R2_Counter> > 10)
			Solo_Score = (<Solo_Score> + 1 * $Clean_Note_Multiplier)
		else
			if (<R2_Counter> > 5)
				Solo_Score = (<Solo_Score> + 5 * $Clean_Note_Multiplier)
			else
				Solo_Score = (<Solo_Score> + 10 * $Clean_Note_Multiplier)
			endif
		endif
	endif
	if (<hold_pattern> && 1)
		StopSoundEvent \{Improv_Lead_Hold2}
		KillSpawnedScript Name = improv2_check_held_X <...>
		if ($improv2_solo_part = 1)
			SoundEvent \{event = Lead_Real_Short3}
			SpawnScriptNow improv2_check_held_X params = {<...>}
		else
			SoundEvent \{event = Improv_LeadB_8th1}
		endif
		X_Counter = (<X_Counter> + 1)

		if (<X_Counter> > 10)
			Solo_Score = (<Solo_Score> + 1 * $Clean_Note_Multiplier)
		else
			if (<X_Counter> > 5)
				Solo_Score = (<Solo_Score> + 5 * $Clean_Note_Multiplier)
			else
				Solo_Score = (<Solo_Score> + 10 * $Clean_Note_Multiplier)
			endif
		endif
	endif
	formatText TextName = run 'Solo Score: %b' b = <Solo_Score>
	SetScreenElementProps id = solo_text text = <run>
	Wait \{1
		Frame}
	repeat
endscript

script improv2_test_script 

endscript

script improv2_change_licks 

	Change \{improv2_solo_part = 2}
endscript

script improv2_check_held_r1 

	Wait \{20
		frames}
	GetHeldPattern controller = ($<player_status>.controller) player_status = <player_status>
	if (<hold_pattern> && 256)
		StopSoundEvent \{Lead_Real_Short5}
		SoundEvent \{event = Improv_Lead_Hold3}
	endif
endscript

script improv2_check_held_r2 

	Wait \{20
		frames}
	GetHeldPattern controller = ($<player_status>.controller) player_status = <player_status>
	if (<hold_pattern> && 16)
		StopSoundEvent \{Lead_Real_Short4}
		SoundEvent \{event = Improv_Lead_Hold1}
	endif
endscript

script improv2_check_held_X 

	Wait \{20
		frames}
	GetHeldPattern controller = ($<player_status>.controller) player_status = <player_status>
	if (<hold_pattern> && 1)
		StopSoundEvent \{Lead_Real_Short3}
		SoundEvent \{event = Improv_Lead_Hold2}
	endif
endscript
