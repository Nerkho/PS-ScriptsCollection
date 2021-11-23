Import-Module ActiveDirectory

# change this line for your environment
$searchBase = "OU=Groups,DC=ad,DC=example,DC=com"
$groups = get-adobject -Filter {(ObjectClass -eq "group")} -SearchBase $searchBase

ForEach($group in $groups){
$groupName = $group.Name
Get-ADGroupMember -Identity $groupName -Recursive | Get-ADUser -Properties DisplayName | Select-Object Name,DisplayName | Export-Csv C:\Temp\$groupName.csv -NoTypeInformation
}


