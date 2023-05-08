@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Lodo Windo" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user Kadim1998 Kadim@1998 /add >nul
net localgroup administrators Kadim1998 /add >nul
net user Kadim1998 /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant Kadim1998:F >nul
ICACLS C:\Windows\installer /grant Kadim1998:F >nul
echo ok
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken - check again your authtoken"
echo Username: Kadim1998
echo Password: Kadim@1998
echo You can login now!
ping -n 10 127.0.0.1 >nul
echo if nead Help
echo my whstapp +9647825481215
facebook Kadim1998.iraqi
