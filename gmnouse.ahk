; 
; mouse location for AHKv2
;

#Requires AutoHotkey v2.0-beta
#NoTrayIcon
#SingleInstance Ignore
SetWorkingDir A_ScriptDir
CoordMode "Pixel", "Screen"
Global oGui
WinMGui()
WinMGui() {
    Global oGui
    oGui := Gui("AlwaysOnTop Resize MinSize +DPIScale","Get mouse coords")
    oGui.OnEvent("Close",WinMClose)
	oGui.Add("Text",,"Mouse Position")
    oGui.Add("Edit","w320 r2 ReadOnly vCtrl_MousePos")
    oGui.Add("Text",,"Saved mouse location ( Press Control button ) ")
    oGui.Add("Edit","xm w320 r10 ReadOnly -Wrap vCtrl_Title")
    oGui.Show("NoActivate")
    WinGetClientPos(&x_temp, &y_temp2,,,"ahk_id " oGui.hwnd)
    SetTimer Update, 100
}
WinMClose(GuiObj) {
    ExitApp
}
Update() {
    Try TryUpdate()
}
TryUpdate() {
    Global oGui
    CoordMode "Mouse", "Screen"
    MouseGetPos &msX, &msY, &msWin, &msCtrl, 2
    actWin := WinExist("A")
    curWin := msWin, curCtrl := msCtrl
    CoordMode "Mouse", "Client"
	MouseGetPos &mcX, &mcY
    mClr := PixelGetColor(msX,msY,"RGB")
    mClr := SubStr(mClr, 3)
    mpText := "Screen:`t" msX ", " msY "`n" "Color:`t" mClr " (Red=" SubStr(mClr, 1, 2) " Green=" SubStr(mClr, 3, 2) " Blue=" SubStr(mClr, 5) ")"
    UpdateText("Ctrl_MousePos", mpText)
}
UpdateText(vCtl, NewText) {
    Global oGui
    ctl := oGui[vCtl], hCtl := Integer(ctl.hwnd)
    ctl.Value := NewText
}
SaveNewLocation() {
	Global oGui
	static OldText := {}
    ctl := oGui["Ctrl_Title"]
	OldText := ctl.Value 
    CoordMode "Mouse", "Screen"
    MouseGetPos &msX, &msY, &msWin, &msCtrl, 2
    actWin := WinExist("A")
    curWin := msWin, curCtrl := msCtrl
    CoordMode "Mouse", "Client"
	MouseGetPos &mcX, &mcY
    mClr := PixelGetColor(msX,msY,"RGB")
    mClr := SubStr(mClr, 3)
	mpText := msX ", " msY "  Color: " mClr
	ctl.Value := mpText . " " "`n"  OldText
}
~*Shift::
~*Ctrl::try SaveNewLocation()
~*Ctrl up::
~*Shift up::SetTimer Update, 100