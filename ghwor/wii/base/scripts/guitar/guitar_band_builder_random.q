
script band_builder_get_used_parts_in_appearance 
endscript

script cas_get_random_character 
	RequireParams \{[
			savegame
			part
			categories
		]
		all}
	characterprofilegetlist savegame = <savegame> categories = <categories>
	if NOT GotParam \{band_members_array}
		if (<savegame> >= 0)
			get_band_members_as_array savegame = <savegame>
		else
			band_members_array = []
		endif
	endif
	AddArrayElement array = <band_members_array> element = avatar
	band_members_array = <array>
	GetArraySize <band_members_array>
	if (<array_Size> > 0)
		band_members_size = <array_Size>
		i = 0
		begin
		if ArrayContains array = <profile_list> contains = (<band_members_array> [<i>])
			GetArraySize <profile_list>
			j = 0
			begin
			if ((<profile_list> [<j>]) = (<band_members_array> [<i>]))
				RemoveArrayElement array = <profile_list> index = <j>
				profile_list = <array>
				break
			endif
			j = (<j> + 1)
			repeat <array_Size>
		endif
		i = (<i> + 1)
		repeat <band_members_size>
	endif
	if demobuild
		GetArraySize <profile_list>
		<i> = 0
		begin
		if NOT ArrayContains array = ($g_demo_cas_profiles) contains = (<profile_list> [<i>])
			RemoveArrayElement array = <array> element = (<profile_list> [<i>])
		endif
		<i> = (<i> + 1)
		repeat <array_Size>
		<profile_list> = <array>
	endif
	begin
	GetArraySize <profile_list>
	if NOT (<array_Size> > 0)
		break
	endif
	GetRandomValue Name = index integer a = 0 b = (<array_Size> - 1)
	character_id = (<profile_list> [<index>])
	RemoveArrayElement array = <profile_list> index = <index>
	profile_list = <array>
	characterprofilegetstruct savegame = <savegame> Name = <character_id>
	if NOT StructureContains structure = <profile_struct> no_random_pick
		if display_character_logic savegame = <savegame> profile_struct = <profile_struct> part = <part>
			if GotParam \{female}
				get_is_female_from_appearance appearance = (<profile_struct>.appearance)
				if (<is_female> = 1)
					return true character_id = <character_id>
				endif
			elseif GotParam \{male}
				get_is_female_from_appearance appearance = (<profile_struct>.appearance)
				if (<is_female> = 0)
					return true character_id = <character_id>
				endif
			else
				return true character_id = <character_id>
			endif
		endif
	endif
	repeat
	return FALSE character_id = ($failsafe_car_profile)
endscript

script cas_get_random_ghrocker 
	RequireParams \{[
			savegame
		]
		all}
	cas_get_random_character savegame = <savegame> part = guitar categories = [ghrockers]
	return character_id = <character_id>
endscript
