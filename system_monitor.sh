#!/bin/bash

echo "==== 🖥️ System Resource Usage ===="

# 🖥️ CPU Usage
echo -n "📌 CPU Usage: "
wmic cpu get loadpercentage | awk 'NR==2 {print $1"%"}'

# 💾 Memory Usage (Fixing division by zero error)
echo -n "📌 Memory Usage: "
total_mem=$(wmic OS get TotalVisibleMemorySize | awk 'NR==2 {print $1}')
free_mem=$(wmic OS get FreePhysicalMemory | awk 'NR==2 {print $1}')

if [[ -n "$total_mem" && -n "$free_mem" && "$total_mem" -gt 0 ]]; then
    used_mem=$((total_mem - free_mem))
    used_percent=$((used_mem * 100 / total_mem))
    echo "$used_percent%"
else
    echo "Error fetching memory data"
fi

# 🖴 Disk Usage (Fixing negative percentages)
echo "📌 Disk Usage: "
wmic logicaldisk get DeviceID,FreeSpace,Size | awk 'NR>1 && $1!="" {
    if ($3 > 0) {
        used = ($3 - $2) / $3 * 100
        printf "  %s used: %.2f%%\n", $1, used
    } else {
        printf "  %s used: Error (Disk Size 0)\n", $1
    }
}'

echo "====================================="
