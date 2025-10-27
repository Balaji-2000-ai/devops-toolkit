# Git
yum install git -y: Installs Git on the system
git --version or git -v: Checks the installed Git version

#Maven & Java
yum install java-1.8.0-openjdk -y: Installs Java 8 (OpenJDK), required to run and build Java-based applications
java -version: Verifies Java installation and shows the installed version
yum install maven -y: Installs Apache Maven, a build tool used to compile, package, and manage dependencies for Java-based applications
mvn -v: Verifies Maven installation and shows the installed Maven version along with Java details
mvn clean package: Cleans old build files and packages the application into a `.jar` or `.war` file, ready for deployment

#Jenkins & Java
yum install java-17-amazon-corretto -y: Installs Amazon Corretto 17 (OpenJDK 17 distribution), required for tools like Jenkins and Spring Boot 3
update-alternatives --config java: Switch between multiple installed Java versions and select the default version to use on the system
/var/lib/jenkins: Default Jenkins home directory on Linux; contains jobs, plugins, credentials, and global configuration files
/etc/ansible/: Default configuration directory for Ansible on Linux systems




#Jenkins

#STEP-1: Install prerequisites 
yum install git java-1.8.0-openjdk maven -y

#STEP-2: Update system packages
yum update –y

#STEP-3: Add Jenkins repo and import Jenkins key
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-4: Upgrade system after adding repo
yum upgrade

#STEP 5: Install Java 17 (required for Jenkins) & Jenkins
yum install java-17-amazon-corretto -y
yum install jenkins -y

#STEP 6: Enable and start Jenkins service
systemctl enable jenkins
systemctl start jenkins
systemctl status jenkins

#STEP 7: Fix /tmp mounting issues (required in some cloud servers for Jenkins to run)
mkdir -p /var/tmp_disk
chmod 1777 /var/tmp_disk
mount --bind /var/tmp_disk /tmp
echo '/var/tmp_disk /tmp none bind 0 0' | tee -a /etc/fstab
systemctl mask tmp.mount
df -h /tmp

#STEP 8: Restart Jenkins after /tmp fix
systemctl restart jenkins




#Tomcat (Versions gets updated every 2 weeks)

#STEP-1: Install Java 17
yum install java-17-amazon-corretto -y

#STEP-2: Download Apache Tomcat 9.0.109
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.109/bin/apache-tomcat-9.0.109.tar.gz

#STEP-3: Extract Tomcat archive
tar -zxvf apache-tomcat-9.0.109.tar.gz

#STEP-4: Add user roles & credentials to tomcat-users.xml
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-9.0.109/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-9.0.109/conf/tomcat-users.xml
sed -i '58  a\<user username="tomcat" password="admin@123" roles="manager-gui, manager-script"/>' apache-tomcat-9.0.109/conf/tomcat-users.xml
sed -i '59  a\</tomcat-users>' apache-tomcat-9.0.109/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-9.0.109/conf/tomcat-users.xml

#STEP-5: Allow access to Tomcat Manager from any IP in context.xml
sed -i '21d' apache-tomcat-9.0.109/webapps/manager/META-INF/context.xml
sed -i '22d'  apache-tomcat-9.0.109/webapps/manager/META-INF/context.xml

#STEP-6: Start Tomcat server
sh apache-tomcat-9.0.109/bin/startup.sh



#Nexus (T2.MEDIUM and 20GB EBS volume required)

# STEP 1: Update system packages
sudo yum update -y

# STEP 2: Install prerequisites
sudo yum install wget -y
sudo yum install java-17-amazon-corretto-jmods -y   # Java 17 runtime for Nexus

# STEP 3: Download Nexus
sudo mkdir /app && cd /app
sudo wget https://download.sonatype.com/nexus/3/nexus-3.79.1-04-linux-x86_64.tar.gz

# STEP 4: Extract and rename
sudo tar -xvf nexus-3.79.1-04-linux-x86_64.tar.gz
sudo mv nexus-3.79.1-04 nexus

# STEP 5: Create dedicated Nexus user
sudo adduser nexus
sudo chown -R nexus:nexus /app/nexus
sudo chown -R nexus:nexus /app/sonatype*

# STEP 6: Configure Nexus to run as nexus user
sudo sed -i '27  run_as_user="nexus"' /app/nexus/bin/nexus

# STEP 7: Create systemd service file
sudo tee /etc/systemd/system/nexus.service > /dev/null << EOL
[Unit]
Description=nexus service
After=network.target

[Service]
Type=forking
LimitNOFILE=65536
User=nexus
Group=nexus
ExecStart=/app/nexus/bin/nexus start
ExecStop=/app/nexus/bin/nexus stop
Restart=on-abort

[Install]
WantedBy=multi-user.target
EOL

# STEP 8: Enable Nexus service
sudo chkconfig nexus on
sudo systemctl start nexus
sudo systemctl enable nexus
sudo systemctl status nexus



#Sonar (t2.medium, Default Credentials: admin & admin)

#! /bin/bash
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
unzip sonarqube-8.9.6.50800.zip
yum install java-17-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-8.9.6.50800 -R
chmod 777 sonarqube-8.9.6.50800 -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-8.9.6.50800/bin/linux-x86-64/sonar.sh start
#echo "user=admin & password=admin"

#sh sonar.sh start     # Start SonarQube
#sh sonar.sh stop      # Stop SonarQube
#sh sonar.sh restart   # Restart SonarQube
#sh sonar.sh status    # Check status






