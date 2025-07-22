 🏦 Hardware Inventory Tool (XP to Windows 11 Compatible)



This lightweight PowerShell script collects basic hardware and system inventory information from any Windows PC . It’s designed for IT engineers managing inventory collection 



\## ✅ Features



\- ✅ Compatible with Windows XP to Windows 11  

\- 🖥️ Collects CPU, RAM, OS, disk size, serial number (if available)  

\- 🖨️ Lists connected (local) printers  

\- 🌐 Grabs IP address and hostname  

\- 📋 Exports results to a CSV file (`hardware\_inventory.csv`)  

\- 🪟 Shows data on the screen before saving  

\- 🛠️ No admin rights required — safe to run via USB or local disk



\## 📂 Output



The script creates a CSV file with the following columns:



\- PC Name  

\- OS Version  

\- CPU  

\- RAM (GB)  

\- Disk Size (GB)  

\- Serial Number  

\- IP Address  

\- Connected Printers  



\## 🏃‍♂️ How to Use



1\. Download or clone the repo.

2\. Right-click the `.ps1` file → \*\*Run with PowerShell\*\*.

3\. Follow the on-screen prompts. The CSV will be saved in the script's directory.



> 🔒 \*\*Note:\*\* If you see a policy error, run PowerShell as Admin and execute:  

> `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`



\## 🔧 Use Case



Ideal for IT support engineers managing AMC or field operations across banks, hospitals, or remote offices. This script helps collect baseline asset data in seconds, even on legacy systems.



---



\### 📦 Example Output



| PC Name   | OS Version     | CPU        | RAM (GB) | Disk Size (GB) | Serial Number | IP Address    | Printers          |

|-----------|----------------|------------|----------|----------------|----------------|---------------|--------------------|

| BANK-PC01 | Windows 10 Pro | Intel i5   | 8        | 512            | 2F3XK99        | 192.168.1.20  | HP LaserJet P1108 |



---



\## 👨‍🔧 Author



\*\*Arun Raj\*\*  

