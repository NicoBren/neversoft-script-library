
script Skate8_SFX_Backgrounds_New_Area \{immediate = 0}
	Change SFX_Background_Last_Area = <BG_SFX_Area>
	if (<immediate> = 0)
		Wait \{1
			gameframe}
	endif
	Change SFX_Background_Requested_Area = <BG_SFX_Area>
	Check_For_Specific_BGs_In_Struct
	SpawnScriptNow \{Skate8_SFX_Background_Play}
endscript

script Skate8_SFX_Request_Background_Area_Change 
	Change SFX_Background_Requested_Area = <BG_SFX_Area>
endscript
SFX_Background_Last_Area = Default
SFX_Background_Requested_Area = Default
SFX_Background_Requested_Checksum = Default
SFX_Background_Requested_Volume = 60
SFX_Background_Current_Area = Default
SFX_Background_Current_Checksum = Default
SFX_Background_Current_Volume = 100
SFX_Background_Previous_Area = Default
SFX_Background_Previous_Checksum = Default
SFX_Background_FadeIn_Area = Default
SFX_Background_FadeIn_Checksum = Default
SFX_Background_FadeIn_Volume_Start = 1.0
SFX_Background_FadeIn_Volume_Target = 100.0
SFX_Background_FadeIn_Volume_Current = 1.0
SFX_Background_FadeIn_Volume_Add = 3.0
SFX_Background_FadingOut_Area = Default
SFX_Background_FadingOut_Checksum = Default
SFX_Background_FadeOut_Volume_Start = 100.0
SFX_Background_FadeOut_Volume_Target = 0.0
SFX_Background_FadeOut_Volume_Current = 100.0
SFX_Background_FadeOut_Volume_Subtract = 3.0
SFX_Background_CrossFade_Time = 0.75
Background_CrossFade_GameFrames = 90
Backgrounds_Master_Volume = 50.0
PleaseDOCrossfade = 1
SFX_Background_IS_Crossfading = FALSE
CurrentlyPlayingOneShotSoundEvent = DoNothing_OneShot
CurrentOneShotWaitTime = 15

script Check_For_Specific_BGs_In_Struct 
	SetSpawnInstanceLimits \{Max = 1
		management = kill_oldest}
	Local_Var_Struct = ($SFX_Background_Requested_Area)
	if StructureContains structure = $Skate8_SFX_Background_Areas_And_States <Local_Var_Struct>
		Check_For_TOD_BGs_In_Struct <...>
	else
	endif
endscript

script Check_For_TOD_BGs_In_Struct 
	<current_time> = day
	this_current_TOD_name = <current_time>
	if StructureContains structure = ($Skate8_SFX_Background_Areas_And_States.<Local_Var_Struct>) <this_current_TOD_name>
		Change SFX_Background_Requested_Checksum = ($Skate8_SFX_Background_Areas_And_States.<Local_Var_Struct>.<this_current_TOD_name>)
	else
		if StructureContains structure = ($Skate8_SFX_Background_Areas_And_States.<Local_Var_Struct>) Afternoon
			Change SFX_Background_Requested_Checksum = ($Skate8_SFX_Background_Areas_And_States.<Local_Var_Struct>.Afternoon)
		else
			if StructureContains structure = ($Skate8_SFX_Background_Areas_And_States.<Local_Var_Struct>) Default
				Change SFX_Background_Requested_Checksum = ($Skate8_SFX_Background_Areas_And_States.<Local_Var_Struct>.Default)
			else
			endif
		endif
	endif
endscript

