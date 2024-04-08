#MaxThreadsPerHotkey 2
^F12::
	toggle:=!toggle
	While toggle{
	  Send {F5}
	  Sleep 5000
	}
Return