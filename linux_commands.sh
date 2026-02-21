# System Commands
sudo -i : Switches to the root user (or) sudo su -
exit : Logs out of current user
uname : Shows OS type
uname -r : Displays kernel version
uname -a : Shows complete OS info
clear: Clears the terminal screen (or) ctrl + l
uptime : Displays details of how long the system is up
uptime -s : Shows the exact time and date system started
uptime -p : Shows uptime duration in readable format
hostname: Displays system's private DNS name
hostname -i : Shows system's private IP
hostnamectl set-hostname “swiggy” : Sets a new hostname
ip addr : used to get private IP
ip route : used to get private IP
ifconfig : used to get private IP
date : Shows current date and time 
date +"%d" : Shows current day
date +"%m" : Shows current month
date +"%y" : Shows current year
date +"%A" : Shows current day as like Tuesday
date +"%B" : Shows current month as like July
date +"%D" : Shows the current date as MM/DD/YYYY
date +"%F" : Shows the current date as YYYY-MM-DD
date +"%H" : Shows current hour
date +"%M" : Shows current minutes
date +"%S" : Shows current seconds
timedatectl : used to get timezones 
timedatectl set-timezone Asia/Kolkata : Sets system timezone to IST
cal : gets calendar
cal 2026 : gets specific year's calendar
cal 8 2028 : gets specific month's calendar in a year
who : Lists connected users
last -F: Shows Login history (past + current sessions)
whoami : Shows current user
ps : Lists running processes
kill -9 PID : used to kill a process
history : Shows the linux commands performed


# Hardware Commands
cat /proc/cpuinfo : Shows detailed CPU specs
lscpu : Displays CPU information
cat /proc/meminfo : Shows detailed RAM info
free : Displays RAM usage
free -m : Displays RAM usage in MB
df -h : Shows EBS Volume usage
fdisk -l: Lists all available disk drives and their partitions on the system
top: lscpu + free + ps (live, updating every second)

# File Commands
cat : Reads file data
cat filename : Displays file content
tac filename : Displays file content in reverse order (last line first)
cat -n filename : Displays file content with line numbers
head filename : Displays the first 10 lines of the file by default
head -5 filename : Displays the first 5 lines of the file
tail filename : Displays the last 10 lines of the file by default
tail -8 filename : Displays the last 8 lines of the file
sed -n '5,17p' filename : Displays lines from line 5 to 17 from the file
sed -n '3p' filename : Prints only line number 3 from the file  
touch : Creates a file
ll or ll -l : Lists files alphabetically with detailed information
ll -r : Lists files in reverse order
ll -t : Lists files sorted by modification time
ll -a : Lists all files including hidden ones
ls : Lists files
touch file1 : Creates a single file
touch file1 file2 file3 : Creates multiple files
touch file{1..5} : Creates files in sequence 
rm filename : Removes a file (Asks permission)
rm -f filename : Forcefully removes a file (without confirmation)
rm -f file1 file2 : Removes multiple files
rm -f * : Removes all files in the current directory
rm -f a* : Removes all files starting with "a"
rm -f *.txt : Removes all `.txt` files


# Directory Commands
mkdir : Creates directory     
mkdir folder1 : Creates a single directory  
mkdir folder1 folder2 : Creates multiple directories  
mkdir folder{1..5} : Creates directories in sequence (folder1 to folder5)  
rmdir folder : Removes an empty directory  
rmdir folder1 folder2 : Removes multiple empty directories  
rmdir * : Removes all empty directories in the current path  
rmdir a* : Removes all empty directories starting with "a"  
rm -rf folder : Deletes a directory with all its contents  
rm -rf * : Deletes all files and folders in the current directory  
cd folder1 : Navigates into a directory  
cd or cd ~ : Goes to the home directory  
cd - : Switches to the previous directory 
cd .. : Moves one level down in the directory structure  
cd ../../ : Moves two levels down 
pwd : Prints the current working directory  
touch foldername/filename : Creates a file inside a folder
touch foldername/filename foldername/filename : Creates multiple files inside a folder  
mkdir folder1/folder2 : Creates a subfolder inside a folder
mkdir folder1/folder2 folder1/folder3 : Creates multiple subfolders inside a folder1
mkdir -p folder1/folder2 : Creates parent and subdirectories at once (no error if folder already exists)


