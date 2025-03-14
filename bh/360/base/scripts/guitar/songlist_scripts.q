disable_downloaded_songs = 0

script get_song_original_artist \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		return original_artist = ($gh_songlist_props.<song>.original_artist)
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_title \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		return song_title = ($gh_songlist_props.<song>.Title)
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_prefix \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		return song_prefix = ($gh_songlist_props.<song>.name)
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_name \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		return song_name = ($gh_songlist_props.<song>.name)
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_artist \{song = invalid
		with_year = 1}
	if StructureContains structure = $gh_songlist_props <song>
		if (<with_year>)
			FormatText TextName = song_artist qs(0xfaf915aa) a = ($gh_songlist_props.<song>.artist) y = ($gh_songlist_props.<song>.year)
			return song_artist = <song_artist>
		else
			return song_artist = ($gh_songlist_props.<song>.artist)
		endif
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_album_img \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		if StructureContains structure = ($gh_songlist_props.<song>) album_img
			return song_album_img = ($gh_songlist_props.<song>.album_img)
		else
			return \{song_album_img = placeholder_album}
		endif
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_artist_text \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		return song_artist_text = ($gh_songlist_props.<song>.artist_text)
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_year_text \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		FormatText TextName = song_year_text qs(0x5ab9cf0a) y = ($gh_songlist_props.<song>.year)
		return song_year_text = <song_year_text>
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_year \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		return year = ($gh_songlist_props.<song>.year)
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_cover_artist_text \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		if StructureContains structure = ($gh_songlist_props.<song>) covered_by
			return cover_artist_text = ($gh_songlist_props.<song>.covered_by)
		else
			return \{cover_artist_text = qs(0x03ac90f0)}
		endif
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_covered_by_text \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		if StructureContains structure = ($gh_songlist_props.<song>) covered_by_text
			return covered_by_text = ($gh_songlist_props.<song>.covered_by_text)
		else
			return \{covered_by_text = qs(0x03ac90f0)}
		endif
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_genre_text 
	<continue> = 0
	if GotParam \{genre}
		<continue> = 1
		<switch_var> = <genre>
	elseif StructureContains structure = $gh_songlist_props <song>
		<continue> = 1
		<switch_var> = ($gh_songlist_props.<song>.genre)
	endif
	if (<continue> = 1)
		if NOT StructureContains structure = $song_genre_list <switch_var>
			switch_var = other
		endif
	endif
	if NOT GotParam \{switch_var}
		printstruct <...>
		printf \{qs(0x0ebc33db)}
		switch_var = other
	endif
	return genre = ($song_genre_list.<switch_var>.genre_string + qs(0x03ac90f0))
endscript
Perf2_Settings = [
	{
		song = Today
		mode = gh4_p1_career
		char_type = Vocalist
		char_id = Billy
	}
	{
		song = DemolitionMan
		mode = gh4_p1_career
		char_type = Vocalist
		char_id = RandomCharacter
	}
	{
		song = Today
		mode = gh4_p2_career
		char_type = Vocalist
		char_id = Billy
	}
	{
		song = DemolitionMan
		mode = gh4_p2_career
		char_type = Vocalist
		char_id = RandomCharacter
	}
	{
		song = Today
		mode = gh4_p3_career
		char_type = Vocalist
		char_id = Billy
	}
	{
		song = DemolitionMan
		mode = gh4_p3_career
		char_type = Vocalist
		char_id = RandomCharacter
	}
]

script get_song_performance 
	return \{song_performance = 0}
endscript

script is_any_player_on_part 
	GetNumPlayersInGame \{on_screen}
	if (<num_players_shown> > 0)
		GetFirstPlayer \{on_screen}
		begin
		if PlayerInfoEquals <player> part = <part>
			return \{true}
		endif
		GetNextPlayer on_screen player = <player>
		repeat <num_players_shown>
	endif
	return \{false}
endscript

script get_song_struct \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		return song_struct = ($gh_songlist_props.<song>)
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script is_song_downloaded \{song_checksum = schoolsout}
	if StructureContains structure = ($download_songlist_props) <song_checksum>
		if ($disable_downloaded_songs = 0)
			FormatText TextName = FileName 'a%s_1.fsb' s = (($download_songlist_props.<song_checksum>).name)
			GetContentFolderIndexFromFile <FileName>
			if (<device> = content)
				FormatText TextName = FileName 'b%s_song.pak' s = (($download_songlist_props.<song_checksum>).name)
				GetContentFolderIndexFromFile <FileName>
				if (<device> = content)
					get_savegame_from_controller controller = ($primary_controller)
					GetGlobalTags user_options savegame = <savegame> param = disable_dlc
					if (<disable_dlc> = 1)
						return \{download = 1
							patched = 1
							false}
					endif
					return \{download = 1
						patched = 1
						true}
				else
					return \{download = 1
						patched = 0
						false}
				endif
			else
				return \{download = 1
					patched = 0
					false}
			endif
		else
			return \{download = 1
				patched = 0
				false}
		endif
	else
		return \{download = 0
			patched = 0
			true}
	endif
