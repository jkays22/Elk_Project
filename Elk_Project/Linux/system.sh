
#!/bin/bash

#Free memory available
free -h > ~/backups/freemem/free_mem.txt

#Disk Usage
du -h > ~/backups/diskuse/disk_usage.txt

#List of open files
lsof > ~/backups/openlist/open_list.txt

#System Disk Space stats
df -h > ~/backups/freedisk/free_disk.txt
