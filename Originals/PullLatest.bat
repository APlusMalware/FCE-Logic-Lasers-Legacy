@ECHO OFF

FOR /F "skip=2 tokens=1,2*" %%A IN ('REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 254200" /v "InstallLocation" 2^>nul') DO (
    set InstallLocation=%%C
)

if not defined InstallLocation (
    echo Could not automatially locate FortressCraft Evolved install directory.
    GOTO END
)

set AssemblyLocation=%InstallLocation%\64\FC_64_Data\Managed\Assembly-CSharp.dll
echo Getting %AssemblyLocation%
copy %AssemblyLocation% .\

set DataLocation=%InstallLocation%\64\Default\Data\TerrainData.xml
echo Getting %DataLocation%
copy %DataLocation% .\

set ModLocation=%InstallLocation%\64\Default\Data\ManufacturerRecipes.xml
echo Getting %ModLocation%
copy %ModLocation% .\

:END