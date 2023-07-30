<# This a simple PowerShell script is to check the Norton Antivirus services, Computer free space and print the details in
the screen. 

Additional services can be checked by looking into the service name of the service in services.msc. 

Copyright: Gokul 2023. 
#>

Clear-Host
Write-Host "Beginning code execution `n------------------------`n"

Write-Host "1. Service check starts `n------------------------`n"

$get_AV_service1 = get-service -Name NortonSecurity
$get_AV_service2 = Get-Service -Name nsWscSvc

Write-Host "Status of Norton Security service:"
$get_AV_service1
Write-Host "`nStatus of Norton WSC service:`n"
$get_AV_service2

Write-Host "`nEnd of services checks `n"

Write-Host "2. Disk space check starts `n---------------------------`n"
Write-Host "Disk general info"
Get-Disk | Format-Table
Write-Host "Get drive information including free space`n"
Get-Volume | Format-Table


