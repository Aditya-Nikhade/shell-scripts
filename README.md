Shell Script Projects – System Monitoring & Maintenance Utilities
This repository contains three independent Bash scripts designed for basic system monitoring and file management tasks. Each script addresses a different administrative function commonly required in Linux-based environments.

📁 Project 1: RAM Availability Checker
Description:
This script checks the total available RAM on the system and compares it against a threshold (3500MB). If the available memory exceeds the threshold, it prints a message confirming sufficient space; otherwise, it warns about insufficient memory.

Key Features:

Uses free -mt to assess total system memory.

Customizable threshold for minimum memory requirement.

💽 Project 2: Disk Usage Monitor (Partition Specific)
Description:
This script monitors disk usage on the sda3 partition. If the usage exceeds 90%, it alerts the user about critically low free space. Otherwise, it displays the percentage of available disk space.

Key Features:

Uses df -H for human-readable disk stats.

Automatically strips the percentage symbol and compares numeric value.

Simple alert mechanism for disk capacity monitoring.

🗂 Project 3: File Archiver
Description:
This script automates the process of archiving large files from a specified directory. It finds files larger than 3KB (configurable), compresses them using gzip, and moves them to an archive folder inside the target directory.

Key Features:

Customizable base directory and depth level for file search.

Automatically creates an archive folder if not present.

Archives only if a run flag is set to 0 (can be extended to control repeated runs).

Uses find for filtering large files and performs compression + move in one go.

