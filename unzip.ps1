$file="C:\Program Files\PSScript\winlogbeat-7.7.0-windows-x86_64.zip"
$destination="C:\Program Files\PSScript\"

Write-Host "$file"
Write-Host "$destination"
$shell = new-object -com shell.application
Write-Host "$shell"
$zip = $shell.NameSpace($file)
Write-Host "$zip"
foreach($item in $zip.items())
{
$shell.Namespace($destination).copyhere($item)
}