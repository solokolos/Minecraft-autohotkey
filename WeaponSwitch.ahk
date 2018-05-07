/*
Code used in the video, this is mouse 4 and the tilde key. 
This script is very consistent, and is very close to not moving the screen. 
You can even speed it up by reducing the sleep timers, though I didn't do that too much, as it is a little dangerous. 
It picks up the armor after all, and if it goes too quickly it could throw the armor on the ground. 
High stress situations demand it be as consistent as possible.
*/

Xbutton1 & `::
    Send, e
    /*
    Opens inventory.
    */
        Mousemove, 671, 563
                /*
                Moves mouse to the screen position of the 1st inventory slot. 
                This position will change if you don't have a 1920*1080 monitor. 
                There is no sleep timer before this because the inventory doesn't seem to have a latency at all.
                */
            Sleep 10
                /*
                If the orders go too fast then it can confuse Minecraft. 
                This gives it time to react to the new mouse placement for the next step.
                */
            Send {LButton}
                /*
                Picks up the armor piece. 
                No sleep timer after this as it is very consistent with picking up an item on the first frame.
                */
        Mousemove, 669, 323
                /*
                Moves the armor piece over the chestplate slot.
                If there is no armor here it will just place it on the next command, and take it off if repeated.
                If there is an item here, it switches the two items.
                */
            Sleep 10
            Send {LButton}
                /*
                Actually switches the armor pieces.
                */
        Mousemove, 671, 563
                /*
                Moves back to original inventory position, again dependant on resolution. 
                If you want to change the corridinates, run windows spy AutoHotKey program that comes with the windows installation.
                Place the mouse over the correct inventory slot with minecraft windowed, and then change the coordinates for each one of these.
                */
            Sleep 10
            Send {LButton}
    Send, e
return

/*
This first set replaces the item in your 1st inventory slot with the item in the slot directly above it.
It also normally moves the screen a bit, which is unavoidable without a longer sleep timer.
I haven't tested out the exact time needed to keep the screen still. 
The command for this is Mouse 4 and 1 (xbutton1 is mouse 4, xbutton2 is mouse 5). 
Xbutton 1 is also used for the back key on most systems.
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
Switches to my torches and places it, before switching back. 
A bit inconsistent, but changes 3 button presses to 2. 
Also uses mouse 5 (forward button on Windows) instead of mouse 4
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
Edit note: 
5/7/2018; 3:30 pm PST
Certain delays on the armor switch block were unnecessary. 
Removed them, and dcreased the sleep delay by 30. 
Also moved the mosts relevant script to the top.
*/

/*
Edit note: 
5/7/2018; 3:42 pm PST
Added more comments to the first code block.
*/