endscript

script is_song_in_jammode_songlist 
	RequireParams \{[
			song
		]
		all}
	GetArraySize \{$jammode_songlist}
	if (<array_size> > 0)
		<i> = 0
		begin
		if (<song> = (($jammode_songlist) [<i>]))
			return \{true}
		endif
		<i> = (<i> + 1)
		repeat <array_size>
	endif
	GetArraySize \{$example_jam_songlist}
	if (<array_size> > 0)
		<i> = 0
		begin
		if (<song> = (($example_jam_songlist) [<i>]))
			return \{true}
		endif
		<i> = (<i> + 1)
		repeat <array_size>
	endif
	return \{false}
endscript

script song_has_ingame_video 
	if StructureContains structure = $gh_songlist_props <song>
		if StructureContains structure = ($gh_songlist_props.<song>) ingame_video
			return true ingame_video = ($gh_songlist_props.<song>.ingame_video)
		else
			return \{false}
		endif
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_rhythm_track \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		if StructureContains structure = ($gh_songlist_props.<song>) rhythm_track
			return rhythm_track = ($gh_songlist_props.<song>.rhythm_track)
		else
			return \{rhythm_track = 0}
		endif
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_difficulty_ratings \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		if (<song> = jamsession)
			GetSongInfo
			guitar_difficulty_rating = 1
			bass_difficulty_rating = 1
			vocals_difficulty_rating = 1
			drums_difficulty_rating = 1
			band_difficulty_rating = 1
			if (<playback_track1> < 0)
				guitar_difficulty_rating = 0
			endif
			if (<playback_track2> < 0)
				bass_difficulty_rating = 0
			endif
			if (<playback_track_drums> < 1)
				drums_difficulty_rating = 0
			endif
			if (<playback_track_vocals> < 1)
				vocals_difficulty_rating = 0
			endif
			band_difficulty_rating = 0
		elseif StructureContains structure = ($gh_songlist_props.<song>) guitar_difficulty_rating
			guitar_difficulty_rating = ($gh_songlist_props.<song>.guitar_difficulty_rating)
			bass_difficulty_rating = ($gh_songlist_props.<song>.bass_difficulty_rating)
			vocals_difficulty_rating = ($gh_songlist_props.<song>.vocals_difficulty_rating)
			drums_difficulty_rating = ($gh_songlist_props.<song>.drums_difficulty_rating)
			band_difficulty_rating = ($gh_songlist_props.<song>.band_difficulty_rating)
		else
			guitar_difficulty_rating = 0
			bass_difficulty_rating = 0
			vocals_difficulty_rating = 0
			drums_difficulty_rating = 0
			band_difficulty_rating = 0
		endif
		return {
			guitar_difficulty_rating = <guitar_difficulty_rating>
			bass_difficulty_rating = <bass_difficulty_rating>
			vocals_difficulty_rating = <vocals_difficulty_rating>
			drums_difficulty_rating = <drums_difficulty_rating>
			band_difficulty_rating = <band_difficulty_rating>
		}
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_saved_in_globaltags \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		if StructureContains structure = ($gh_songlist_props.<song>) saved_in_globaltags
			return saved_in_globaltags = ($gh_songlist_props.<song>.saved_in_globaltags)
		else
			return \{saved_in_globaltags = 1}
		endif
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_allowed_in_quickplay \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		if StructureContains structure = ($gh_songlist_props.<song>) allowed_in_quickplay
			return allowed_in_quickplay = ($gh_songlist_props.<song>.allowed_in_quickplay)
		else
			return \{allowed_in_quickplay = 1}
		endif
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript
current_song_version = gh5_1_disc

