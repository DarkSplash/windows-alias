#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force ; Forces new launch when reloading
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ReloadScript() {
	Send, {Click UP}
	Send, {W UP}
	Run %A_AhkPath% "%A_ScriptFullPath%"
	ExitApp
}

Mine() {	; Mine the top block
	Send, {Click DOWN}
	Sleep, 100
	Send, {W DOWN}
}



F6::ReloadScript()


F5::Mine()