# Elasticstack-stack-powershell
## Install winlogebeat
* Download the winlog beat zip file from [here](https://www.elastic.co/downloads/beats/winlogbeat)
* Rename the zip file to winlogbeat.zip and copy it to a folder `Program files`
* Give full permission to the folder for the user.
* Run the below script tom install winlogbeat with predefined yaml file configured.
```bash
.\install-winlogbeat.ps1
```