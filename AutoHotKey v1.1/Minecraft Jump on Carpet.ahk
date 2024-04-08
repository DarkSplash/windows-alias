#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force ; Forces new launch when reloading
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ReloadScript() {
	Send, {Space UP}
	Send, {Click UP Right}
	Run %A_AhkPath% "%A_ScriptFullPath%"
	ExitApp
}

Jump() {	; Need to be in a two high spot with carpet beneath you
	Send, {Space DOWN}
	Sleep, 70
	Send, {Space UP}
	Sleep, 70
}

Eat() {	; Have this in your hands while doing this
	Send, {Click DOWN Right}
	Sleep, 5000
	Send, {Click UP Right}
}


F6::ReloadScript()


F5::
Loop
{
	Loop 1000
	{
		Jump()
	}
	Eat()
}