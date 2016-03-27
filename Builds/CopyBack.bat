@ECHO OFF

FOR /F "skip=2 tokens=1,2*" %%A IN ('REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 254200" /v "InstallLocation" 2^>nul') DO (
    set InstallLocation=%%C
)

if not defined InstallLocation (
    echo Could not automatially locate FortressCraft Evolved install directory.
    GOTO END
)

set AssemblyLocation=%InstallLocation%\64\FC_64_Data\Managed
echo Copying Assembly-CSharp.dll to %AssemblyLocation%
copy Assembly-CSharp.dll "%AssemblyLocation%"

set DataLocation=%InstallLocation%\64\Default\Data
echo Copying TerrainData.xml to %DataLocation%
copy ..\TerrainData.xml "%DataLocation%"

set ModLocation=%APPDATA%\..\LocalLow\ProjectorGames\FortressCraft\Mods\XML
echo Copying ManufacturerRecipes.xml to %ModLocation%
copy ..\ManufacturerRecipes.xml "%ModLocation%"

:END
