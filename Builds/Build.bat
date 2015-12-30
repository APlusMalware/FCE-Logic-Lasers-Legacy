@ECHO OFF
IF NOT EXIST Replacer.exe C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc Replacer.cs

DEL "..\\Integrated.il"
Replacer.exe "..\\Originals\\Latest.il" "..\\Integrated.il" "..\\Originals\\Fragments" "..\\Fragments" "..\\Originals\\Fragments\\Replace" "..\\Fragments\\Replace"
IF NOT errorlevel 0 goto ErrorOccurred
call Assemble.bat

DEL "..\\ManufacturerRecipes.xml"
Replacer.exe "..\\Originals\\ManufacturerRecipes.xml" "..\\ManufacturerRecipes.xml" "..\\Originals\\XML\\ManufacturerRecipes.xml" "..\\XML\\ManufacturerRecipes.xml"
IF NOT errorlevel 0 goto ErrorOccurred

DEL "..\\TerrainData.xml"
Replacer.exe "..\\Originals\\TerrainData.xml" "..\\TerrainData.xml" "..\\Originals\\XML\\TerrainData.xml" "..\\XML\\TerrainData.xml"
IF NOT errorlevel 0 goto ErrorOccurred

echo Build Complete
GOTO END

:ErrorOccurred
echo An error occurred while replacing CIL. Please read the error messages above for details.

:END