script Skate8_SFX_Background_Play 
	SetSpawnInstanceLimits \{Max = 1
		management = kill_oldest}
	Wait \{2
		gameframes}
	if ($SFX_Background_IS_Crossfading = true)
		if NOT issoundplaying \{$SFX_Background_FadeIn_Checksum}
			Change \{SFX_Background_FadeIn_Checksum = None}
		endif
		if ($SFX_Background_Requested_Checksum = ($SFX_Background_FadeIn_Checksum))
		else
			if ($SFX_Background_Requested_Checksum = ($SFX_Background_FadingOut_Checksum))
				if ($BackgroundSFXDebugPrintToScreen = 1)
					formatText TextName = my_text "BG: %n" n = ($SFX_Background_FadingOut_Checksum) DontAssertForChecksums
					create_panel_message {text = <my_text>
						Pos = (30.0, 380.0)
						rgba = [144 32 32 100]
						font_face = text_a1
						time = 180000
						just = [left left]
						id = SFX_BG_PANEL_MESSAGE
					}
				endif
				Skate8_SFX_Reverse_Background_Fading
			else
				Skate8_SFX_Quick_Dip
				if ($BackgroundSFXDebugPrintToScreen = 1)
					formatText TextName = my_text "BG: %n" n = ($SFX_Background_Requested_Checksum) DontAssertForChecksums
					create_panel_message {text = <my_text>
						Pos = (30.0, 380.0)
						rgba = [144 32 32 100]
						font_face = text_a1
						time = 180000
						just = [left left]
						id = SFX_BG_PANEL_MESSAGE
					}
				endif
				SpawnScriptNow \{Skate8_SFX_Change_Background}
			endif
		endif
	else
		if NOT issoundplaying \{$SFX_Background_Current_Checksum}
			Change \{SFX_Background_Current_Checksum = None}
		endif
		if ($SFX_Background_Requested_Checksum = $SFX_Background_Current_Checksum)
		else
			if ($BackgroundSFXDebugPrintToScreen = 1)
				formatText TextName = my_text "BG: %n" n = ($SFX_Background_Requested_Checksum) DontAssertForChecksums
				create_panel_message {text = <my_text>
					Pos = (30.0, 380.0)
					rgba = [144 32 32 100]
					font_face = text_a1
					time = 180000
					just = [left left]
					id = SFX_BG_PANEL_MESSAGE
				}
			endif
			SpawnScriptNow \{Skate8_SFX_Change_Background}
		endif
	endif
endscript

script Skate8_SFX_Change_Current_Area 
endscript

script Skate8_SFX_Change_Current_State 
endscript

script Skate8_SFX_Check_Current_Area 
endscript

script Skate8_SFX_Check_Current_State 
endscript

script Skate8_SFX_Do_NOT_Change_Background 
endscript

