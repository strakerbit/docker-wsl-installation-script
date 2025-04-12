Start-Process -Wait -FilePath "Docker Desktop Installer.exe" -ArgumentList `
  "install", `
  "-accept-license", `
  "--installation-dir=`"D:\Dev Program Files\Docker\App`"", `
  "--wsl-default-data-root=`"D:\Dev Program Files\Docker\wsl`"", `
  "--windows-containers-default-data-root=`"D:\\Dev Program Files\\Docker\\windows`""
