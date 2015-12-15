@ECHO OFF
"C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6 Tools\ildasm" /NOBAR /OUTPUT="temp.il" "Assembly-CSharp.dll"
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\ilasm.exe" /DLL "temp.il"
"C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6 Tools\ildasm" /NOBAR /OUTPUT="Latest.il" "temp.dll"
del temp.dll temp.il temp.res Assembly-CSharp.dll