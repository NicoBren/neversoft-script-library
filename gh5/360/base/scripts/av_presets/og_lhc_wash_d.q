og_lhc_wash_d = [
	{
		Type = blendprev
		offset = (0.0, 0.0)
		Scale = (0.98999995, 0.98999995)
		Color = [
			242
			242
			242
			255
		]
		angle = 0.0174533
		angularvel = 0
		BlendMode = blend
		controls = [
			{
				Type = beaton
				response = bluemodulation
				scalemod = -0.1
				fade = 0.25
			}
			{
				Type = beaton
				response = greenmodulation
				scalemod = -0.05
				fade = 0.25
			}
		]
	}
	{
		Type = circle
		Pos = (0.5, 0.5, 0.0)
		radius = 0.01
		Color = [
			255
			233
			174
			255
		]
		BlendMode = brighten
		thickness = 1.0
		angle = 0
		angularvel = 0
		controls = [
			{
				Type = constant
				response = anglemod
				scalemod = 0.25
				responsefunc = sintime
				timerate = 1.0472
			}
			{
				Type = constant
				response = radiusscale
				scalemod = 0.2
				responsefunc = sintime
				timerate = 0.69813204
			}
			{
				Type = History
				historytype = frequency
				response = deform
				scalemod = 500.0
				spectrumband = 10
			}
		]
	}
	{
		Type = nstar2
		Pos = (0.5, 0.5, 0.0)
		npoints = 8
		radius = 0.05
		radius2 = 0.5
		Color = [
			172
			255
			253
			255
		]
		BlendMode = brighten
		thickness = 1.0
		angle = 0
		angularvel = 0.872665
		controls = [
			{
				Type = beaton
				response = radiusscale
				scalemod = -0.1
				fade = 1.0
			}
			{
				Type = beaton
				response = radius2scale
				scalemod = 0.5
				fade = 1.0
			}
		]
	}
	{
		Type = nstar2
		Pos = (0.5, 0.5, 0.0)
		npoints = 9
		radius = 0.1
		radius2 = 0.5
		Color = [
			172
			255
			253
			255
		]
		BlendMode = brighten
		thickness = 1.0
		angle = 0
		angularvel = -0.872665
		controls = [
			{
				Type = beaton
				response = radiusscale
				scalemod = -0.1
				fade = 1.0
			}
			{
				Type = beaton
				response = radius2scale
				scalemod = 0.5
				fade = 1.0
			}
		]
	}
	{
		Type = circle
		Pos = (0.5, 0.5, 0.0)
		radius = 0.01
		Color = [
			255
			233
			174
			255
		]
		BlendMode = brighten
		thickness = 1.0
		angle = 0
		angularvel = 0
		controls = [
			{
				Type = History
				historytype = frequency
				response = deform
				scalemod = 500.0
				spectrumband = 10
			}
			{
				Type = constant
				response = radiusscale
				scalemod = 0.2
				responsefunc = sintime
				timeoffset = 1.5708001
				timerate = 0.69813204
			}
			{
				Type = constant
				response = anglemod
				scalemod = 0.25
				responsefunc = sintime
				timerate = 1.0472
			}
		]
	}
	{
		Type = nstar2
		Pos = (0.5, 0.5, 0.0)
		npoints = 9
		radius = 0.01
		radius2 = 0.5
		Color = [
			27
			40
			40
			255
		]
		BlendMode = add
		thickness = 1.0
		angle = 0
		angularvel = 0.17453298
		controls = [
			{
				Type = beaton
				response = radius2scale
				scalemod = 0.5
				fade = 1.0
			}
		]
	}
]
