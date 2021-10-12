#!/usr/bin/bash

set -E
source <(curl -s https://raw.githubusercontent.com/rangapv/bash-source/main/s1.sh) >/dev/null 2>&1

jre() {
sudo $cm1 -y install openjdk-8-jre
}

envjre(){

echo "JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre" | sudo tee -a /etc/profile
echo "JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre" | sudo tee -a /etc/profile
echo "PATH=$PATH:$JRE_HOME/bin:$JAVA_HOME/bin" | sudo tee -a /etc/profile
echo "PATH=$PATH:/usr/lib/jvm/java-8-openjdk-amd64/jre/bin" | sudo tee -a /etc/profile
	
echo "export JAVA_HOME"  | sudo tee -a /etc/profile
echo "export JRE_HOME" | sudo tee -a /etc/profile
echo "export PATH" | sudo tee -a /etc/profile

#sua1=`sudo update-alternatives --set java /usr/local/java/$temp1/bin/java`
#sua2=`sudo update-alternatives --set javac /usr/local/java/$temp1/bin/javac`
#sua3=`sudo update-alternatives --set javaws /usr/local/java/jdk1.8.0_77/bin/javaws`

echo "Pls logout and login to see the java versions(java -version & javac -version)"

}

jre
envjre
