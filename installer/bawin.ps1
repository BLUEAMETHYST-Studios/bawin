Set-Location $Env:LOCALAPPDATA
git clone https://github.com/BLUEAMETHYST-Studios/bawin
[Environment]::SetEnvironmentVariable("Path", $Env:Path + ";%LOCALAPPDATA%/bawin/scripts", "User")