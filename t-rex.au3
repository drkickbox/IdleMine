#include "C:\Program Files (x86)\AutoIt3\Include\Timers.au3"
Local $state = 0
While 1
   Sleep(1000)
   Local $Dimensions = WinGetPos('')
   Local $WinWidth = $Dimensions[2]
   Local $WinHeight = $Dimensions[3]
   $idleTimer = _Timer_GetIdleTime()
; Full eth with idle and no fullscreen
   If $idleTimer > 150000 And $WinWidth < @DesktopWidth And $WinHeight < @DesktopHeight And $state <> 1 Or Not ProcessExists("t-rex.exe") Then
      Run("C:\Program Files\trexminer\eth-start.bat")
	  $state = 1
; Partial eth with no idle and no fullscreen
   ElseIf $idleTimer < 5000 And $WinWidth < @DesktopWidth And $WinHeight < @DesktopHeight And $state <> 2 Or Not ProcessExists("t-rex.exe") Then
	   Run("C:\Program Files\trexminer\eth-lowload.bat")
	   $state = 2
; No eth with no idle and fullscreen
   ElseIf $idleTimer < 5000 And $WinWidth >= @DesktopWidth And $WinHeight >= @DesktopHeight And ProcessExists("t-rex.exe") Then
      Run("C:\Program Files\trexminer\eth-stop.bat")
   EndIf
WEnd