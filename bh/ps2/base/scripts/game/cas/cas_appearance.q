
script getcurrentcasobject 
	if cas_player_has_character_object Player = ($cas_current_player)
		return true cas_object = <character_object>
	endif
	return \{FALSE}
endscript

script getcasappearance 
	return true appearance = ($cas_current_appearance)
endscript

script getcasappearancepart 
	resolvebodyspecificpartinappearance part = <part>
	if StructureContains structure = ($cas_current_appearance) <part>
		app_struct = (($cas_current_appearance).<part>)
		if StructureContains structure = <app_struct> desc_id
			return true {<app_struct>}
		endif
	endif
	return \{FALSE}
endscript

script getcasappearancepartinstance 

	resolvebodyspecificpartinappearance part = <part>
	if StructureContains structure = ($cas_current_appearance) <part>
		app_struct = (($cas_current_appearance).<part>)
		if StructureContains structure = <app_struct> desc_id
			return true part_instance = (<app_struct>)
		endif
	endif
	return \{FALSE}
endscript

script setcasappearancepartinstance 

	resolvebodyspecificpartinappearance part = <part>
	if StructureContains structure = (<part_instance>) desc_id
		if ps2_getactualcasoptionstruct_as_struct part = <part> desc_id = (<part_instance>.desc_id)
			part_instance = {<ps2_part_struct> <part_instance>}
		endif
	endif
	AddParam Name = <part> structure_name = part_struct value = <part_instance>
	Change cas_current_appearance = {($cas_current_appearance)
		<part_struct>}
endscript

script editcasappearance 
	checkmodelbuilderlock
	if checksumequals a = <target> b = setgenre
		Change cas_current_appearance = {($cas_current_appearance) genre = (<targetparams>.genre)}
	else
		part = (<targetparams>.part)
		resolvebodyspecificpartinappearance part = <part>
		if checksumequals a = <target> b = setpart
			newstruct = {desc_id = (<targetparams>.desc_id)}
			add_chosen_materials_to_part part = <part> newstruct = <newstruct>
			updatestructelement struct = $cas_current_appearance element = <part> value = <newstruct>
			Change cas_current_appearance = <newstruct>
		elseif checksumequals a = <target> b = clearpart
			loc_appearance = ($cas_current_appearance)
			RemoveComponent structure_name = loc_appearance Name = <part>
			Change cas_current_appearance = <loc_appearance>
		elseif checksumequals a = <target> b = hidegeom
			hide_geom = (<targetparams>.hide_geom)
			if StructureContains structure = ($cas_current_appearance) <part>
				newstruct = {(($cas_current_appearance).<part>)
					hide_geom = <hide_geom>}
				updatestructelement struct = $cas_current_appearance element = <part> value = <newstruct>
				Change cas_current_appearance = <newstruct>
			endif
		else

		endif
	endif
endscript

script add_chosen_materials_to_part 

	if NOT getactualcasoptionstruct part = <part> desc_id = (<newstruct>.desc_id)

	endif
	if GotParam \{chosen_materials}
		newstruct = {<newstruct>
			chosen_materials = <chosen_materials>}
		return newstruct = <newstruct>
	endif
endscript

script rebuildcurrentcasmodel instrument = ($cas_current_instrument)
	if NOT ($cas_heap_state = in_cas)
	endif
	cas_queue_add_request appearance = ($cas_current_appearance) Player = ($cas_current_player) instrument = <instrument> in_cas force_update = <force_update>
endscript

script updatecurrentcasmodel instrument = ($cas_current_instrument)

	if cas_queue_is_busy \{in_queue_too}

		rebuildcurrentcasmodel instrument = <instrument>
		return
	endif
	updatecurrentcasmodelspawned <...>
endscript

