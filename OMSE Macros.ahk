!Numpad0::
SleepVar = 500
gosub, SplashSelect
gosub, MasterGui
return

;|||||||||||||||||||||||
;\\\\\Splash Config/////
;|||||||||||||||||||||||
SplashSelect:
Random, Num, 1, 4
gosub, Splash%Num%
Return

Splash1:
gui, 2:+alwaysontop -caption
gui, 2:add, picture, x0 y0 w451 h412, troll.png
gui, 2:add, text, x0 y412 w451 h20 vLoading, Loading...
gui, 2:show, w451 h432
Sleep 1000
guicontrol, 2:, Loading, Still Loading...
Sleep 1000
guicontrol, 2:, Loading, Pretending to Load some more...
Sleep 1000
guicontrol, 2:, Loading, Why is  this  taking so long?...
Sleep 1000
guicontrol, 2:, Loading, trolololol!...
sleep 1000
gui, 2:destroy
Return

Splash2:
gui, 2:+alwaysontop -caption
gui, 2:add, picture, x0 y0 w336 h466, Bromance.png
gui, 2:add, text, x0 y466 w336 h20 vLoading, What happens @ Spectrum...
gui, 2:show, w336 h486
Sleep 2500
guicontrol, 2:, Loading, Stays @ Spectrum...?
Sleep 2500
gui, 2:destroy
Return

Splash3:
gui, 2:+alwaysontop -caption
gui, 2:add, picture, x0 y0 w500 h490, Splash3.png
gui, 2:add, text, x0 y490 w500 h20 vLoading, Loading...
gui, 2:show, w500 h510
sleep 5000
gui, 2:destroy
Return

Splash4:
gui, 2:+alwaysontop -caption
gui, 2:add, picture, x0 y0 w618 h386, SplashDragon.png
gui, 2:add, text, x0 y386 w618 h20 vLoading, Loading...
gui, 2:show, w618 h406,
Sleep 5000
gui, 2:destroy
Return

;|||||||||||||||||||
;\\\\\MasterGUI/////
;|||||||||||||||||||
MasterGui:
gui +alwaysontop +toolwindow
gui, add, button, x0 y0 w100 h20 gActivateSWGUI, Activate PRV-SW
gui, add, button, x0 y20 w100 h20 gActivateVMGUI, Activate VM
gui, show, w260 h220, OMSE Master Menu
Return

MasterBack:
WinGetPos, winx, winy,,, A
gui destroy
gui +alwaysontop +toolwindow
gui, add, button, x0 y0 w100 h20 gActivateSWGUI, Activate PRV-SW
gui, add, button, x0 y20 w100 h20 gActivateVMGUI, Activate VM
gui, show, x%Winx% y%Winy% w260 h220, OMSE Master Menu
return

;|||||||||||||||||||||||
;\\\\\ActivateSWGUI/////
;|||||||||||||||||||||||
ActivateSWGUI:
WinGetPos, winx, winy,,, A
gui destroy
gui +alwaysontop +toolwindow
gui, add, text, x0 y0 w60 h20, Account#:
gui, add, edit, x60 y0 w80 h20 vAccount,
gui, add, text, x0 y20 w60 h20, Phone#:
gui, add, edit, x60 y20 w80 h20 vPhone,
gui, add, text, x0 y40 w60 h20, Serial#:
gui, add, edit, x60 y40 w80 h20 vSN,
gui, add, text, x0 y60 w60 h20, Model#:
gui, add, dropdownlist, x60 y60 w80 h240 AltSubmit vMTA, 502|502G|508A|552G|602G|ABC022|ATG1672|DPC2203|DPX2203|DSAMS|DVW3200|DVW3201|DWG855T|SBV5222|SBV5322|TC8717T|TG1672|TG1682|TG852G|TG862G|TM402|TM508A|TM512A|TM602|TM604G|TM608G|U10C022
gui, add, text, x0 y80 w60 h20, MAC
gui, add, edit, x60 y80 w80 h20 vMAC,
gui, add, text, x0 y100 w60 h20, Ported?
gui, add, checkbox, x60 y100 w80 h20 vPortedVar,Yes
gui, add, text, x0 y120 w60 h20, Line#:
gui, add, edit, x60 y120 w80 h20 vLineNum,
gui, add, text, x0 y140 w60 h20, RateCenter:
gui, add, edit, x60 y140 w80 h20 vRateCenter1,
gui, add, text, x0 y160 w60 h20, State:
gui, add, edit, x60 y160 w80 h20 vRateCenter2,
gui, add, text, x0 y180 w60 h20, First Name:
gui, add, edit, x60 y180 w80 h20 vFirstname,
gui, add, text, x0 y200 w60 h20, Last Name:
gui, add, edit, x60 y200 w80 h20 vLastname,

