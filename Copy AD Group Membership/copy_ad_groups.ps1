Import-Module ActiveDirectory

$SourceUsername = Read-Host -Prompt "Input the username group membership should be copied from"
$DestUsername = Read-Host -Prompt "Input the username group membership should be copied to"
$groupMembership = Get-ADPrincipalGroupMembership $SourceUsername

foreach ($group in $groupMembership){
Add-ADGroupMember -Identity $group -Members $DestUsername
}