
script ShatterFromSkater \{vel_scale = 0.5
		gravity = (0.0, -6.3500004, 0.0)
		area = 1.2900001
		Blend_Mode = blend
		variance = 0.0
		spread = 1.0
		life = 4.0
		bounce_floor = -254.0
		bounce_amp = 0.254
		shininess = 0
		radius = 0.0}
	Obj_GetID
	<objID> :Obj_GetVelocity
	<Force> = (<vel> * <vel_scale>)
	<objID> :Obj_GetPosition
	if GotParam \{radial_shatter}

		<origin> = <Pos>
	endif
	Shatter <...>
endscript