script updatecurrentcasmodelspawned 
	casblockforloading
	caswaitforcomposite
	if NOT ($cas_override_object = None)
		cas_object = ($cas_override_object)
	else
		getcurrentcasobject
	endif
	if GotParam \{cas_object}
		if CompositeObjectExists Name = <cas_object>
			<cas_object> :GetSingleTag LightGroup
			get_hat_hair_choice appearance = ($cas_current_appearance)
			<cas_object> :modelbuilder_build {
				appearance = ($cas_current_appearance)
				buildscript = <buildscript>
				buildscriptparams = {
					<buildscriptparams>
					temporary_heap = heap_cas
					instrument = <instrument>
					LightGroup = <LightGroup>
					hat_hair_choice = <hat_hair_choice>
				}
			}
			ps2_get_musician_context_data Name = <cas_object>
			if (<instrument> = drum)
				formatText checksumName = Skeleton 'drummer_skeleton%am' a = <asset_slot_num>
				get_is_female_from_appearance appearance = ($cas_current_appearance)
				if (<is_female> = 1)
					<cas_object> :Anim_Command target = femalediff Command = applyfemaledrummerdifference_setanim params = {anim = gh_rocker_female_drummer_d}
					<cas_object> :Anim_Command target = 0xd7adf5e7 Command = applyfemaledrummerdifference_setanim params = {anim = gh_rocker_female_drummer_d}
					formatText checksumName = Skeleton 'drummer_skeleton%af' a = <asset_slot_num>
				endif
				if get_key_from_appearance key = drummer_skeleton appearance = ($cas_current_appearance)
					formatText checksumName = Skeleton '%a' a = <drummer_skeleton>
				endif
				if ((<Skeleton> = gh_drummer_lars_1))
					<Name> :Anim_Command target = femalediff Command = applyfemaledrummerdifference_setanim params = {anim = gh_rocker_lars_drummer_d}
				endif
				if ((<Skeleton> = gh_drummer_axel_1) || (<Skeleton> = 0xd0ef43ee))
					<Name> :Anim_Command target = femalediff Command = applyfemaledrummerdifference_setanim params = {anim = gh_rocker_axel_drummer_d}
				endif
				<cas_object> :cas_drum_stick_bake_transforms part = cas_drums_sticks_l skeletonname = <Skeleton> material_index = 0
				<cas_object> :cas_drum_stick_bake_transforms part = cas_drums_sticks_r skeletonname = <Skeleton> material_index = 1
			endif
		endif
	endif
endscript

script printcurrentappearance 
	reorderstructforcas struct = ($cas_current_appearance)
	printcompactstruct <out>
endscript

script getcasmaterialvalue 

	if StructureContains structure = ($cas_current_appearance) <part>
		str = (($cas_current_appearance).<part>)
		if StructureContains structure = <str> chosen_materials
			if StructureContains structure = (<str>.chosen_materials) <material>
				return true value = ((<str>.chosen_materials).<material>)
			endif
		endif
	endif
	return \{FALSE}
endscript

script setcasappearancecolor 
	checkmodelbuilderlock
	resolvebodyspecificpartinappearance part = <part>
	if GotParam \{h}
		CastToInteger \{h}
	endif
	if GotParam \{s}
		CastToInteger \{s}
	endif
	if GotParam \{v}
		CastToInteger \{v}
	endif
	if StructureContains structure = ($cas_current_appearance) <part>
		str = (($cas_current_appearance).<part>)
		appendstruct struct = cas_current_appearance Field = <part> params = {<str> h = <h> s = <s> v = <v> use_default_diffuse = <use_default_diffuse>} globalstruct
	endif
endscript

script setcasappearancematerial 

	checkmodelbuilderlock
	if StructureContains structure = ($cas_current_appearance) <part>
		str = (($cas_current_appearance).<part>)
		if StructureContains structure = <str> chosen_materials
			chosen_materials = (<str>.chosen_materials)
		else
			chosen_materials = {}
		endif
		updatestructelement struct = <chosen_materials> element = <material> value = <value>
		chosen_materials = {
			<chosen_materials> <newstruct>
		}
		appendstruct struct = cas_current_appearance Field = <part> params = {<str> chosen_materials = <chosen_materials>} globalstruct
	endif
endscript

