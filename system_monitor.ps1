# System Monitor Script (Fixed)
Write-Output "==== System Resource Usage ===="

# 🖥️ CPU Usage
$cpu = (Get-WmiObject win32_processor).LoadPercentage
if ($cpu -ne $null) {
    Write-Output "CPU Usage: $cpu%"
} else {
    Write-Output "CPU Usage: Error fetching CPU data"
}

# 💾 Memory Usage
$os = Get-WmiObject Win32_OperatingSystem
$totalMem = $os.TotalVisibleMemorySize
$freeMem = $os.FreePhysicalMemory

if ($totalMem -gt 0 -and $freeMem -ne $null) {
    $usedMem = $totalMem - $freeMem
    $usedPercent = [math]::Round(($usedMem * 100 / $totalMem),2)
    Write-Output "Memory Usage: $usedPercent%"
} else {
    Write-Output "Memory Usage: Error fetching memory data"
}

# 🖴 Disk Usage
Write-Output "Disk Usage:"
Get-WmiObject Win32_LogicalDisk -Filter "DriveType=3" | ForEach-Object {
    $drive = $_.DeviceID
    $size = $_.Size
    $freeSpace = $_.FreeSpace

    if ($size -gt 0 -and $freeSpace -ne $null) {
        $used = ($size - $freeSpace) * 100 / $size
        $usedRounded = [math]::Round($used,2)
        Write-Output "  $drive used: $usedRounded%"
    } else {
        Write-Output "  $drive used: Error (Disk Size 0 or unavailable)"
    }
}

Write-Output "====================================="
