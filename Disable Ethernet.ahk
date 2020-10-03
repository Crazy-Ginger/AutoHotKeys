F8::
Suspend,Toggle
return

F7::
adapter:="Ethernet 2" ; set to the adapter name

If ConnectedToInternet()
    runwait,netsh interface set interface %adapter% disabled,,hide
else
    runwait,netsh interface set interface %adapter% enabled,,hide

; https://autohotkey.com/board/topic/80587-how-to-find-internet-connection-status/?hl=connection

ConnectedToInternet(flag=0x40) { 
Return DllCall("Wininet.dll\InternetGetConnectedState", "Str", flag,"Int",0) 
}

; adapter:="Ethernet 2" ; set to the adapter name

; F8::
; if(t:=!t)
;     runwait,netsh interface set interface "%adapter%" disable,,hide
; else
;     runwait,netsh interface set interface "%adapter%" enable,,hide
; #NoTrayIcon
; #Persistent
; ; return