gui, add, text, x150 y0 w70 h20, Private CID?
gui, add, checkbox, x220 y0 w40 h20 vPrivateVar,Yes
gui, add, text, x150 y20 w70 h20, ACB?
gui, add, checkbox, x220 y20 w40 h20 vACBVar,Yes
gui, add, text, x150 y40 w70 h20, ICB?
gui, add, checkbox, x220 y40 w40 h20 vICBVar,Yes
gui, add, button, x150 y60 w110 h20, *Reserved*
gui, add, button, x150 y80 w110 h20 gActivateSW, Send to OMSE
gui, add, button, x150 y100 w110 h20, *Reserved*
gui, add, button, x150 y120 w110 h20 gMasterBack, Master Menu

gui, show, x%Winx% y%Winy% w260 h220, Activate PRV-SW
Return

GuiClose:
GuiEscape:
gui, destroy
Return


;|||||||||||||||||||||
;\\\\\ActivateSW//////
;|||||||||||||||||||||

ActivateSW:
BlockInput, on
gui, submit
IfWinExist, Digital Phone Service - Windows Internet Explorer
{
WinActivate, Digital Phone Service - Windows Internet Explorer
WinWait, Digital Phone Service,, 5
send ^0
sleep %Sleepvar%
Send {f11}
sleep 3000
MouseMove, 550, 184,
Mouseclick
Mouseclick
Send r
MouseMove, 109, 119,
Mouseclick
Sleep %SleepVar%
send ICOMS{tab}{tab}{tab}{Sleep 100}%A_MM%%A_DD%%A_YYYY%{tab}{tab}%Account%{tab}{tab}%Phone%
MouseMove, 115, 143,
Mouseclick
gosub, addrow
send %SN%{tab}
Loop, %MTA%
	Send {down}
sleep %SleepVar%
MouseMove, 157, 193,
Mouseclick
gosub, addrow
send {down}{down}{tab}%MAC%{tab}%LineNum%
MouseMove, 173, 243,
Mouseclick
gosub, addrow
send %Phone%{tab}{Tab}
If (PortedVar = "1")
	Send {down}
else
	Send {down}{down}
Loop, 3
	send {tab}2647
send {tab}{tab}
if (PrivateVar = "1")
	Send {down}{down}
else
	send {down}
send {tab}%RateCenter1%{tab}%RateCenter2%{tab}{down}
MouseMove, 204, 316,
Mouseclick
gosub, addrow
send DP01
gosub, addfeat
send CNAM{tab}%LastName%{space}%Firstname%
gosub, addfeat
send CWCID
gosub, addfeat
send 3WAY
gosub, addfeat
send BLOCK
gosub, addblock
send 976{tab}Y
gosub, addblock
send 900{tab}Y ;(((Options for ACB and ICB)))
if (ACBVar = "1")
{
gosub, addblock
send INTL
gosub, addblock
send NDA
gosub, addblock
send DA
gosub, addblock
send 0+
gosub, addblock
send 411
gosub, addblock
send CASUAL
}
else if (ICBVar = "1")
{
gosub, addblock
send INTL
}
sleep %SleepVar%
Send {F11}
}
gui, show
Blockinput, off
Return

