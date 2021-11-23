### Export AD group membership

This is a simple script that extracts group membership from the active directory.
The script create a .csv file for each group containing the username and display name of each member.

### Usage

Before running the script make sure to change the following line to adapt to your particular environment.

```
$searchBase = "OU=Groups,DC=ad,DC=example,DC=com"
```