script get_song_version \{song = invalid}
	if StructureContains structure = $gh_songlist_props <song>
		if StructureContains structure = ($gh_songlist_props.<song>) version
			return song_version = ($gh_songlist_props.<song>.version)
		else
			return song_version = ($current_song_version)
		endif
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_drum_kit_index \{song = invalid}
	if is_current_song_a_jam_session
		return \{drum_kit_index = 0}
	endif
	if StructureContains structure = $gh_songlist_props <song>
		drum_kit_type = ($gh_songlist_props.<song>.drum_kit)
		GetArraySize ($drum_kits)
		drum_kit_index = 0
		begin
		if (<drum_kit_type> = $drum_kits [<drum_kit_index>].string_id)
			break
		endif
		drum_kit_index = (<drum_kit_index> + 1)
		repeat <array_size>
		if (<drum_kit_index> >= <array_size>)
			<drum_kit_index> = 0
			printf \{qs(0x547595c8)}
			printscriptinfo \{qs(0x7712eea5)}
		endif
		return drum_kit_index = <drum_kit_index>
	endif
	printstruct <...>
	ScriptAssert \{qs(0x0ebc33db)}
endscript

script get_song_source 
	RequireParams \{[
			song_name
		]
		all}
	Source = unknown
	source_txt = qs(0xe3f67499)
	GetArraySize ($gh_songlist)
	if (<array_size> > 0)
		i = 0
		begin
		props = (($gh_songlist [<i>]).props)
		if StructureContains structure = $<props> <song_name>
			return Source = (($gh_songlist [<i>]).crc) source_txt = (($gh_songlist [<i>]).frontend_desc)
		endif
		i = (<i> + 1)
		repeat <array_size>
	endif
	return Source = <Source> source_txt = <source_txt>
endscript

script musicstudio_check_song_for_zero_difficulty 
	GetPlayerInfo <player> part
	GetSongInfo
	switch (<part>)
		case Drum
		if (<drums_difficulty_rating> = 0)
			printf \{qs(0x743c8e0c)}
			SetPlayerInfo <player> force_freeform = 1
		endif
		case vocals
		if (<vocals_difficulty_rating> = 0)
			printf \{qs(0x0e210b39)}
			SetPlayerInfo <player> force_freeform = 1
		endif
	endswitch
endscript

script guts_check_song_for_zero_difficulty \{song = invalid}
	GetPlayerInfo <player> part
	SetPlayerInfo <player> force_freeform = 0
	if (<song> = jamsession)
		musicstudio_check_song_for_zero_difficulty <...>
	else
		switch (<part>)
			case guitar
			if (<guitar_difficulty_rating> = 0)
			endif
			case bass
			if (<bass_difficulty_rating> = 0)
			endif
			case Drum
			if (<drums_difficulty_rating> = 0)
				SetPlayerInfo <player> force_freeform = 1
			endif
			case vocals
			if (<vocals_difficulty_rating> = 0)
				SetPlayerInfo <player> force_freeform = 1
			endif
		endswitch
	endif
endscript

script single_player_check_song_for_zero_difficulty \{song = invalid}
	if (<song> = invalid)
		GMan_SongTool_GetCurrentSong
		song = <current_song>
	endif
	get_song_difficulty_ratings song = <song>
	guts_check_song_for_zero_difficulty <...>
endscript

script check_song_for_zero_difficulty \{song = invalid}
	get_song_difficulty_ratings song = <song>
	GetNumPlayersInGame
	if (<num_players> > 0)
		GetFirstPlayer
		begin
		guts_check_song_for_zero_difficulty <...>
		GetNextPlayer player = <player>
		repeat <num_players>
	endif
endscript

script setup_guitar_bass_stored_part 
	GetNumPlayersInGame
	if (<num_players> > 0)
		GetFirstPlayer
		begin
		GetPlayerInfo <player> part
		SetPlayerInfo <player> stored_part = <part>
		GetNextPlayer player = <player>
		repeat <num_players>
	endif
endscript

script restore_player_part_settings 
	GetNumPlayersInGame
	if (<num_players> > 0)
		GetFirstPlayer
		begin
		SetPlayerInfo <player> force_freeform = 0
		GetNextPlayer player = <player>
		repeat <num_players>
	endif
endscript

script is_song_debug 
	RequireParams \{[
			name
		]
		all}
	if ArrayContains array = $debug_songlist contains = <name>
		return \{true}
	endif
	return \{false}
endscript

script any_song_has_double_kick 
	GetSonglistSize
	i = 0
	begin
	GetSonglistChecksum index = <i>
	get_song_struct song = <song_checksum>
	if is_song_downloaded song_checksum = <song_checksum>
		if StructureContains structure = <song_struct> double_kick
			if ((<song_struct>.double_kick) = 1)
				return \{true}
			endif
		endif
	endif
	i = (<i> + 1)
	repeat <array_size>
	return \{false}
endscript
