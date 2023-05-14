$url = "https://raw.githubusercontent.com/BLUEAMETHYST-Studios/bawin/main/VERSION"
$output = Invoke-WebRequest -Uri $url
$remote_integer = $output.Content.Trim()

$local_integer = Get-Content -Path $Env:LOCALAPPDATA + "/bawin/VERSION.txt"
if ($local_integer -lt $remote_integer) {
    . $Env:LOCALAPPDATA/bawin/autoupdate/updater.ps1 # server has a newer version
}