script getcaspartmaterials 
	if NOT getcasappearancepart part = <part>
		return \{FALSE}
	endif
	if NOT getactualcasoptionstruct part = <part> desc_id = <desc_id>
		return \{FALSE}
	endif
	if GotParam \{materials}
		GetArraySize <materials>
		if (<array_Size> > 0)
			array = []
			i = 0
			begin
			formatText checksumName = desc_id 'material%d' d = (<i> + 1)
			AddArrayElement array = <array> element = <desc_id>
			i = (<i> + 1)
			repeat <array_Size>
			return true part_materials = <array>
		endif
	else
		if GotParam \{material_groups}
			GetArraySize <material_groups>
			if (<array_Size> > 0)
				array = []
				i = 0
				begin
				if StructureContains structure = (<material_groups> [<i>]) desc_id
					desc_id = ((<material_groups> [<i>]).desc_id)
				else
					formatText checksumName = desc_id 'material%d' d = (<i> + 1)
				endif
				AddArrayElement array = <array> element = <desc_id>
				i = (<i> + 1)
				repeat <array_Size>
				return true part_materials = <array>
			endif
		else
			if GotParam \{modify_all_materials}
				return \{true
					part_materials = [
						material1
					]}
			endif
		endif
		return \{FALSE}
	endif
endscript

script setcasappearancebones 
	checkmodelbuilderlock
	if StructureContains structure = ($cas_current_appearance) <part>
		str = (($cas_current_appearance).<part>)
		appendstruct struct = cas_current_appearance Field = <part> params = {<str> bones = <bones>} globalstruct
	endif
endscript

script setcasappearanceadditionalbones 
	checkmodelbuilderlock
	if StructureContains structure = ($cas_current_appearance) <part>
		str = (($cas_current_appearance).<part>)
		appendstruct struct = cas_current_appearance Field = <part> params = {<str> additional_bone_transforms = <additional_bone_transforms>} globalstruct
	endif
endscript

script setcasappearancecap 
	checkmodelbuilderlock
	if StructureContains structure = ($cas_current_appearance) <part>
		str = (($cas_current_appearance).<part>)
		if GotParam \{cap}
			appendstruct struct = cas_current_appearance Field = <part> params = {<str> cap = <cap>} globalstruct
		else
			RemoveComponent \{Name = cap
				structure_name = str}
			appendstruct struct = cas_current_appearance Field = <part> params = {<str>} globalstruct
		endif
	endif
endscript

script setcasappearance 
	checkmodelbuilderlock
	Change cas_current_appearance = {<appearance>}
endscript

script resolvebodyspecificpart 
	if getactualcasoptionstruct part = <body_part> desc_id = <desc_id> no_resolve
		if GotParam \{body_specific_parts}
			if StructureContains structure = <body_specific_parts> <part>
				return true part = (<body_specific_parts>.<part>)
			endif
		endif
	endif
	return \{FALSE}
endscript

script resolvebodyspecificpartinappearance appearance = ($cas_current_appearance)
	if StructureContains structure = <appearance> cas_body
		if resolvebodyspecificpart part = <part> desc_id = ((<appearance>.cas_body).desc_id) body_part = cas_body
			return true part = <part>
		endif
	elseif StructureContains structure = <appearance> cas_full_body
		if resolvebodyspecificpart part = <part> desc_id = ((<appearance>.cas_full_body).desc_id) body_part = cas_full_body
			return true part = <part>
		endif
	endif
	return FALSE part = <part>
endscript

script remembertemporarycasappearance 
	Change cas_temporary_appearance = ($cas_current_appearance)
endscript

script restoretemporarycasappearance 
	Change cas_current_appearance = ($cas_temporary_appearance)
endscript

script remembersecondtemporarycasappearance 
	Change cas_second_temporary_appearance = ($cas_current_appearance)
endscript

script restoresecondtemporarycasappearance 
	changeappearancepaks current_appearance = ($cas_current_appearance) new_appearance = ($cas_second_temporary_appearance) Heap = heap_musician1
	Change cas_current_appearance = ($cas_second_temporary_appearance)
