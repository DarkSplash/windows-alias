#Requires AutoHotkey v2.0

LOOP_FLAG := 1



reloadFunc()
{
    Send "{Enter up}"
    Send "{w up}"
    Send "{a up}"
    Send "{s up}"
    Send "{d up}"
    Send "{Shift up}"
    Send "{Ctrl up}"
    Reload
}



; Starting on "career" at the top of the menu
mainMenu()
{   
    ; Main Menu - Selecting "custom rally"
    Send "{s}"
    Sleep 50
    Send "{s}"
    Sleep 50
    Send "{Enter}"
    Sleep 250
    ; Custom Rally Initial Setup - Selecting Germany in location
    Loop 8
    {
        Send "{a}"
        Sleep 50
    }
    Loop 4
    {
        Send "{d}"
        Sleep 50
    }
    Send "{s}"
    Sleep 50
    ; Custom Rally Initial Setup - 1 stage
    Loop 11
    {
        Send "{a}"
        Sleep 50
    }
    Send "{s}"
    Sleep 50
    Send "{s}"
    Sleep 50
    ; Custom Rally Initial Setup - Severe damage
    Loop 4
    {
        Send "{d}"
        Sleep 50
    }
    Send "{Enter}"
    Sleep 250
    ; Custom Rally Stage Select - Selecting Gonnesweiler
    Loop 11
    {
        Send "{d}"
        Sleep 50
    }
    Send "{a}"
    Sleep 50
    Send "{Enter}"
    Sleep 250
    ; Custom Rally Car Selection - Setting cars to Group A, I used "the max attack"
    Loop 5
    {
        Send "{d}"
        Sleep 50
    }
    ; Inital loading screen into Gonnesweiler
    Send "{Enter}"
    Sleep 8000
    ; Skipping the cinematic camera
    Send "{Enter}"
    Sleep 1000
    ; Starting the race and delaying a bit for any loads
    Send "{Enter}"
    Sleep 7000
}



; if everything seems under control, you're not going fast enough
; Based mostly off of this Steam Guide - https://steamcommunity.com/sharedfiles/filedetails/?id=2485941039
iesucyngfe()
{
    Send "{w down}"
    Sleep 1000
    Send "{a down}"
    Sleep 200
    Send "{a up}"
    Sleep 250
    Send "{Shift down}{Shift up}"
    Sleep 100
    Send "{a down}"
    Sleep 100
    Send "{a up}"
    Sleep 300
    Send "{a down}"
    Sleep 100
    Send "{a up}"
    Sleep 1100
    Send "{Shift down}{Shift up}"
    Sleep 1300
    Send "{Shift down}{Shift up}"
}



terminalDamage()
{
    ; Waiting for terminal damage screen to pop
    Sleep 8000
    Send "{w up}"
    ; Selecting "retire from session"
    Loop 7
    {
        Send "{s}"
        Sleep 50
    }
    Send "{Enter}"
    Sleep 250
    Send "{Enter}"
    Sleep 7000
}


; Mostly for when the car doesn't terminally damage itself
backToMainMenu()
{
    ; Deselect all used keys in script
    Send "{Enter up}"
    Send "{w up}"
    Send "{a up}"
    Send "{s up}"
    Send "{d up}"
    Send "{Shift up}"
    Send "{Ctrl up}"
    ; Selecting "save and quit to menu"
    Send "{Esc}"
    Sleep 100
    Loop 5
    {
        Send "{s}"
        Sleep 50
    }
    Send "{Enter}"
    Sleep 250
    Send "{Enter}"
    Sleep 8000
    ; Main Menu - Deleting rally progess
    Send "{s}"
    Sleep 50
    Send "{s}"
    Sleep 50
    Send "{Enter}"
    Sleep 500
    Send "{s}"
    Sleep 500
    Send "{Enter}"
    Sleep 1000
    Send "{Esc}"
    Sleep 1500
    Sleep 50
}



flagZero()
{
    global
    LOOP_FLAG := 0
}



main()
{
    global
    Loop
    {
        if (LOOP_FLAG = 1)
        {
            mainMenu()
            iesucyngfe()
            terminalDamage()
        }
        if (LOOP_FLAG = 0)
        {
            backToMainMenu()
            LOOP_FLAG := 1
        }
    }
}

^!r::reloadFunc()       ; Ctrl+Alt+R
F13::flagZero()
F14::main()