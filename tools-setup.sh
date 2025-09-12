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




#Jenkins

#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN 
yum install git java-1.8.0-openjdk maven -y

yum update –y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
yum upgrade
yum install java-17-amazon-corretto -y
yum install jenkins -y
systemctl enable jenkins
systemctl start jenkins
systemctl status jenkins
mkdir -p /var/tmp_disk
chmod 1777 /var/tmp_disk
mount --bind /var/tmp_disk /tmp
echo '/var/tmp_disk /tmp none bind 0 0' | tee -a /etc/fstab
systemctl mask tmp.mount
df -h /tmp
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