# Cat, Copy, Move Commands
cat > filename : Overwrites file content  
cat >> filename : Appends data to the file
cat source >> destination : Appends source content to destination (no overwrite)
cp source destination : Copies file/folder (overwrites if destination has data)
cp source source destination : copies multiple files
cp -r source source destination : copies multiple folders recursively
cat source | tee dest dest dest > /dev/null : copies source file content to multiple files
mv source destination : Moves or renames file/folder (overwrites if destination exists and deletes the source after moving)


# User Commands
useradd username : Creates a new user (Group & Path also gets created) 
passwd username : Sets or changes password for a user 
su - username : Switches to the specified user with a login shell
cat /etc/passwd (or) getent passwd : Lists all users
id username : Shows UserID, GroupID, and group info of the specified user
userdel username : Deletes a user (User & Group will be deleted)
userdel -r username : Delets the User, Group & Path


# Group Commands
groupadd groupname : Creates a new group  
getent group (or) cat /etc/group : Lists all groups  
groupdel groupname : Deletes a group  
usermod -a -G groupname username : Adds a user to a group without removing from existing groups 


# File Owners Commands
chown username filename : Changes owner of a file  
chown username file1 file2 file3 : Changes owner of multiple files  
chown username * : Changes owner of all files in the directory  
chgrp groupname filename : Changes group of a file  
chgrp groupname file1 file2 file3 : Changes group of multiple files  
chgrp groupname * : Changes group of all files in the directory  
chown username:groupname filename : Changes owner and group of a file  
chown username:groupname file1 file2 : Changes owner and group of multiple files  
chown username:groupname * : Changes owner and group of all files  
chown username:groupname foldername : Changes owner and group of a folder  
chown -R username:groupname foldername : Recursively changes owner and group of folder and its contents 


# File Permissions Commands
chmod 777 filename : Gives all permissions (read, write, execute) to users, groups & others  
chmod 751 file1 file2 file3 : Sets specific permissions for multiple files  
chmod 111 folder : Gives execute-only permission to users, groups & others for the folder  
chmod 777 folder1 folder2 folder3 : Gives full permissions to multiple folders  
chmod 777 * : Gives full permissions to all files in the current directory  
chmod -R 777 folder : Recursively gives full permissions to folder and its contents  
chmod +x filename : Adds execute permission to a file


# Search Commands
grep "word" filename : Searches for word in the file and displays matching lines
grep -n "word" filename : Searches for the word & shows matching lines with line numbers
grep -in "word" filename : Case-insensitive search with line numbers
grep -c "word" filename : Counts occurrences of the word in the file
grep -in -e "word1" -e "word2" -e "word3" filename : Case-insensitive search for multiple words with line numbers
grep -in "word" file1 file2 : Case-insensitive search for a word in multiple files with line numbers  
grep -in -e "word1" -e "word2" -e "word3" file1 file2 : Case-insensitive search for multiple words in multiple files with line numbers  
grep -in -e "word1" -e "word2" -e "word3" * : Case-insensitive search for multiple words in all files with line numbers  
find . -name aws : Searches for files and directories named "aws" in the current directory and subdirectories
find . -type d -name Balaji : Finds directories named "Balaji"  
find . -type f -name Balaji : Finds files named "Balaji"  
find . -type d -empty : Finds empty directories  
find . -type d ! -empty : Finds non-empty directories  
find . -type f -empty : Finds empty files  
find . -type f ! -empty : Finds non-empty files  
find . -group flipkart : Finds files and folders owned by group "flipkart"  
find . -user amazon : Finds files and folders owned by user "amazon"  
find . -perm 777 : Finds files with full permissions (read, write, execute for all)
updatedb : Updates the database used by `locate` to reflect recent file changes  
locate filename : Quickly finds the path of files and directories matching "filename"  



# Installations
yum install packagename -y: Installs a package that automatically confirms the installation prompt


wget: Command-line tool to download files from the internet; commonly used to fetch installation packages or scripts on Linux servers
tar -zxvf <file>.tar.gz: Extracts a `.tar.gz` (gzip compressed) archive
unzip filename.zip: Linux command used to extract files from a .zip archive









 






