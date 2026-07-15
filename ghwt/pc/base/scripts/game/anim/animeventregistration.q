
script RegisterAllAnimEvents 
	RegisterAnimEvents \{track = standard
		anim_events = $animevents_standard_downloads}
	RegisterAnimEvents \{track = standard
		anim_events = $AnimEvents_standard}
	RegisterAnimEvents \{track = tempo_matching
		dormant = true
		anim_events = $animevents_tempomatching_downloads}
	RegisterAnimEvents \{track = tempo_matching
		dormant = true
		anim_events = $animevents_tempomatching}
endscript