script Skate8_SFX_Change_Background 
	SetSpawnInstanceLimits \{Max = 1
		management = kill_oldest}
	Change \{SFX_Background_IS_Crossfading = true}
	Change SFX_Background_FadeIn_Area = ($SFX_Background_Requested_Area)
	Change SFX_Background_FadeIn_Checksum = ($SFX_Background_Requested_Checksum)
	Change SFX_Background_FadingOut_Area = ($SFX_Background_Current_Area)
	Change SFX_Background_FadingOut_Checksum = ($SFX_Background_Current_Checksum)
	Local_Var_Struct_FadeIn_Area = ($SFX_Background_FadeIn_Area)
	Local_Var_Struct_FadeIn_Checksum = ($SFX_Background_FadeIn_Checksum)
	Local_Var_Struct_FadeOut_Area = ($SFX_Background_FadingOut_Area)
	Local_Var_Struct_FadeOut_Checksum = ($SFX_Background_FadingOut_Checksum)
	if NOT (GotParam Overide_Crossfade_Time)
		Change \{SFX_Background_CrossFade_Time = 0.75}
		if StructureContains structure = ($Skate8_SFX_Background_Areas_And_States.<Local_Var_Struct_FadeIn_Area>) Fade_From
			if StructureContains structure = ($Skate8_SFX_Background_Areas_And_States.<Local_Var_Struct_FadeIn_Area>.Fade_From) <Local_Var_Struct_FadeOut_Area>
				Change SFX_Background_CrossFade_Time = ($Skate8_SFX_Background_Areas_And_States.<Local_Var_Struct_FadeIn_Area>.Fade_From.<Local_Var_Struct_FadeOut_Area>)
			endif
		endif
	else
		Change SFX_Background_CrossFade_Time = <Overide_Crossfade_Time>
	endif
	Change \{SFX_Background_FadeIn_Volume_Target = 100}
	if StructureContains structure = ($Skate8_SFX_Background_Areas_And_States.<Local_Var_Struct_FadeIn_Area>) Volume_Params
		if StructureContains structure = ($Skate8_SFX_Background_Areas_And_States.<Local_Var_Struct_FadeIn_Area>.Volume_Params) <Local_Var_Struct_FadeIn_Checksum>
			Change SFX_Background_FadeIn_Volume_Target = ($Skate8_SFX_Background_Areas_And_States.<Local_Var_Struct_FadeIn_Area>.Volume_Params.<Local_Var_Struct_FadeIn_Checksum>)
		endif
	endif
	if NOT ($SFX_Background_CrossFade_Time = 0)
		temp_a = ($SFX_Background_CrossFade_Time * 30)
	else
		stars
		printf \{"SFX BG's WARNING: SFX_Background_CrossFade_Time = ZERO!!!!!!!!!!!!!"}
		stars
		temp_a = 1
	endif
	if NOT (GotParam Overide_FadeIn_Start_Vol)
		Change \{SFX_Background_FadeIn_Volume_Start = 1}
	else
		Change SFX_Background_FadeIn_Volume_Start = <Overide_FadeIn_Start_Vol>
	endif
	if NOT (GotParam Overide_FadeOut_Start_Vol)
		Change SFX_Background_FadeOut_Volume_Start = ($SFX_Background_Current_Volume)
	else
		Change SFX_Background_FadeOut_Volume_Start = <Overide_FadeOut_Start_Vol>
	endif
	Change SFX_Background_FadeIn_Volume_Add = (($SFX_Background_FadeIn_Volume_Target - $SFX_Background_FadeIn_Volume_Start) / <temp_a>)
	Change SFX_Background_FadeOut_Volume_Subtract = ($SFX_Background_FadeOut_Volume_Start / <temp_a>)
	CastToInteger \{temp_a}
	Change Background_CrossFade_GameFrames = <temp_a>
	if ($Background_CrossFade_GameFrames < 1)
		Change \{Background_CrossFade_GameFrames = 1}
	endif
	Change \{SFX_Background_FadeIn_Volume_Current = $SFX_Background_FadeIn_Volume_Start}
	Change \{SFX_Background_FadeOut_Volume_Current = $SFX_Background_FadeOut_Volume_Start}
	testing_a = (($SFX_Background_FadeIn_Volume_Start * ($Backgrounds_Master_Volume / 100.0)) + 1)
	if NOT (GotParam Overide_Yes)
		if ($PleaseDOCrossfade = 1)
			if IsStreamPlaying ($SFX_Background_FadeIn_Checksum)
				StopStream ($SFX_Background_FadeIn_Checksum)
				Wait \{1
					gameframe}
			endif
			PlaySound ($SFX_Background_FadeIn_Checksum) vol = (($SFX_Background_FadeIn_Volume_Start * ($Backgrounds_Master_Volume / 100.0)) + 1) num_loops = -1 Priority = 105 buss = Crowd_Beds pan1x = -0.897089 pan1y = 0.1418498 pan2x = 0.88932973 pan2y = 0.15726662
		endif
	endif
	Wait \{1
		gameframe}
	temp_counter = 1
	begin
	Change SFX_Background_FadeIn_Volume_Current = ($SFX_Background_FadeIn_Volume_Current + $SFX_Background_FadeIn_Volume_Add)
	Change SFX_Background_FadeOut_Volume_Current = ($SFX_Background_FadeOut_Volume_Current - $SFX_Background_FadeOut_Volume_Subtract)
	if ($SFX_Background_FadeIn_Volume_Current > $SFX_Background_FadeIn_Volume_Target)
		Change \{SFX_Background_FadeIn_Volume_Current = $SFX_Background_FadeIn_Volume_Target}
	endif
	if IsStreamPlaying ($SFX_Background_FadeIn_Checksum)
		SetSoundParams ($SFX_Background_FadeIn_Checksum) vol = (($SFX_Background_FadeIn_Volume_Current * ($Backgrounds_Master_Volume / 100.0)) + 1)
	else
		PlaySound ($SFX_Background_FadeIn_Checksum) vol = (($SFX_Background_FadeIn_Volume_Current * ($Backgrounds_Master_Volume / 100.0)) + 1) num_loops = -1 Priority = 105 buss = Crowd_Beds pan1x = -0.897089 pan1y = 0.1418498 pan2x = 0.88932973 pan2y = 0.15726662
	endif
	if ($SFX_Background_FadeOut_Volume_Current < 0)
		Change \{SFX_Background_FadeOut_Volume_Current = 0}
	endif
	if IsStreamPlaying ($SFX_Background_FadingOut_Checksum)
		SetSoundParams ($SFX_Background_FadingOut_Checksum) vol = (($SFX_Background_FadeOut_Volume_Current * ($Backgrounds_Master_Volume / 100.0)) + 1)
	endif
	temp_counter = (<temp_counter> + 1)
	Wait \{1
		gameframe}
	repeat $Background_CrossFade_GameFrames
	StopStream ($SFX_Background_FadingOut_Checksum)
	StopStream ($SFX_Background_FadingOut_Checksum)
	Wait \{1
		gameframe}
	StopStream ($SFX_Background_FadingOut_Checksum)
	Change SFX_Background_Current_Area = ($SFX_Background_FadeIn_Area)
	Change SFX_Background_Current_Checksum = ($SFX_Background_FadeIn_Checksum)
	Change SFX_Background_Current_Volume = ($SFX_Background_FadeIn_Volume_Current)
	Change \{SFX_Background_FadeIn_Checksum = Default}
	Change \{SFX_Background_FadingOut_Checksum = Default}
	Change \{SFX_Background_Requested_Area = Default}
	Change \{SFX_Background_Requested_Checksum = Default}
	Change \{SFX_Background_IS_Crossfading = FALSE}
endscript

