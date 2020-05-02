mkdir tmp\
import-module bitstransfer
Start-BitsTransfer "https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip" ".\tmp\steamcmd.zip"
Expand-Archive -Path '.\tmp\steamcmd.zip' -DestinationPath .\
robocopy ".\" steamcmd\ steamcmd.exe momcss.txt
.\steamcmd\steamcmd.exe +runscript momcss.txt
.\steamcmd\tmp\bin\vpk.exe .\steamcmd\tmp\cstrike\cstrike_pak_dir.vpk
robocopy "steamcmd\tmp\cstrike\cstrike_pak_dir\materials" "css\materials" /MIR
robocopy "steamcmd\tmp\cstrike\cstrike_pak_dir\models" "%css\models" /MIR
robocopy "steamcmd\tmp\cstrike\cstrike_pak_dir\sound" "%css\sound" /MIR
rd /s /q steamcmd