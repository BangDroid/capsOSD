; 	CapsOSD BangDroid 2023
;	Caps Lock State GUI With Configurable Exclusions

#SingleInstance, force
Menu, Tray, Icon, %A_MyDocuments%\art\ui\ahk\icons\capsTray.ico ;Custom Script icon

;Add programs to group to exclude showing GUI like so:
GroupAdd, nocaps, ahk_exe Cyberpunk2077.exe
;GroupAdd, nocaps, ahk_exe notepad.exe ;Debug only

#IfWinNotActive, ahk_group nocaps
	~CapsLock::
	;SoundBeep, 1000, 100 ;Debug only
		{
			;Create the Gui object
			delay = 500
			CustomColor = 333333
			ypos := A_ScreenHeight - 200
			Gui, MyGui: New, +LastFound +AlwaysOnTop -Caption +ToolWindow
			Gui, MyGui:Color, %CustomColor%
			Gui, MyGui:Font, s38 q5
			Gui, MyGui:Margin, 20, 5
			WinSet, TransColor, %CustomColor% 150
			WinSet, Transparent, 180
			;Show Gui object for each Caps state change
				if getkeystate("capslock","t")
		    {
					Gui, MyGui:Add, Text, cWhite, Caps on
					Gui, MyGui:Show, w230 h75 xCenter y%ypos% NoActivate,
					Sleep, %delay%
					Gui, MyGui:Destroy
			}
				 if getkeystate("capslock","f")
			{
					Gui, MyGui:Add, Text, cWhite, Caps off
					Gui, MyGui:Show, w230 h75 xCenter y%ypos% NoActivate,
					Sleep, %delay%
					Gui, MyGui:Destroy
			}
		}
	return