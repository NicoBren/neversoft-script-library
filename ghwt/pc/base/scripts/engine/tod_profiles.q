Default_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.0
			nearblurend = 2.0
			farblurbegin = 10.0
			farblurend = 20.0
		}
		{
			name = Bloom__simplified_
			scefName = Bloom__simplified_
			type = bloom2
			on = 1
			materialfilter = 1
			subtract = [
				0.2
				0.2
				0.2
				1.0
			]
			colormodulate = [
				5.0
				5.0
				5.0
				15.0
			]
			saturation = 1.0
			thickness = 40.0
			equation = eq2
		}
		{
			name = Godray
			scefName = Godray
			type = Godray
			on = 0
			colormodulate = [
				1.0
				0.96078396
				0.870588
				1.0
			]
			depthmodulate = 0.5
			steps = 100.0
			range = 1.0
			fadeout_begin = 90.0
			fadeout_end = 120.0
			skycolor = [
				0.078431
				0.062745
				0.05098
				1.0
			]
			lightposition = [
				-23.0
				5.2
				-36.0
				1.0
			]
			cliplightposition = 0
			lightsource = object
		}
		{
			name = Noise_Lite
			scefName = Noise_Lite
			type = noise2
			on = 1
			intensity = 0.08
			color = [
				0.5
				0.5
				0.5
				0.5
			]
			uv = [
				8.0
				6.0
				0.0
				0.0
			]
		}
		{
			name = UberScreenFX
			scefName = UberScreenFX
			type = UberScreenFX
		}
	]
}
DOF_Off_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.0
			nearblurend = 2.0
			farblurbegin = 10.0
			farblurend = 20.0
		}
	]
}
DOF_CloseUp01_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 8.0
			farblurend = 12.0
		}
	]
}
DOF_CloseUp02_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 1.0
			farblurend = 8.0
		}
	]
}
DOF_CloseUp03_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 1.026
			farblurbegin = 2.3799999
			farblurend = 1.1
		}
	]
}
DOF_CloseUp04_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 7.0
			farblurbegin = 7.0
			farblurend = 8.0
		}
	]
}
DOF_Medium01_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.5
			nearblurend = 0.0
			farblurbegin = 20.0
			farblurend = 30.0
		}
	]
}
DOF_Medium02_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.75
			nearblurend = 0.0
			farblurbegin = 15.0
			farblurend = 30.0
		}
	]
}
DOF_Long01_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.8
			nearblurend = 20.0
			farblurbegin = 20.0
			farblurend = 50.0
		}
	]
}
DOF_Stage01_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.8
			nearblurend = 5.0
			farblurbegin = 5.0
			farblurend = 20.0
		}
	]
}
DOF_UIblur_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.9
			nearblurend = 0.0
			farblurbegin = 0.0
			farblurend = 4.0
		}
	]
}
DOF_CAR_ACCL_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 0.6
			farblurend = 0.81
		}
	]
}
DOF_CAR_Main_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 1.5
			farblurend = 4.5
		}
	]
}
DOF_CAR_SelChar_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 2.5
			farblurend = 5.5
		}
	]
}
DOF_CAR_SelGender_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 1.0
			farblurend = 5.13
		}
		{
			name = Godray
			scefName = Godray
			type = Godray
			on = 1
			colormodulate = [
				1.0
				1.0
				1.0
				3.0
			]
			depthmodulate = 0.0
			steps = 33.690998
			range = 1.0
			fadeout_begin = 90.0
			fadeout_end = 120.0
			skycolor = [
				0.0
				0.0
				0.5
				0.0
			]
			lightposition = [
				-23.0
				5.0
				-36.0
				1.0
			]
			cliplightposition = 0
			lightsource = object
		}
	]
}
DOF_CAR_SelectTorso_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 1.9
			farblurend = 2.5
		}
	]
}
DOF_CAR_Sel_Instr_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.75
			nearblurend = 0.0
			farblurbegin = 0.0
			farblurend = 14.29
		}
	]
}
DOF_CAR_Sel_Glasses_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 2.0
			farblurend = 2.2
		}
	]
}
DOF_CAR_Sel_MicStand_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 3.0
			farblurend = 4.0
		}
	]
}
DOF_CAR_Sel_Microphone_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 0.55
			farblurend = 0.8
		}
	]
}
DOF_CAR_Sel_Guitar_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.82
			nearblurend = 0.0
			farblurbegin = 1.7
			farblurend = 3.0
		}
	]
}
DOF_CAR_Sel_Guitar_Hardware_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.9
			nearblurend = 0.0
			farblurbegin = 1.0
			farblurend = 1.1
		}
	]
}
DOF_CAR_Sel_Drums_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.5
			nearblurend = 0.0
			farblurbegin = 3.0
			farblurend = 4.0
		}
	]
}
DOF_CAR_sel_drumsticks_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 1.0
			farblurend = 3.0
		}
	]
}
DOF_CAR_Sel_Tat_R_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 1.2
			farblurend = 1.4
		}
	]
}
DOF_CAR_Sel_Tat_L_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 1.3
			farblurend = 1.4
		}
	]
}
DOF_Band_Select_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 3.0
			farblurend = 13.0
		}
	]
}
GigRoom_Section01_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.7985
			nearblurend = 0.0
			farblurbegin = 3.295
			farblurend = 3.6599998
		}
		{
			name = Noise_Lite
			scefName = Noise_Lite
			type = noise2
			on = 1
			intensity = 0.08
			color = [
				0.5
				0.5
				0.5
				0.5
			]
			uv = [
				8.0
				6.0
				0.0
				0.0
			]
		}
		{
			name = UberScreenFX
			scefName = UberScreenFX
			type = UberScreenFX
		}
	]
}
GigRoom_Section02_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.4945
			nearblurend = 5.0540004
			farblurbegin = 3.48
			farblurend = 5.13
		}
		{
			name = Noise_Lite
			scefName = Noise_Lite
			type = noise2
			on = 1
			intensity = 0.08
			color = [
				0.5
				0.5
				0.5
				0.5
			]
			uv = [
				8.0
				6.0
				0.0
				0.0
			]
		}
		{
			name = UberScreenFX
			scefName = UberScreenFX
			type = UberScreenFX
		}
	]
}
GigRoom_Section03_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.6703
			nearblurend = 0.0
			farblurbegin = 2.015
			farblurend = 3.6599998
		}
		{
			name = Vignette
			scefName = Vignette
			type = Vignette
			on = 1
			inner_radius = 0.674
			outer_radius = 1.3188
			alpha = 0.5128
		}
		{
			name = Noise_Lite
			scefName = Noise_Lite
			type = noise2
			on = 1
			intensity = 0.08
			color = [
				0.5
				0.5
				0.5
				0.5
			]
			uv = [
				8.0
				6.0
				0.0
				0.0
			]
		}
		{
			name = UberScreenFX
			scefName = UberScreenFX
			type = UberScreenFX
		}
	]
}
GigRoom_Section04_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.5018
			nearblurend = 8.2059965
			farblurbegin = 3.115
			farblurend = 4.7599998
		}
		{
			name = Noise_Lite
			scefName = Noise_Lite
			type = noise2
			on = 1
			intensity = 0.1
			color = [
				0.5
				0.5
				0.5
				0.5
			]
			uv = [
				8.0
				6.0
				0.0
				0.0
			]
		}
		{
			name = UberScreenFX
			scefName = UberScreenFX
			type = UberScreenFX
		}
	]
}
GigRoom_Section05_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.63740003
			nearblurend = 4.908
			farblurbegin = 2.93
			farblurend = 5.4900002
		}
		{
			name = Noise_Lite
			scefName = Noise_Lite
			type = noise2
			on = 1
			intensity = 0.08
			color = [
				0.5
				0.5
				0.5
				0.5
			]
			uv = [
				8.0
				6.0
				0.0
				0.0
			]
		}
		{
			name = UberScreenFX
			scefName = UberScreenFX
			type = UberScreenFX
		}
	]
}
DOF_CAR_Photo_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 1.0
			nearblurend = 0.0
			farblurbegin = 1.5
			farblurend = 4.5
		}
		{
			name = zoom_blur
			scefName = zoom_blur
			type = blur
			on = 1
			amount = 0.75
			focus_center_inner = 0.5
			focus_center_outer = 0.5
			scale_inner = 0.5
			scale_outer = 0.5
			angle_inner = 0.0
			angle_outer = 0.0
			inner_color = [
				0.0
				0.0
				0.0
				0.0
			]
			outer_color = [
				0.0
				0.0
				0.0
				0.0
			]
		}
		{
			name = Brightness___Saturation
			scefName = Brightness___Saturation
			type = bright_sat
			on = 1
			brightness = 0.85
			contrast = 0.9
			hue = 1.0
			saturation = 0.85
			red_mix_r = 1.0
			red_mix_g = 0.0
			red_mix_b = 0.0
			green_mix_r = 0.0
			green_mix_g = 1.0
			green_mix_b = 0.0
			blue_mix_r = 0.0
			blue_mix_g = 0.0
			blue_mix_b = 1.0
		}
		{
			name = Noise_Lite
			scefName = Noise_Lite
			type = noise2
			on = 1
			intensity = 0.08
			color = [
				0.5
				0.5
				0.5
				0.5
			]
			uv = [
				8.0
				6.0
				0.0
				0.0
			]
		}
	]
}
Credits_MinDOF_tod_manager = {
	screen_fx = [
		{
			name = Depth_of_Field__simplified_
			scefName = Depth_of_Field__simplified_
			type = dof3
			on = 1
			strength = 0.69229996
			nearblurend = 0.0
			farblurbegin = 50.0
			farblurend = 100.0
		}
	]
}
