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
whoami : Shows current user
ps : Lists running processors
kill -9 PID : used to kill a processor
history : Shows the linux commands performed


# Hardware Commands
cat /proc/cpuinfo : Shows detailed CPU specs
lscpu : Displays CPU information
cat /proc/meminfo : Shows detailed RAM info
free : Displays RAM usage
free -m : Displays RAM usage in MB
df -h : Shows EBS Volume usage


# File Commands
cat : Reads file data
touch : Creates a file
ll or ll -l : Lists files alphabetically with detailed information
ll -r : Lists files in reverse order
ll -t : Lists files sorted by modification time
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
mkdir folder1 : Creates a directory  
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


