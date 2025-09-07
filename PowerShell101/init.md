# Powershell 101 

> OverView : 

- [ ] 0. Introduction 
- [ ] 1. Powershell OverView 
- [ ] 2. Using Powershell 
- [ ] 3. Taking PowerShell on Premises and Online 

--- 
---

## 01. Introduction 

> Powershell Syntax 

```ps1 
# Verb-Noun   Name   ArgumentString
$ get-service -name  "*net*" 
# Powersehll is case-insensitive *all the same*
$ get-help 
$ Get-Help 
$ GET-HELP 
$ geT-HelP
```

> What is **Powershell** Use ? 
    - Object Oriented 
    - Task Automation 
    - Interactive Shell 
    - Bulk Operations 
    - Rich Script Enviornment 

> What Powershell Basics ? 
    - Use Powershell for consistent, repeatable tasks 
    - Work with built-in providers 
    - Talk to Active Directory, registry, and WMI, natively 
    - Bridge the gap between previous language with aliases 
    - Built into many products: 
        - Microsoft IT products .
        - VMware 
        - Citrix 
        - Many More ...

> How To Read Powershell ? 

```ps1
# verb-Noun Name ArgumentString
$ get-service -name "*net*"

# --- < Property Names > --- # 
Status   Name               DisplayName
------   ----               -----------
Stopped  Netlogon           Netlogon
Running  Netman             Network Connections
Running  netprofm           Network List Service
Stopped  NetSetupSvc        Network Setup Service
Stopped  NetTcpPortSharing  Net.Tcp Port Sharing Service
Stopped  WMPNetworkSvc      Windows Media Player Network Sharing
# --- < Property Value > --- # 
```

> Whata is **Power of the Pipe** `|` ?
    - Output from one command becomes input for the next.    
    - It Strings together multiple commands .
    - Parameter binding is the key .

```ps1
$ Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5 Name, Id, CPU, WorkingSet
# ==== Explaintion
# Get-Process   -> get all Processes as Objects 
# Sort-Object   -> Sorts processes 
# Select-Object -> takes only n items from set of items  
```

> Getting Help  ? 

```ps1
# How to get help for any command 
$ get-help  get-service 
# How to find process which take cpu time greater than 100 
$ get-process | where-object { $_.cpu -gt 100 }  
```


> What is **Cmdlets** ? 

- Lightweight command used within the Windows Powershell environment to Perform specific tasks . 


> What is **Alias** ? 

- Alternate name or nickname for a **cmdlet**, **function**, **script**. 

```ps1 
# How to List All Powershell Commands 
$ Get-Command  # powershell 
$ compgen -c   # Bash 

# How to Find all Command With alias 
$ Get-Alias    # powershell
$ compgen -a   # Bash  

# How To Show only Builtins Commands 
$ compgen -b 
$ Get-Commnad -CommandType Cmdlet 

# Enable Hyper-V 
$ Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Enable PowerShell Managment for Hyper-V 
$ Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Management-PowerShell -All

# Check If Hyper-V Exists 
$ Get-Module -ListAvailable | Where-Object { $_.Name -like "Hyper-V" }

# How To Configures a Virtual Machine 
$ Get-Help Set-Vm            

# How To Install Package Via Winget **Offical Window Package Manager** ? 
$ winget install --id Git.Git -e --source winget

# Install Ubuntu Iso In Windows With **winget** ? 
$ wget -Uri "https://releases.ubuntu.com/22.04/ubuntu-22.04.5-desktop-amd64.iso" -OutFile "C:\ISOs\ubuntu-22.04.iso"

# How To Check If Folder is Exist 
$ New-Item -ItemType Directory -Path "C:\ISOs" -Force 

```

> What is URI ? 

- Uniform Resource Identifier


> More About PowerShell Commands 

```ps1 
# How to find the all Service In Windows System Which `Stopped` and Starting Type `Auto` 
$ Get-Service | Select-Object name,Status, StartType | Where-Object  { $_.Status -ne "Running"  -and $_.StartType -eq "Auto"}
```
