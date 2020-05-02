mport-module bitstransfer
Start-BitsTransfer "https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip" ".\steamcmd.zip"
Expand-Archive -Path '.\steamcmd.zip' -DestinationPath ".\steamcmd\"
Remove-Item steamcmd.zip
robocopy ".\" steamcmd\ momtf2.txt
.\steamcmd\steamcmd.exe +runscript momtf2.txt
.\steamcmd\tmp\bin\vpk.exe .\steamcmd\tmp\cstrike\cstrike_pak_dir.vpk
robocopy /JOB:rcj\tf2models
robocopy /JOB:rcj\tf2materials
robocopy /JOB:rcj\tf2sound
Remove-Item -path steamcmd -recurse\

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