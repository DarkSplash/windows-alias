#MaxThreadsPerHotkey 2
^F12::
	toggle:=!toggle
	While toggle{
		Send, time
		Send {Enter}
		Send, save
		Send {Enter}
		FormatTime, time, A_now, ddd d-MMM-yy hh:mm tt
		Send, say The map has just been saved at %time%
		Send {Enter}
		Send {Enter}
		Sleep 600000
	}
Return