endscript

script remembertemporarycapappearance 

	if NOT getcasappearancepart part = <part>

	endif
	if GotParam \{cap}
		Change cap_temporary_appearance = <cap>
	else
		Change \{cap_temporary_appearance = [
			]}
	endif
endscript

script restoretemporarycapappearance 

	setcasappearancecap part = <part> cap = ($cap_temporary_appearance)
endscript

script remembertemporaryboneappearance 

	if NOT getcasappearancepart part = <part>

	endif
	if GotParam \{bones}
		Change bone_temporary_appearance = <bones>
	else
		Change \{bone_temporary_appearance = {
			}}
	endif
endscript

script restoretemporaryboneappearance 

	setcasappearancebones part = <part> bones = ($bone_temporary_appearance)
endscript

script hideinstrument 
	ForEachIn (($instrument_part_sets).guitar) do = hideinstrument_foreach
	ForEachIn (($instrument_part_sets).bass) do = hideinstrument_foreach
	ForEachIn (($instrument_part_sets).drum) do = hideinstrument_foreach
	ForEachIn (($instrument_part_sets).vocals) do = hideinstrument_foreach
endscript

script hideinstrument_foreach 
	SwitchOffAtomic <checksum>
endscript

script unhideinstrument 
	ForEachIn (($instrument_part_sets).guitar) do = unhideinstrument_foreach
	ForEachIn (($instrument_part_sets).bass) do = unhideinstrument_foreach
	ForEachIn (($instrument_part_sets).drum) do = unhideinstrument_foreach
	ForEachIn (($instrument_part_sets).vocals) do = unhideinstrument_foreach
endscript

script unhideinstrument_foreach 
	SwitchOnAtomic <checksum>
endscript

script hidemusician 
	ForEachIn \{$body_parts
		do = hidemusician_foreach}
	ForEachIn \{$body_parts
		do = hidemusician_foreach}
	ForEachIn \{$body_parts
		do = hidemusician_foreach}
	ForEachIn \{$body_parts
		do = hidemusician_foreach}
endscript

script hidemusician_foreach 
	SwitchOffAtomic <checksum>
endscript

script get_hat_hair_choice 
	if resolvebodyspecificpartinappearance appearance = <appearance> part = cas_hat_hair
		if StructureContains structure = <appearance> <part>
			if StructureContains structure = (<appearance>.<part>) desc_id
				return \{hat_hair_choice = hat_hair}
			endif
		endif
	endif
	return \{hat_hair_choice = hair}
endscript

script caswaitforcomposite 

endscript

script casblockforcomposite 
	if modelbuilderiscompositingactive
		modelbuilderblockforcompositing
	endif
endscript

script pushtemporarycasappearance 
	AddArrayElement array = ($cas_temporary_appearance_stack) element = ($cas_current_appearance)
	Change cas_temporary_appearance_stack = <array>
endscript

script printtemporarycasappearancestack 
	printcompactstruct ($cas_temporary_appearance_stack)
endscript

script poptemporarycasappearance 
	GetArraySize ($cas_temporary_appearance_stack)
	if (<array_Size> > 0)
		RemoveArrayElement array = ($cas_temporary_appearance_stack) index = (<array_Size> -1)
		Change cas_temporary_appearance_stack = <array>
	endif
endscript

script restoretoptemporarycasappearance 
	GetArraySize ($cas_temporary_appearance_stack)
	if (<array_Size> > 0)
		Change cas_current_appearance = (($cas_temporary_appearance_stack) [(<array_Size> -1)])
	endif
	0xe351fbef = [
		cas_torso_art , cas_right_arm_art , cas_left_arm_art , cas_eye_makeup ,
		cas_bass_body_detail , cas_bass_body_fade , cas_bass_finish , cas_bass_head_detail , cas_bass_head_finish , cas_bass_head_fade , cas_bass_neck_finish , cas_bass_pickguard_finish ,
		cas_guitar_body_detail , cas_guitar_body_fade , cas_guitar_finish , cas_guitar_head_detail , cas_guitar_head_finish , cas_guitar_head_fade , cas_guitar_neck_finish , cas_guitar_pickguard_finish ,
	]
	GetArraySize <0xe351fbef>
	X = 0
	begin
	undo = (<0xe351fbef> [<X>])
	if NOT getcasappearancepart part = <undo>
		cas_add_item_to_appearance {
			part = <undo>
			desc_id = None
			no_rebuild
		}
	endif
	X = (<X> + 1)
	repeat <array_Size>
	rebuildcurrentcasmodel force_update = <force_update>
