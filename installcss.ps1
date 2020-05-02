import-module bitstransfer
Start-BitsTransfer "https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip" ".\steamcmd.zip"
Expand-Archive -Path '.\steamcmd.zip' -DestinationPath ".\steamcmd\"
Remove-Item steamcmd.zip
robocopy ".\" steamcmd\ momcss.txt
.\steamcmd\steamcmd.exe +runscript momcss.txt
.\steamcmd\tmp\bin\vpk.exe .\steamcmd\tmp\cstrike\cstrike_pak_dir.vpk
robocopy /JOB:rcj\cssmodels
robocopy /JOB:rcj\cssmaterials
robocopy /JOB:rcj\csssound
Remove-Item -path steamcmd -recurse\