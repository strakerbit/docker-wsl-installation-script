# Check if the script is running with admin privileges
$Elevated = [System.Security.Principal.WindowsPrincipal][System.Security.Principal.WindowsIdentity]::GetCurrent()
$IsAdmin = $Elevated.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)

# If not running as Administrator, restart the script as Administrator
if (-not $IsAdmin) {
    Write-Host "This script requires administrator privileges. Restarting as administrator..."
    Start-Process powershell -ArgumentList "Start-Process powershell -ArgumentList '-File', '$PSCommandPath' -Verb RunAs" -Verb RunAs
    exit
}

# If running as Administrator, proceed with the Docker installation
Start-Process -Wait -FilePath "Docker Desktop Installer.exe" -ArgumentList `
  "install", `
  "-accept-license", `
  "--installation-dir=`"D:\Dev Program Files\Docker\App`"", `
  "--wsl-default-data-root=`"D:\Dev Program Files\Docker\wsl`"", `
  "--windows-containers-default-data-root=`"D:\\Dev Program Files\\Docker\\windows`""