;|||||||||||||||||||||||
;\\\\\ActivateVMGUI/////
;|||||||||||||||||||||||
ActivateVMGUI:
WinGetPos, winx, winy,,, A
gui destroy
gui +alwaysontop +toolwindow
gui, add, text, x0 y0 w60 h20, Account#:
gui, add, edit, x60 y0 w80 h20 vAccount,
gui, add, text, x0 y20 w60 h20, Phone#:
gui, add, edit, x60 y20 w80 h20 vPhone,
gui, add, text, x0 y180 w60 h20, First Name:
gui, add, edit, x60 y180 w80 h20 vFirstname,
gui, add, text, x0 y200 w60 h20, Last Name:
gui, add, edit, x60 y200 w80 h20 vLastname,
gui, add, button, x150 y60 w110 h20, *Reserved*
gui, add, button, x150 y80 w110 h20 gActivateVM, Send to OMSE
gui, add, button, x150 y100 w110 h20, *Reserved*
gui, add, button, x150 y120 w110 h20 gMasterBack, Master Menu

gui, show, x%Winx% y%Winy% w260 h220, Activate PRV-VM
Return

;||||||||||||||||||||
;\\\\\ActivateVM/////
;||||||||||||||||||||
ActivateVM:
gui, submit
BlockInput, on
IfWinExist, Digital Phone Service - Windows Internet Explorer
{
WinActivate, Digital Phone Service - Windows Internet Explorer
WinWait, Digital Phone Service,, 5
send ^0
sleep %Sleepvar%
Send {f11}
sleep 3000
MouseMove, 550, 184,
Mouseclick
Mouseclick
Send r
MouseMove, 109, 119,
Mouseclick
Sleep %SleepVar%
send ICOMS{tab}{tab}{tab}{Sleep 100}%A_MM%%A_DD%%A_YYYY%{tab}{tab}%Account%{tab}{tab}%Phone%
MouseMove, 115, 143,
Mouseclick
gosub, addrow
MouseMove, 158, 191,
Mouseclick
Sleep %SleepVar%
gosub, addrow
MouseMove, 176, 240,
Mouseclick
sleep %sleepvar%
gosub, addrow
send %phone%
Loop 10
	send {tab}
send {down}{tab}{down}
MouseMove, 188, 319,
Mouseclick
Sleep %Sleepvar%
gosub, addrow
send VM01
gosub, addfeat
MouseMove, 209, 414,
Mouseclick
sleep %sleepvar%
gosub, addrow
send gender{tab}F
gosub, addfeat
MouseMove, 205, 494,
Mouseclick
sleep %SleepVar%
gosub, addrow
send preferredLang{tab}ENG
gosub, addfeat
MouseMove, 209, 567,
Mouseclick
Sleep %Sleepvar%
gosub, addrow
send first{tab}%Firstname%
gosub, addfeat
MouseMove, 201, 643,
Mouseclick
sleep %Sleepvar%
gosub, addrow
send last{tab}%LastName%
}
gui, show
BlockInput, off
Return

;||||||||||||||||
;\\\\\AddRow/////
;||||||||||||||||
Addrow:
MouseMove, 41, 1063,
Sleep 200
Mouseclick
sleep 200
MouseMove, 62, 1047,
Mouseclick
Sleep %SleepVar%
Return

;|||||||||||||||||
;\\\\\AddFeat/////
;|||||||||||||||||
AddFeat:
MouseMove, 178, 366,
Mouseclick
gosub, addrow
Return


;||||||||||||||||||
;\\\\\AddBlock/////
;||||||||||||||||||

AddBlock:
MouseMove, 211, 566,
Mouseclick
gosub, addrow
Return

;|||||||||||||||||
;\\\\\HotKeys/////
;|||||||||||||||||

!`::Reload