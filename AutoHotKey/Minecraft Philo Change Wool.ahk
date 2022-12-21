#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force ; Forces new launch when reloading
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ReloadScript() {
	Send, {Click UP Right}
	Run %A_AhkPath% "%A_ScriptFullPath%"
	ExitApp
}

RightClick() {
	Send, {Click DOWN Right}
	Sleep, 75
	Send, {Click UP Right}
}

BrownWool() {
	Loop 3 { 
		RightClick() 
	}
}

WhiteWool() {
	Loop 15 {
		RightClick()
	}
}


F7::ReloadScript()

F6::WhiteWool()

F5::BrownWool()