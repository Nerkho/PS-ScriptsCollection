### Mirror list of folder

This is a simple script that copy a list of folder.

This script uses `Robocopy` with the `/MIR` option. Elements deleted on the source will be deleted on the destination.

### Usage

* Change these lines in script to cater to your needs


````
$sourceServer = "\\SOURCE"
$destServer = "\\DESTINATION"
````

* Feed a list of folder to copy in folderlist.txt