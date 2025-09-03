# === Script For Install Choc Package Manager in Windows === # 

Set-ExecutionPolicy Bypass -Scope Process -Force   # set Execution Policy 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072 # Update System Network Service 
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) # Create Download Object To Download Command 

