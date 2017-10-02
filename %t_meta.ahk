#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

::%t_meta::
	FormatTime, TimeString,, dddd MMMM d, yyyy hh:mm:ss tt
	Send %TimeString%.
Return