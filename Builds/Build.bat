IF NOT EXIST ILReplacer.exe C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc ILReplacer.cs
ILReplacer.exe
IF errorlevel 1 goto ErrorOccurred
Assemble
exit /b

:ErrorOccurred
echo An error occurred while replacing CIL. Please read the error messages above for details.