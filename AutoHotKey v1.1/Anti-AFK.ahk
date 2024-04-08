#NoEnv
#SingleInstance force
SendMode Input
 
F6::
Suspend
Pause,, 1
Return
 
F4 UP::
Send, {W DOWN}
Sleep, 1000
Send, {W UP}
Sleep, 1000
Send, {S DOWN}
Sleep, 1000
Send, {S UP}
Sleep, 1000
Loop
{
Send, {W DOWN}
Sleep, 1000
Send, {W UP}
Sleep, 1000
Send, {S DOWN}
Sleep, 1000
Send, {S UP}
Sleep, 1000   
}