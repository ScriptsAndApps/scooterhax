; 
; script with gui for AHKv2
;
#Requires AutoHotkey v2.0-beta
#NoTrayIcon
#SingleInstance Ignore
setKeyDelay 50, 50
setMouseDelay 50
#maxThreadsPerHotkey 10 ;important to disable after loop is enabled
SetWorkingDir A_ScriptDir

CoordMode "Pixel", "Screen"

Global counter2 :=0
Global maxloop2 :=100

Global oGui

Global xlxl := 0
 
global mouselocations := [





[1078, 678], ; gathering

[1177, 90], ; table

[1075, 434], ; ;at table

[516, 766], ;deposit box

[830, 427], ;deposit

[322, 924], ; yes

[1360, 837], ; gather new round starts



 [1837, 964],
 [1780, 959],
 [1737, 959],
 [1685, 967],
 [1688, 915],
 [1742, 917],
 [1788, 923],
 [1835, 918],
 [1837, 876],
 [1784, 878],
 [1738, 874],
 [1691, 876],
 [1836, 829],
 [1785, 831],
 [1740, 828],
 [1690, 834],
 [1839, 793],
 [1787, 786],
 [1735, 791],
 [1686, 788],
 [1839, 745],
 [1787, 745],
 [1735, 746],
 [1684, 744],
 [1833, 700],



]


WinSGui()
WinSGui() {
	global mouselocations
    Global oGui
    oGui := Gui("AlwaysOnTop Resize MinSize +DPIScale","Use hotkeys")
    oGui.OnEvent("Close",WinSClose)
    oGui.Add("Text","w250","")
    oGui.Add("Checkbox","x10 y10 w150 h15 vEnableMouse1","Run script (F3)").OnEvent("Click",startcb)
    oGui.Add("Text","y25","")
    oGui.Show("NoActivate")

    oGui.Move(200,150)  ;;;;; start up locattiioonn
}

WinSClose(GuiObj) {
    ExitApp
}

Global instance :=0

