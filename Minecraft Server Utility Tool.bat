@echo off
title Minecraft Server Utility Tool
echo ===============================
echo Welcome to Minecraft Utility Tool
echo ===============================
echo [1] Start Server
echo [2] Backup World
echo [3] Install Mod
echo [4] Exit
echo ===============================
set /p choice=Choose an option (1-4): 

if %choice%==1 (
    echo Starting Minecraft server...
    java -Xms1024M -Xmx1024M -jar server.jar nogui
    pause
) else if %choice%==2 (
    echo Backing up world...
    xcopy /E /I "C:\MinecraftServer\world" "C:\Backups\world_backup_%date:~-10,2%-%date:~-7,2%-%date:~-4%"
    echo Backup complete!
    pause
) else if %choice%==3 (
    echo Installing mod...
    echo Please place the mod file in the "Mods" folder and press any key to continue.
    pause
    xcopy /E /I "C:\Mods" "C:\MinecraftServer\mods"
    echo Mod installation complete!
    pause
) else if %choice%==4 (
    echo Exiting...
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    cls
    goto start
)