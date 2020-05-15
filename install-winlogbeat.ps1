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

powershell -ExecutionPolicy UnRestricted -File "$PWD\$winlogDir\$installScript"

copy $PWD\config\winlogbeat.yml $PWD\$winlogDir

powershell "$PWD\$winlogDir\winlogbeat.exe" test config -c $PWD\$winlogDir\winlogbeat.yml

Start-Service winlogbeat

Get-Service winlogbeat
