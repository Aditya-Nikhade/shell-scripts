# Shell Script Projects – System Monitoring & Maintenance Utilities

A collection of lightweight Bash scripts for basic system administration tasks such as memory monitoring, disk space checks, and automated file archiving. Ideal for Linux users who want to automate essential monitoring and housekeeping routines.

## 🧩 Features

- Monitor available RAM and alert if below a defined threshold
- Check disk space usage for specific partitions
- Archive large files from a directory into a dedicated archive folder
- Customizable settings for thresholds, directory paths, and file sizes

---

## 📁 Project 1: RAM Availability Checker

**Description:**  
Checks the total available RAM on the system and compares it against a set threshold (default: 3500MB). Alerts if memory is insufficient.

### Key Features
- Uses `free -mt` to assess total system memory
- Customizable memory threshold
- Simple output for quick status check

---

## 💽 Project 2: Disk Usage Monitor (Partition Specific)

**Description:**  
Monitors the disk usage of a specific partition (`sda3`) and alerts if usage exceeds 90%. Otherwise, it shows how much free space is left.

### Key Features
- Uses `df -H` for human-readable disk statistics
- Filters partition info and removes `%` symbol
- Alerts user when disk space is critically low

---

## 🗂 Project 3: File Archiver

**Description:**  
Automates the process of archiving large files in a specified directory. Compresses files using `gzip` and moves them into an `archive` subdirectory.

### Key Features
- Configurable base directory, search depth, and file size threshold
- Automatically creates archive folder if it doesn't exist
- Archives files only if a control flag is set (can be extended)
- Uses `find`, `gzip`, and `mv` for file management

---

## 🛠 Tech Stack

- **Language:** Bash (Shell scripting)
- **Tools Used:** `free`, `df`, `awk`, `grep`, `find`, `gzip`, `mv`
- **Platform:** Linux/Unix systems

---

## 🔧 How to Run

Ensure you have execution permissions:

```bash
chmod +x project1.sh
./project1.sh

chmod +x project2.sh
./project2.sh

chmod +x project3.sh
./project3.sh
