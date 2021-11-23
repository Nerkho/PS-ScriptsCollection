### Convert displayName to userPrincipalName [Active Directory]

When I created this script, I was working in an environment where the User logon name in the Active Directory didn't have any relation to the Display Name.

In a typical scenario a user named Perry Scope would have a logon name like "pscope" or something. But in this environment user logon name were a randomly generated string.

For some particular tasks I would receive a list with only the display name and would need to retrieve the user logon name. I created this script precisely for this purpose.

### Usage

Just feed "namelist.txt" with a list of names and run the script.
The script will then output a "userlogonname.txt" containing the user logon name.
