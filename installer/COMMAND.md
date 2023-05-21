# DISCLAIMER

Doesn't work, just don't run yet.

## Copy this and paste it into CMD:
```
powershell set-executionpolicy remotesigned && curl -s -L https://raw.githubusercontent.com/BLUEAMETHYST-Studios/bawin/main/installer/installer.ps1 -o %TEMP%/bawin-ps1-installer.ps1 && powershell .\$Env:TEMP + "/bawin-ps1-installer.ps1"
```