
script apply_band_logo_to_venue 
	venue_texture_name = `tex\zones\Z_RecordStore\JG_RS_LOGOTemp_D_dnc.dds`
	printf 'apply_band_logo_to_venue %s' s = <step> DoNotResolve
	if ($is_attract_mode = 0)
		GetPakManCurrentName \{map = zones}
		if NOT GotParam \{pakname}
			ScriptAssert \{'Zone not found'}
		endif
		FormatText checksumname = zone_tex_dict 'zones/%s/%t.tex' s = <pakname> t = <pakname>
		FormatText checksumname = zone_context '%t' t = <pakname>
		PushAssetContext context = <zone_context>
		if NOT IsAssetLoaded name = <zone_tex_dict>
			ScriptAssert \{'Zone texdict not found'}
		endif
		if NOT IsTextureInDictionary dictionary = <zone_tex_dict> texture = <venue_texture_name>
			printf 'Nowhere to put Band Logo in %s' s = <pakname>
			PopAssetContext
			return
		endif
		PopAssetContext
		if (<step> = build)
			cas_update_band_logo controller = ($primary_controller)
		elseif (<step> = apply)
			ReplaceTexture {
				src_tex_dict_assetname = ($CAS_Band_Logo_Details.texdict)
				src_tex_dict_assetcontext = ($CAS_Band_Logo_Details.assetcontext)
				src_tex_dict_texturename = ($CAS_Band_Logo_Details.textureasset)
				dest_tex_dict_assetname = <zone_tex_dict>
				dest_tex_dict_assetcontext = <zone_context>
				dest_tex_dict_texturename = <venue_texture_name>
			}
			apply_band_logo_to_venue_apply_to_other_dict {
				tex_dict = `models\venues\recordstore\encore_bandart_skin.tex`
				zone_context = <zone_context>
				venue_texture_name = <venue_texture_name>
			}
			apply_band_logo_to_venue_apply_to_other_dict {
				tex_dict = `models\venues\recordstore\encore_record_skin.tex`
				zone_context = <zone_context>
				venue_texture_name = <venue_texture_name>
			}
		else
			ScriptAssert \{'Unknown step type'}
		endif
	else
		printf \{'No band logos in attract mode'}
	endif
endscript

script apply_band_logo_to_venue_apply_to_other_dict 
	PushAssetContext context = <zone_context>
	if NOT IsAssetLoaded name = <tex_dict>
		PopAssetContext
		return
	endif
	if NOT IsTextureInDictionary dictionary = <tex_dict> texture = <venue_texture_name>
		PopAssetContext
		return
	endif
	PopAssetContext
	ReplaceTexture {
		src_tex_dict_assetname = ($CAS_Band_Logo_Details.texdict)
		src_tex_dict_assetcontext = ($CAS_Band_Logo_Details.assetcontext)
		src_tex_dict_texturename = ($CAS_Band_Logo_Details.textureasset)
		dest_tex_dict_assetname = <tex_dict>
		dest_tex_dict_assetcontext = <zone_context>
		dest_tex_dict_texturename = <venue_texture_name>
	}
endscript
