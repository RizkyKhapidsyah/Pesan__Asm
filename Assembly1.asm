.386					; Enable 80386+ instruction set
.model flat, stdcall	; Flat, 32-bit memory model (not used in 64-bit)
option casemap: none	; Case sensitive syntax

include c:\masm32\include\windows.inc
include c:\masm32\include\user32.inc
include c:\masm32\include\kernel32.inc
includelib c:\masm32\lib\user32.lib
includelib c:\masm32\lib\kernel32.lib

.data
      strTitle		db "Pesan",0
      strMessage	db "Hello, Rizky Khapidsyah!",0

.code

start:

    invoke MessageBox, 0, ADDR strMessage, ADDR strTitle, MB_OK
    
    invoke ExitProcess, 0
end start
