$url = "https://raw.githubusercontent.com/BLUEAMETHYST-Studios/bawin/main/VERSION"
$output = Invoke-WebRequest -Uri $url
$remote_integer = $output.Content.Trim()

$local_integer = Get-Content -Path $Env:LOCALAPPDATA + "/bawin/VERSION"
if ($local_integer -lt $remote_integer) {
    Write-Host "The remote integer is larger than the local integer."
} else {
    Write-Host "The local integer is larger than or equal to the remote integer."
}