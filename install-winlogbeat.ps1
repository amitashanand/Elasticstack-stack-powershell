
$file = "$PWD\winlogbeat.zip"
$output = "$PWD"
$winlogDir = "winlogbeat-7.7.0-windows-x86_64"
$installScript = "install-service-winlogbeat.ps1"

$shell = new-object -com shell.application
$zip = $shell.NameSpace($file)
foreach($item in $zip.items())
{
$shell.NameSpace($output).copyhere($item)
}

powershell "$PWD\$winlogDir\$installScript"

Start-Service winlogbeat

Get-Service winlogbeat