script Skate8_SFX_Reverse_Background_Fading 
	KillSpawnedScript \{Name = Skate8_SFX_Change_Background}
	Change SFX_Background_Current_Checksum = ($SFX_Background_FadeIn_Checksum)
	Change SFX_Background_Requested_Checksum = ($SFX_Background_FadingOut_Checksum)
	Change SFX_Background_Requested_Area = ($SFX_Background_FadingOut_Area)
	Change SFX_Background_Current_Area = ($SFX_Background_FadeIn_Area)
	Local_Overide_Calc = ($SFX_Background_CrossFade_Time * ($SFX_Background_FadeIn_Volume_Current / $SFX_Background_FadeIn_Volume_Target))
	SpawnScriptNow Skate8_SFX_Change_Background params = {Overide_Yes = 1 Overide_Crossfade_Time = <Local_Overide_Calc> Overide_FadeOut_Start_Vol = ($SFX_Background_FadeIn_Volume_Current) Overide_FadeIn_Start_Vol = ($SFX_Background_FadeOut_Volume_Current)}
endscript

script Skate8_SFX_Quick_Dip 
	KillSpawnedScript \{Name = Skate8_SFX_Change_Background}
	New_Requested_Area_Not_Playing = ($SFX_Background_Requested_Area)
	New_Requested_Checksum_Not_Playing = ($SFX_Background_Requested_Checksum)
	Change SFX_Background_Requested_Area = ($SFX_Background_FadeIn_Area)
	Change SFX_Background_Requested_Checksum = ($SFX_Background_FadeIn_Checksum)
	Local_Overide_Calc = (0.5 * ($SFX_Background_CrossFade_Time * ($SFX_Background_FadeIn_Volume_Current / $SFX_Background_FadeIn_Volume_Target)))
	SpawnScriptNow Skate8_SFX_Change_Background params = {Overide_Yes = 1 Overide_Crossfade_Time = <Local_Overide_Calc> Overide_FadeIn_Start_Vol = ($SFX_Background_FadeIn_Volume_Current) Overide_FadeOut_Start_Vol = ($SFX_Background_FadeOut_Volume_Current)}
	Wait \{5
		gameframes}
	begin
	if ($SFX_Background_IS_Crossfading = FALSE)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	Change SFX_Background_Requested_Area = <New_Requested_Area_Not_Playing>
	Change SFX_Background_Requested_Checksum = <New_Requested_Checksum_Not_Playing>
	Wait \{1
		gameframe}
	SpawnScriptNow \{Skate8_SFX_Change_Background}
endscript

script One_Shot_SoundEvent \{waitTime = 15
		immediate = 0}
	if GotParam \{SoundEvent}
		RequestedSoundEvent = <SoundEvent>
	else
		RequestedSoundEvent = DoNothing_OneShot
	endif
	LocalCurrentlyPlaying = $CurrentlyPlayingOneShotSoundEvent
	if (<LocalCurrentlyPlaying> = <RequestedSoundEvent>)
		if NOT ($CurrentOneShotWaitTime = <waitTime>)
			DoActualChangeingOfOneShots <...>
		endif
	else
		DoActualChangeingOfOneShots <...>
	endif
endscript

script DoActualChangeingOfOneShots \{immediate = 0}
	if IsSoundEventPlaying <LocalCurrentlyPlaying>
		WaitForOneShotSoundEventToEnd <...>
	endif
	KillSpawnedScript \{Name = SpawnedOneShotBeginRepeatLoop}
	SpawnScriptNow SpawnedOneShotBeginRepeatLoop params = {myoneshot = <RequestedSoundEvent> waitTime = <waitTime>}
	Change CurrentlyPlayingOneShotSoundEvent = <RequestedSoundEvent>
	Change CurrentOneShotWaitTime = <waitTime>
endscript

script SpawnedOneShotBeginRepeatLoop \{waitTime = 15}
	if NOT (<myoneshot> = DoNothing_OneShot)
		Wait (RandomRange (0.3, 0.5) * <waitTime>) Seconds
		begin
		SoundEvent event = <myoneshot>
		begin
		if IsSoundEventPlaying <myoneshot>
			Wait \{1
				gameframe}
		else
			break
		endif
		repeat
		Wait (RandomRange (0.9, 1.6) * <waitTime>) Seconds
		repeat
	else
	endif
endscript

script WaitForOneShotSoundEventToEnd \{immediate = 0}
	if (<immediate> = 1)
		printf \{"WaitForOneShotSoundEventToEnd IMMEDIATE"}
		if (IsSoundEventPlaying <LocalCurrentlyPlaying>)
			StopSoundEvent <LocalCurrentlyPlaying>
		endif
		return
	endif
	begin
	if (IsSoundEventPlaying <LocalCurrentlyPlaying>)
	else
		break
	endif
	Wait \{1
		gameframe}
	repeat
endscript
