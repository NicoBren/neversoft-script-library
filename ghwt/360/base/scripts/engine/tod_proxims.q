SE_Brightness = 5
currentTODSettings = Default_tod_manager

script TOD_Proxim_Create_LightFX 
	ScreenFX_ClearFXInstances \{viewport = 0}
	if InSplitScreenGame
		ScreenFX_ClearFXInstances \{viewport = 0}
	endif
	TOD_Proxim_Update_LightFX \{viewport = bg_viewport
		time = 0}
endscript

script TOD_Proxim_Update_LightFX 
	TOD_Proxim_Update_LightFX_Viewport viewport = 0 <...>
	if InSplitScreenGame
		TOD_Proxim_Update_LightFX_Viewport viewport = 0 <...>
	endif
endscript

script toggle_default_sceenfx 
	TOD_Proxim_Update_LightFX_Viewport
	toggle_screenfx_instances
endscript

script TOD_Proxim_Update_LightFX_Viewport \{fxParam = $Default_tod_manager
		viewport = 0
		time = 1}
	printf \{qs("\LRestore Fullscreen To Default")}
	ScreenFX_ClearFXInstances viewport = <viewport>
	if StructureContains \{Structure = fxParam
			screen_fx}
		begin
		if GetNextArrayElement (<fxParam>.screen_fx)
			ScreenFX_AddFXInstance {
				viewport = <viewport>
				<element>
			}
		else
			break
		endif
		repeat
	endif
	GetPakManCurrentName \{map = zones}
	if GotParam \{pakname}
		FormatText checksumname = zone_screenfx '%s_SetupScreenFX' s = <pakname>
		if ScriptExists <zone_screenfx>
			printf \{qs("\LCalling zone_SetupScreenFX")}
			spawnscriptnow <zone_screenfx>
		endif
	endif
endscript

script TOD_Proxim_Reapply_LightFX 
	TOD_Proxim_Update_LightFX \{fxParam = $currentTODSettings
		time = 0.0}
endscript
