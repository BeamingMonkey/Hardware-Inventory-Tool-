$ComputerInfo = Get-CimInstance Win32_ComputerSystem
$CPU = Get-CimInstance Win32_Processor
$OS = Get-CimInstance Win32_OperatingSystem
$Disk = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3"
$BIOS = Get-CimInstance Win32_BIOS

$Inventory = [PSCustomObject]@{
    Hostname      = $env:COMPUTERNAME
    Manufacturer  = $ComputerInfo.Manufacturer
    Model         = $ComputerInfo.Model
    SerialNumber  = $BIOS.SerialNumber
    TotalRAM_GB   = [math]::Round($ComputerInfo.TotalPhysicalMemory / 1GB, 2)
    CPU           = $CPU.Name
    OS            = $OS.Caption
    OSBuild       = $OS.BuildNumber
    DiskTotal_GB  = [math]::Round($Disk.Size / 1GB, 2)
    FreeDisk_GB   = [math]::Round($Disk.FreeSpace / 1GB, 2)
    DateCollected = (Get-Date).ToString("yyyy-MM-dd HH:mm")
}

$Folder = "C:\IT\Inventory"
if (!(Test-Path $Folder)) {
    New-Item -Path $Folder -ItemType Directory | Out-Null
}

$Path = "$Folder\$env:COMPUTERNAME-HW.csv"
$Inventory | Export-Csv -Path $Path -NoTypeInformation -Force

Write-Host "✅ Hardware info saved to: $Path"
