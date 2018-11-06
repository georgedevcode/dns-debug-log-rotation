@echo off
#Declaring variables for source file path where the DNS logs are saved and the destination path
$DnsFilePath = "c:\Temp\dns_log\dns_logs" 
$FinalPathFile = "c:\Temp\dns_log\dns_log_collections\dns_log_"
#Getting current Date & Time
$currDate = Get-Date -Format yyyy-MM-dd
#Copy file from the path: C:\Temp\DNS log
Copy-Item -Path $DnsFilePath -Destination $FinalPathFile
#Renaming the file to the corrsponding date.
Get-ChildItem $FinalPathFile | Rename-item -NewName {$_.Basename + '_' + $currDate + $_.Extension}



