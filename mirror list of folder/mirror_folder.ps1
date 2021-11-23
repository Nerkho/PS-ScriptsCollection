$scriptpath = Get-Location

#To modify depending on your needs.
$sourceServer = "\\SOURCE"
$destServer = "\\DESTINATION"

$foldersList = Get-Content "$scriptpath\folderlist.txt"
$logFile = "$scriptpath\robocopy.log"

ForEach($folder in $foldersList){
    $source = "$sourceServer\$folder"

    Date | Out-File -Append $logFile -Encoding ASCII
    "copying $folder..." | Out-File -Append $logFile -Encoding ASCII
    robocopy "$source" "$dest" /MIR /Z /W:5 /A-:SH
    "$folder copied!" | Out-File -Append $logFile -Encoding ASCII
}

