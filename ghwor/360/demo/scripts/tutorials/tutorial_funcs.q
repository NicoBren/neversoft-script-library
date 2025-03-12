g_tutorial_last_lesson = 1
g_in_tutorial = 0

script safe_show \{time = 0.0}
	if screenelementexists id = <id>
		<id> :se_setprops alpha = 1 time = <time>
	endif
endscript

script safe_hide \{time = 0.0}
	if screenelementexists id = <id>
		<id> :se_setprops alpha = 0 time = <time>
	endif
endscript

script safe_wait_and_hide \{fade_time = 0.0
		wait_time = 0.0}
	if (<wait_time> > 0)
		wait <wait_time> seconds
	endif
	if screenelementexists id = <id>
		<id> :se_setprops alpha = 0.0 time = <fade_time>
	endif
endscript

script safe_wait_and_show \{fade_time = 0.0
		wait_time = 0.0}
	if (<wait_time> > 0)
		wait <wait_time> seconds
	endif
	if screenelementexists id = <id>
		<id> :se_setprops alpha = 1.0 time = <fade_time>
	endif
endscript

script safe_destroy 
	if screenelementexists id = <id>
		destroyscreenelement id = <id>
	endif
endscript
