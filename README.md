# System Monitor

A lightweight system resource monitoring project that displays your CPU, memory, and disk usage. This project includes two versions:

- **Bash version (`system_monitor.sh`)** for Git Bash users.
- **PowerShell version (`system_monitor.ps1`)** for Windows CMD and PowerShell users.

---

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
  - [Running the Bash Script (Git Bash)](#running-the-bash-script-git-bash)
  - [Running the PowerShell Script (CMD/PowerShell)](#running-the-powershell-script-cmdpowershell)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

---

## Features

- **CPU Usage:** Displays the current CPU load percentage.
- **Memory Usage:** Calculates and displays the percentage of used memory.
- **Disk Usage:** Lists all logical disks and shows used disk space percentage.
- **Cross-Shell Support:** Run on Git Bash, CMD, and PowerShell.

---

## Prerequisites

- **For Bash Script:**
  - [Git for Windows](https://gitforwindows.org/) (includes Git Bash)
  - Alternatively, a Bash-compatible environment like Cygwin or Windows Subsystem for Linux (WSL).

- **For PowerShell Script:**
  - Windows PowerShell (5.1 or newer) or [PowerShell 7+](https://github.com/PowerShell/PowerShell/releases).

---

## Installation

1. **Clone the Repository:**

   Open your terminal or PowerShell and run:
   ```bash
   git clone https://github.com/your-username/system-monitor.git
   cd system-monitor

## Usage

1. **Running the Bash Script (Git Bash)**

Open GitBash and run:
```bash
Username@GitHub_your_user_name MINGW64 ~/Documents/system-monitor
$ chmod +x system_monitor.sh

Username@GitHub_your_user_name MINGW64 ~/Documents/system-monitor
$ ./system_monitor.sh
==== 🖥️ System Resource Usage ====
📌 CPU Usage: 19%
📌 Memory Usage: 62%
📌 Disk Usage:
  C: used: 78.53%
  D: used: 89.65%
  E: used: 64.57%
 used: Error (Disk Size 0)
=====================================
```
2. **Running the PowerShell Script (CMD/PowerShell)**

Open "system-monitor" Directory in Documents And Clone the Repository >> https://github.com/your-username/system-monitor.git

```bash
powershell.exe -ExecutionPolicy Bypass -File "C:\Users\your_user_name\Documents\system-monitor\system_monitor.ps1"
```
Then you will get this kind of output
```bash
==== 🖥️ System Resource Usage ====
📌 CPU Usage: 19%
📌 Memory Usage: 62%
📌 Disk Usage:
  C: used: 78.53%
  D: used: 89.65%
  E: used: 64.57%
 used: Error (Disk Size 0)
=====================================
```

## Contributing

Contributions are welcome! Please fork this repository and submit your pull requests. For major changes, please open an issue first to discuss what you would like to change.

## License
Distributed under the MIT License.

