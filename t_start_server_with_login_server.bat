@echo off
cls
echo *** CLEARING OLD LOGS ***
del "logs/zone/" /q

reg add HKCU\Console /v QuickEdit /t REG_DWORD /d 0 /f

if exist bin/shared_memory.exe (
    "bin/shared_memory.exe"
) else (
    shared_memory.exe
)

start perl win_server_launcher.pl zones="30" zone_background_start loginserver kill_all_on_start
exit
