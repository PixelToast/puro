$puro_version = ..\..\puro\bin\puro.exe version --plain
Write-Output "Version: $puro_version"
&"C:\Program Files (x86)\Inno Setup 6\iscc" "/dAppVersion=${puro_version}" install.iss
if(!$?) { Exit $LASTEXITCODE }