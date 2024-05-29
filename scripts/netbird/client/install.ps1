#curl -o netbird.exe https://pkgs.netbird.io/windows/x64
#./netbird.exe /S
#Start-Sleep -Seconds 30
#netbird login --management-url https://netbird.ktj.solutions:33073 --admin-url https://netbird.ktj.solutions

Invoke-WebRequest -Uri "https://pkgs.netbird.io/windows/x64" -OutFile "C:\Temp\NetBird-Setup.exe"
Start-Process -FilePath "C:\Temp\NetBird-Setup.exe" -ArgumentList "/SILENT" -Wait
Get-ItemProperty -Path "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"` | Where-Object {$_.DisplayName -like "*NetBird*"}
Start-Process -FilePath "C:\Program Files\NetBird\NetBird.exe" -ArgumentList "login --management-url https://netbird.ktj.solutions:33073 --admin-url https://netbird.ktj.solutions"