endscript

script mergepartintotemporarycasappearance 

	part_list_instances = []
	GetArraySize <part_list>
	i = 0
	begin
	if getcasappearancepartinstance part = (<part_list> [<i>])
		AddArrayElement array = <part_list_instances> element = <part_instance>
		part_list_instances = <array>
	else
		RemoveArrayElement array = <part_list> index = <i>
		part_list = <array>
		i = (<i> -1)
	endif
	i = (<i> + 1)
	repeat <array_Size>
	GetArraySize ($cas_temporary_appearance_stack)
	if (<array_Size> > 0)
		Change cas_current_appearance = (($cas_temporary_appearance_stack) [(<array_Size> -1)])
		RemoveArrayElement array = ($cas_temporary_appearance_stack) index = (<array_Size> -1)
		Change cas_temporary_appearance_stack = <array>
		GetArraySize <part_list>
		if (<array_Size> > 0)
			i = 0
			begin
			setcasappearancepartinstance part = (<part_list> [<i>]) part_instance = (<part_list_instances> [<i>])
			i = (<i> + 1)
			repeat <array_Size>
		endif
		SpawnScriptNow \{trigger_cas_rebuild_loop}
	endif
endscript

script comparetoptemporarycasappearance 
	GetArraySize ($cas_temporary_appearance_stack)
	if comparestructs struct1 = (($cas_temporary_appearance_stack) [(<array_Size> -1)]) struct2 = ($cas_current_appearance)
		return \{true}
	else
		return \{FALSE}
	endif
endscript

script generic_exit_restore 
	if ScreenElementExists \{id = create_popout_select_part_vmenu}
		LaunchEvent \{Type = unfocus
			target = create_popout_select_part_vmenu}
	endif
	cancel_all_cas_loads
	restoretoptemporarycasappearance force_update = <force_update>
	if GotParam \{part}
		if (<part> = 0x197f6b46)
			if getcasappearancepart \{part = 0x197f6b46}
				if getactualcasoptionstruct part = 0x197f6b46 desc_id = <desc_id>
					generatecagtexture single_texture = (<with1>)
					rebuildcurrentcasmodel
				endif
			endif
		endif
	endif
	KillSpawnedScript \{Name = select_part_focus_change_spawned}
	cas_queue_wait
	ui_event \{event = menu_back}
endscript

script list_exit_restore 
	generic_list_destroy
	restoretoptemporarycasappearance
	ui_event \{event = menu_back}
endscript

script generic_exit_restore_refresh 
	restoretoptemporarycasappearance
	ui_event \{event = menu_back
		data = {
			refresh_previous_state
		}}
endscript

script get_best_heap_for_appearance \{exclusions = [
		]}
	best_heap = None
	best_score = -1.0
	GetArraySize \{$musician_heaps}
	i = 0
	begin
	heap_name = ($musician_heaps [<i>])
	get_appearance_heap_score appearance = <appearance> heap_name = <heap_name>
	if (<score> >= <best_score>)
		best_score = <score>
		best_heap = <heap_name>
	endif
	i = (<i> + 1)
	repeat <array_Size>

	if (<best_score> < 0.0)

	endif
	if casisassetstorageused Name = <best_heap>

	endif
	return best_heap = <best_heap>
endscript

script get_appearance_heap_score 
	if casisassetstorageused Name = <heap_name>

		return \{score = -1.0}
	else
		cascompareassetstorage Name = <heap_name> appearance = <appearance>
		return score = <comparevalue>
	endif
endscript
