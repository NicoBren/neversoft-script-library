showPakMap = 0
showPakMapExpand = 0
Download_Zones = {
}
Common_GH_Zone_Params = {
	xenon_budgets = {
		extra_size = 1000000
		texture_size = 30000000
		scene_size = 10000000
		col_size = 4304000
		anim_size = 0
		model_size = 5000000
		instance_count = 100
		object_count = 200
		sfx_size = 1000000
		gfx_size = 1000000
		scripts_size = 256000
	}
	ps3_budgets = {
		extra_size = 30000000
		texture_size = 30000000
		scene_size = 10000000
		col_size = 4304000
		anim_size = 0
		model_size = 5000000
		instance_count = 100
		object_count = 200
		sfx_size = 1000000
		gfx_size = 1000000
		scripts_size = 256000
	}
	zones = [
	]
}
GHZones = {
	z_soundcheck = {
		name = 'Z_Soundcheck'
		path = 'Z_Soundcheck/'
		$Common_GH_Zone_Params
		zones = [
			z_frontend
		]
	}
	z_frontend = {
		name = 'Z_Frontend'
		path = 'Z_Frontend/'
		$Common_GH_Zone_Params
		zones = [
			z_soundcheck
		]
	}
	z_soundcheck_cas = {
		name = 'Z_Soundcheck'
		pakname_checksum = z_soundcheck
		links_only
		$Common_GH_Zone_Params
		zones = [
			z_soundcheck
		]
	}
	z_soundcheck_practice = {
		name = 'Z_Soundcheck'
		pakname_checksum = z_soundcheck
		links_only
		$Common_GH_Zone_Params
		zones = [
			z_soundcheck
			Z_In_Game
		]
	}
	z_credits = {
		name = 'Z_Credits'
		path = 'Z_Credits/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_template = {
		name = 'Z_Template'
		path = 'Z_Template/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_bayou = {
		name = 'Z_Bayou'
		path = 'Z_Bayou/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_castle = {
		name = 'Z_Castle'
		path = 'Z_Castle/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_fairgrounds = {
		name = 'Z_Fairgrounds'
		path = 'Z_Fairgrounds/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_frathouse = {
		name = 'Z_Frathouse'
		path = 'Z_Frathouse/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_goth = {
		name = 'Z_Goth'
		path = 'Z_Goth/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_newyork = {
		name = 'Z_NewYork'
		path = 'Z_NewYork/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_recordstore = {
		name = 'Z_Recordstore'
		path = 'Z_Recordstore/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_metalfest = {
		name = 'Z_Metalfest'
		path = 'Z_Metalfest/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_ballpark = {
		name = 'Z_Ballpark'
		path = 'Z_Ballpark/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_military = {
		name = 'Z_Military'
		path = 'Z_Military/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_hotel = {
		name = 'Z_Hotel'
		path = 'Z_Hotel/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_cathedral = {
		name = 'Z_Cathedral'
		path = 'Z_Cathedral/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_harbor = {
		name = 'Z_Harbor'
		path = 'Z_Harbor/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_test01 = {
		name = 'Z_Test01'
		path = 'Z_Test01/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_hob = {
		name = 'Z_HoB'
		path = 'Z_HoB/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_tool = {
		name = 'Z_Tool'
		path = 'Z_Tool/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_Whitebox = {
		name = 'Z_Whitebox'
		path = 'Z_Whitebox/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_studio = {
		name = 'Z_Studio'
		path = 'Z_Studio/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_studio2 = {
		name = 'Z_Studio2'
		path = 'Z_Studio2/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_board_room = {
		name = 'Z_Board_Room'
		path = 'Z_Board_Room/'
		$Common_GH_Zone_Params
		zones = [
		]
	}
	Z_Studio_album_art = {
		name = 'Z_Studio'
		pakname_checksum = z_studio
		links_only
		$Common_GH_Zone_Params
		zones = [
			z_studio
		]
	}
	z_scifi = {
		name = 'Z_Scifi'
		path = 'Z_Scifi/'
		$Common_GH_Zone_Params
		zones = [
			Z_In_Game
		]
	}
	z_viewer = {
		name = 'Z_Viewer'
		path = 'Z_Viewer/'
		extra_size = 19000
		anim_size = 228167
		model_size = 286064
		scene_size = 8656217
		zones = [
			Z_In_Game
		]
		PAK_OPTIONAL
	}
	$Download_Zones
	Z_In_Game = {
		name = 'Z_In_Game'
		path = 'Z_In_Game/'
		$Common_GH_Zone_Params
	}
}
