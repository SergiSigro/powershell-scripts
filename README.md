# PowerShell Script Collection

This repository hosts a collection of PowerShell scripts designed for various system administration tasks, including managing services, displaying system information, and processing files. Each script is briefly described below along with instructions on how to run them.

## Available Scripts

### ActionMenuRunner.ps1

- **Description**: Displays a menu for the user to select an action, such as listing running services, showing the current system date, launching Notepad, launching Calculator, or exiting the program.
- **Usage**:
  ```powershell
  .\ActionMenuRunner.ps1


### AddDatePrefixToJPG.ps1

- **Description**: This script renames all JPEG files in the current directory by appending the current date in `yyyyMMdd` format as a prefix to the filename. This is useful for organizing and timestamping photographic or image files based on the date the script is run.
- **Usage**:
  ```powershell
  .\AddDatePrefixToJPG.ps1


### ListFilesOver1KB.ps1

- **Description**: Lists all the files in the current directory that are larger than 1024 bytes. Each file's name and size are displayed, providing a quick way to identify larger files within a directory.
- **Usage**:
  ```powershell
  .\ListFilesOver1KB.ps1


### ShowLowFreeSpaceDisks.ps1

- **Description**: This script displays information about disks with a percentage of free space lower than a specified threshold. For each affected disk, it shows the drive letter, free space in GB, and total size in GB, allowing for easy identification of drives that may need attention.
- **Parameters**: 
  - `-FreeSpace <Percentage>`: Specifies the threshold percentage of free space. Drives with free space below this percentage will be listed.
- **Usage**:
  ```powershell
  .\ShowLowFreeSpaceDisks.ps1 -FreeSpace 20

