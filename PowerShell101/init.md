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


