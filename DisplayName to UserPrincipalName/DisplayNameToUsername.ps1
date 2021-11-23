Import-Module ActiveDirectory

$fileIn = Get-Content namelist.txt

$username = ForEach ($displayName in $file){
$displayNameTrim = $displayName.Trim()
Get-ADUser -Filter {DisplayName -like $displayNameTrim} | Select-Object Name
}

echo $username | Out-File -Append userlogonname.txt

