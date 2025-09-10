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

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-3: DOWNLOAD JAVA17 AND JENKINS
yum install java-17-amazon-corretto -y
yum install jenkins -y

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins.service
systemctl status jenkins.service





