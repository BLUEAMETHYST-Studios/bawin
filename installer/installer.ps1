$url = "<newest_release_download>"

Invoke-WebRequest -Uri $url -OutFile $env:TEMP/bawin-installer.exe -DisableKeepAlive

Set-Location $env:TEMP
.\bawin-installer.exe

Remove-Item bawin-installer.exe

[Environment]::SetEnvironmentVariable("Path", $Env:PATH + $env:LOCALAPPDATA + "bawin")
