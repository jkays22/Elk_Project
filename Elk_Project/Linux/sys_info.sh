
#!/bin/bash
mkdir ~/research 2>/dev/null
find -type f -perm 777 >> ~/research/sys_info.txt
ps -e | head >> ~/research/sys_info.txt
echo "My first practice script" >> ~/research/sys_info.txt
date >> ~/research/sys_info.txt
echo "Machine Info is:" >> ~/research/sys_info.txt
echo $MACHTYPE >> ~/research/sys_info.txt

ifconfig | grep enp0s3 -A 1 | grep inet | awk '{print $2}' >> ~/research/sys_info.txt

echo 'My hostname is:' >> ~/research/sys_info.txt
hostname >> ~/research/sys_info.txt

#can make the >> ~/research/sys_info.txt a variable to make it cleaner
