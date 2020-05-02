mkdir tmp\
import-module bitstransfer
Start-BitsTransfer "https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip" ".\tmp\steamcmd.zip"
Expand-Archive -Path '.\tmp\steamcmd.zip' -DestinationPath .\
robocopy ".\" steamcmd\ steamcmd.exe momcsgo.txt
.\steamcmd\steamcmd.exe +runscript momcsgo.txt
.\steamcmd\tmp\bin\vpk.exe .\steamcmd\tmp\cstrike\cstrike_pak_dir.vpk
robocopy "steamcmd\tmp\cstrike\cstrike_pak_dir\materials" "css\materials" /MIR
robocopy "steamcmd\tmp\cstrike\cstrike_pak_dir\models" "%css\models" /MIR
robocopy "steamcmd\tmp\cstrike\cstrike_pak_dir\sound" "%css\sound" /MIR
rd /s /q steamcmd

<#function MomDetect
[CmdletBinding()]
if (-not (Test-Path -LiteralPath "C:\Program Files (x86)\Steam\steamapps\common\Momentum Mod")) {
	"ERROR: Momentum Mod Not Detected! Please install Momentum Mod or enter installation directory! (Ex. D:\SteamLibrary\)
	$Directory = Read-Host -Prompt 'Input Directory to the steamapps folder Momentum is installed to:'
}
else {
	robocopy css\ "C:\Program Files (x86)\Steam\steamapps\common\Momentum Mod\momentum\custom\" /MIR
}
#>