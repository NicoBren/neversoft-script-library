new_band_name = [
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
	qs("\L")
]
new_band_flashing_char = qs("A")
new_band_flashing_index = 0
new_band_flashing_index_prev = 0
new_band_index = 0
max_band_characters = 19
ebn_transitioning_back = 0
default_band_characters = [
	qs("\LA")
	qs("\La")
	qs("\LB")
	qs("\Lb")
	qs("\LC")
	qs("\Lc")
	qs("\LD")
	qs("\Ld")
	qs("\LE")
	qs("\Le")
	qs("\LF")
	qs("\Lf")
	qs("\LG")
	qs("\Lg")
	qs("\LH")
	qs("\Lh")
	qs("\LI")
	qs("\Li")
	qs("\LJ")
	qs("\Lj")
	qs("\LK")
	qs("\Lk")
	qs("\LL")
	qs("\Ll")
	qs("\LM")
	qs("\Lm")
	qs("\LN")
	qs("\Ln")
	qs("\LO")
	qs("\Lo")
	qs("\LP")
	qs("\Lp")
	qs("\LQ")
	qs("\Lq")
	qs("\LR")
	qs("\Lr")
	qs("\LS")
	qs("\Ls")
	qs("\LT")
	qs("\Lt")
	qs("\LU")
	qs("\Lu")
	qs("\LV")
	qs("\Lv")
	qs("\LW")
	qs("\Lw")
	qs("\LX")
	qs("\Lx")
	qs("\LY")
	qs("\Ly")
	qs("\LZ")
	qs("\Lz")
	qs("\L1")
	qs("\L2")
	qs("\L3")
	qs("\L4")
	qs("\L5")
	qs("\L6")
	qs("\L7")
	qs("\L8")
	qs("\L9")
	qs("\L0")
	qs("\L!")
	qs("\L@")
	qs("\L#")
	qs("\L$")
	qs("\L^")
	qs("\L&")
	qs("\L*")
	qs("\L(")
	qs("\L)")
	qs("\L_")
	qs("\L+")
	qs("\L-")
	qs("\L=")
	qs("\L/")
	qs("\L ")
]
band_name_position = (725.0, 345.0)
default_band_indexes = [
	0
	0
	0
	0
	0
	0
	0
	0
	0
	0
	0
	0
	0
	0
	0
	0
	0
	0
	0
	0
]
enter_band_name_big_vals = {
	text_scale = 2.0
	text_pos = (250.0, 150.0)
	background_pos = (640.0, 360.0)
	background_dims = (1280.0, 720.0)
	header_pos = (640.0, 250.0)
	header_scale = 0.8
	tour_pos = (625.0, 410.0)
	tour_scale = 1.0
	address_pos = (625.0, 445.0)
	address_scale = 1.0
	date_pos = (640.0, 500.0)
	date_scale = 0.85
	sponsor_pos = (925.0, 402.0)
	sponsor_scale = 0.7
	sponsor_dims = (128.0, 128.0)
	sponsor_offset = (0.0, 20.0)
	right_side_img_pos = (1160.0, 330.0)
	right_side_img_dims = (196.0, 408.0)
}
enter_band_name_small_vals = {
	text_scale = 1.1
	text_pos = (250.0, 150.0)
	background_pos = (540.0, 360.0)
	background_dims = (1600.0, 900.0)
	header_pos = (652.0, 85.0)
	header_scale = 1.3
	tour_pos = (500.0, 425.0)
	tour_scale = 1.375
	address_pos = (500.0, 480.0)
	address_scale = 1.375
	date_pos = (500.0, 555.0)
	date_scale = 1.222
	sponsor_pos = (900.0, 410.0)
	sponsor_scale = 1.0
	sponsor_dims = (164.0, 164.0)
	sponsor_offset = (0.0, 26.0)
	right_side_img_pos = (1190.0, 330.0)
	right_side_img_dims = (245.0, 510.0)
}
us_month_names = [
	qs("January")
	qs("February")
	qs("March")
	qs("April")
	qs("May")
	qs("June")
	qs("July")
	qs("August")
	qs("September")
	qs("October")
	qs("November")
	qs("December")
]

script enter_band_name_reset_user_control_helpers 
	add_user_control_helper \{button = green
		text = qs("NEXT")}
	add_user_control_helper \{button = red
		text = qs("BACK")}
	add_user_control_helper \{button = start
		text = qs("ACCEPT")}
endscript

script enter_band_name_reset_variables 
	change \{new_band_name = [
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
			qs("\L")
		]}
	change \{new_band_index = 0}
	change \{default_band_indexes = [
			0
			0
			0
			0
			0
			0
			0
			0
			0
			0
			0
			0
			0
			0
			0
			0
			0
			0
			0
			0
		]}
	change \{new_band_flashing_char = qs("\LA")}
	change \{new_band_flashing_index = 0}
endscript
