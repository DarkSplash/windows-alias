#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force ; Forces new launch when reloading
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ReloadScript() {
	Send, {Click UP}
	Send, {Space UP}
	Send, {1 UP}
	Send, {3 UP}
	Send, {I UP}
	Run %A_AhkPath% "%A_ScriptFullPath%"
	ExitApp
}

AttackAndJump() {	; Assuming attack weapon in slot 1, about ~13 seconds long
	Send, {Click DOWN}
	Sleep, 3333
	Send, {Click UP}
	Send, {Space DOWN}
	Sleep, 1000
	Send, {Space UP}
}

SpawnSummon() {		; Assuming summon weapon in slot 3
	Send, {3 DOWN}
	Sleep, 250
	Send, {3 UP}
	Sleep, 500
	Send, {Click DOWN}
	Sleep, 250
	Send, {Click UP}
	Sleep, 250
	Send, {1 DOWN}
	Sleep, 250
	Send, {1 UP}
}

SelectQuickStack() {
	Sleep, 100
	Send, {I DOWN}
	Sleep, 100
	Send, {I UP}
	Sleep, 250
	Send, {Click 565 290 0}
	Sleep, 10 
	Send, {Click 570 290 0}
	Sleep, 10 
	Send, {Click 570 295 0}
	Sleep, 10 
	Send, {Click 565 295 0}
	Sleep, 10 
	Send, {Click 565 290 0}
	Sleep, 10 
	Send, {Click DOWN 565 290}
	Sleep, 100
	Send, {Click UP 565 290}
	Sleep, 100
	Send, {Click 565 290}
	Sleep, 100
	Send, {I DOWN}
	Sleep, 100
	Send, {I UP}
	Sleep, 100
	Send, {Click 960 450 0}
}


F7::SelectQuickStack()


F6::ReloadScript()


F5::
Loop 	; After a bunch of loops, quickstack cash away
{
	Loop 3	; After the 13 seconds, swap to third slot and respawn minion, then go back to first slot
	{
		Loop 3	; For 13 seconds, attack and move to prevent AFK
		{
			AttackAndJump()
		}
		SpawnSummon()
	}
	SelectQuickStack()
}