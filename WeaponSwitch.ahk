/*
This first set replaces the item in your 1st inventory slot with the item in the slot directly above it. It also normally moves the screen a bit, which is unavoidable without a longer sleep timer. I haven't tested out the exact time needed to keep the screen still. The command for this is Mouse4 (xbutton1 is mouse 4, xbutton2 is mouse 5). Xbutton 1 is also used for the back key on most systems.
*/
Xbutton1 & 1::
    Send, e
        Mousemove, 675, 715
        Send, 1
            Sleep 5
        Send, e
            Sleep 25
    Send, 1
return

/*
Same as the first command except for the second inventory slot
*/

Xbutton1 & 2::
    Send, e
        Mousemove, 744, 710
        Send, 2
            Sleep 5
        Send, e
            Sleep 25
    Send, 2
return

/*
Same as the first command except for the third inventory slot
*/

Xbutton1 & 3::
    Send, e
        Mousemove, 822, 714
        Send, 3
            Sleep 5
        Send, e
            Sleep 25
    Send, 3
return

/*
Switches to my torches and places it, before switching back. A bit inconsistent, but changes 3 button presses to 2. Also uses mouse 5 (forward button on Windows) instead of mouse 4
*/

Xbutton2 & Rbutton::
    Send, 9
        Sleep 1
    Send, {Rbutton}
        Sleep 3
    Send, 1
        Sleep 1
return

/*
Code used in the video, this is mouse 4 and the tilde key. This script is very consistent, and is very close to not moving the screen. You can even speed it up by reducing the sleep timers, though I didn't as it is a little dangerous. It picks up the armor after all, and if it goes too quickly it could throw the armor on the ground. High stress situations demand it be as consistent as possible.
*/

Xbutton1 & `::
    Send, e
        Mousemove, 671, 563
            Sleep 10
            Send {LButton}
            Sleep 10
        Mousemove, 669, 323
            Sleep 10
            Send {LButton}
            Sleep 10
        Mousemove, 671, 563
            Sleep 10
            Send {LButton}
            Sleep 10
    Send, e
return