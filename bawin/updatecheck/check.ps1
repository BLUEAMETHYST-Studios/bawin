$url = "https://raw.githubusercontent.com/BLUEAMETHYST-Studios/bawin/main/VERSION"
$output = Invoke-WebRequest -Uri $url
$remote_integer = $output.Content.Trim()

$local_integer = Get-Content -Path $Env:LOCALAPPDATA + "/bawin/VERSION.txt"
if ($local_integer -lt $remote_integer) {
    Write-Host "(i) A newer version of bawin is available: $remote_integer"
}