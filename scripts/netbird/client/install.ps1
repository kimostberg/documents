Invoke-WebRequest -Uri "https://pkgs.netbird.io/windows/x64" -OutFile "C:\Temp\NetBird-Setup.exe"
Start-Process -FilePath "C:\Temp\NetBird-Setup.exe" -ArgumentList "/S" -Wait
Start-Process -FilePath "C:\Program Files\NetBird\NetBird.exe" -ArgumentList "login --management-url https://netbird.ktj.solutions:33073 --admin-url https://netbird.ktj.solutions"
Start-Process -FilePath "C:\Program Files\NetBird\NetBird.exe" -ArgumentList "up"