startcb(*) {
	if(oGui["EnableMouse1"].Value==1)
	{
		start()
	}
}
start(*) {

       Global instance
        if(instance==0){
 		instance :=1
		while (oGui["EnableMouse1"].Value==1)
		{
		     
		      doLoop1()
       		}
       		instance :=0	
       }
}
;hotkey name down here this is f3 ( $f3:: )
$f3::{
	oGui["EnableMouse1"].Value := !oGui["EnableMouse1"].Value
	if(oGui["EnableMouse1"].Value==1)
	{
		start()
	}
}
doLoop1() {  



        sleep Random(80,202)

		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		Click mouselocations[1][1], mouselocations[1][2] ;
		
		sleep Random(80,202)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		

		if (Random(0,6)=6){
			
			Click mouselocations[1][1], mouselocations[1][2] ;
			
			sleep Random(80,202)
			if(oGui["EnableMouse1"].Value!=1){
				return
			}
		
		}
		

		if (Random(0,6)=6){
			
			Click mouselocations[1][1], mouselocations[1][2] ;
			
			sleep Random(80,202)
			if(oGui["EnableMouse1"].Value!=1){
				return
			}
		
		}



		 sleep Random(3000,3700)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}




		; etc....
		
		
		Click mouselocations[2][1], mouselocations[2][2]  ; table
		sleep Random(30,40)
		Click mouselocations[2][1], mouselocations[2][2]  ; table
		
			
		sleep Random(3000,3700)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		;;murgee
		
		 sleep Random(50,100)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
			sleep Random(60,90)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
		
            sleep Random(500,600)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
				sleep Random(60,90)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
		

		if (Random(0,6)=6){
		    sleep Random(50,100)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
		sleep Random(60,90)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		if (Random(0,6)=6){
		    sleep Random(50,100)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
			sleep Random(60,90)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		if (Random(0,6)=6){
		    sleep Random(50,100)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
			sleep Random(20,30)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
					
			if (Random(0,1)=1){
				sleep Random(20,40)
				Click mouselocations[3][1], mouselocations[3][2]  ; at table
			sleep Random(20,30)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
			}
			
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

	
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

	
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

	
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

	
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

	

		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		

	
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}


		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

	
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

	
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}


		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

	
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

	
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

	
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		if (Random(0,6)=6){
		    sleep Random(50,100)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
			sleep Random(20,30)
		    Click mouselocations[3][1], mouselocations[3][2]  ; at table
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

	
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}


		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

	
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

;; going to swap



			  sleep Random(50,100)
		    Click mouselocations[4][1], mouselocations[4][2]  ; gggoing to box get lamps
			  sleep Random(30,40)
		    Click mouselocations[4][1], mouselocations[4][2]  ; gggoing to box get lamps
			
			
         sleep Random(1500,1600)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}		
         sleep Random(1500,1600)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}


			  sleep Random(50,100)
		    Click mouselocations[5][1], mouselocations[5][2]  ; gggoing to get lamps
			  sleep Random(30,40)
		    Click mouselocations[5][1], mouselocations[5][2]  ; gggoing to get lamps
			
			
			
				  sleep Random(500,700)
		    Click mouselocations[5][1], mouselocations[5][2]  ; gggoing to get lamps
			  sleep Random(30,40)
		    Click mouselocations[5][1], mouselocations[5][2]  ; gggoing to get lamps
			
			
			
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
			
	    sleep Random(900,1200)
		
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}	
		sleep Random(900,1200)
		
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}	
			
			
		;; click yes
		
		
		

			  sleep Random(50,100)
		    Click mouselocations[6][1], mouselocations[6][2]  ; es
			  sleep Random(30,40)
		    Click mouselocations[6][1], mouselocations[6][2]  ; yes
			

		sleep Random(900,1200)
			sleep Random(900,1200)
				sleep Random(900,1200)
					sleep Random(900,1200)
						sleep Random(900,1200)
							sleep Random(900,1200)
							sleep Random(900,1200)
							sleep Random(900,1200)
							sleep Random(900,1200)
							sleep Random(900,1200)
							sleep Random(900,1200)
							sleep Random(900,1200)
							sleep Random(900,1200)
							sleep Random(900,1200)
							sleep Random(900,1200)
							sleep Random(900,1200)
							sleep Random(900,1200)
	
	
	
	;; go to start
			sleep Random(900,1200)
		
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}	
					sleep Random(900,1200)
		
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}	
					sleep Random(900,1200)
		
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}	
					sleep Random(900,1200)
		
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}	
					sleep Random(900,1200)
		
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}	
					sleep Random(900,1200)
		
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}	
					sleep Random(900,1200)
		
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}	
			
	
		
			  sleep Random(50,100)
		    Click mouselocations[7][1], mouselocations[7][2]  ; gggoing homr
			  sleep Random(40,500)
		    Click mouselocations[7][1], mouselocations[7][2]  ; gggoing home
			

		
						sleep Random(1300,1500)
		
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}	

		
        xlxl := 1
		 
		 
		while xlxl < 26 {
		
			 sleep Random(50,100)
			 Click mouselocations[7+xlxl][1], mouselocations[7+xlxl][2]  ;
			 sleep Random(50,100)
			 Click mouselocations[7+xlxl][1], mouselocations[7+xlxl][2]  ;

			 if (Random(0,6)=6){
				 sleep Random(50,100)
				 Click mouselocations[7+xlxl][1], mouselocations[7+xlxl][2]  ;
				 sleep Random(50,100)
				 Click mouselocations[7+xlxl][1], mouselocations[7+xlxl][2]  ;
			}
			
			xlxl := xlxl + 1
			   if(oGui["EnableMouse1"].Value!=1){
			   	
			xlxl := 0
			return
		}
		
	       sleep Random(400,700)
		}
		   if(oGui["EnableMouse1"].Value!=1){
			   	
			xlxl := 0
			return
		}
		sleep Random(400,700)
		
		xlxl := 0

		
}