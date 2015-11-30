"C:\Windows\Microsoft.NET\Framework\v4.0.30319\ilasm.exe" /DLL "../Integrated.il"
move "..\Integrated.dll" ".\"
del "Assembly-CSharp.dll"
ren "Integrated.dll" "Assembly-CSharp.dll"

"C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6 Tools\ildasm" /OUTPUT="Assembly-CSharp.il" "Assembly-CSharp.dll"