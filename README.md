# Docker WSL Installation Script

This is a PowerShell script for installing Docker Desktop on Windows, with custom configurations that allow you to move Docker's data to a separate drive (instead of the default system drive).

## Features:
- Installs Docker Desktop with customized paths for Docker and WSL 2.
- Ensures Docker-related data, including images and containers, are stored on a secondary drive to conserve space on the system drive.

## Usage:

1. Download `install-docker.ps1`.
2. Run the script in PowerShell **as Administrator**. This script will install Docker Desktop and configure paths for Docker and WSL 2.

### Example command to run the script:
```powershell
Start-Process -Wait -FilePath "Docker Desktop Installer.exe" -ArgumentList `
  "install", `
  "-accept-license", `
  "--installation-dir=`"D:\Dev Program Files\Docker\App`"", `
  "--wsl-default-data-root=`"D:\Dev Program Files\Docker\wsl`"", `
  "--windows-containers-default-data-root=`"D:\\Dev Program Files\\Docker\\windows`""
```

## Requirements:
- Windows 10 or later
- Windows Subsystem for Linux **(WSL) version 2**

## Installation Steps:
1. Download the Docker Desktop installer from [Docker's official website](https://www.docker.com/products/docker-desktop/).
2. Download the install-docker.ps1 script.
3. Run the script in a PowerShell terminal as Administrator.

## License:
This project is licensed under the MIT License - see the LICENSE file for details.
