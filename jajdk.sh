#!/bin/bash
tc=`sudo mkdir /usr/local/java`
get=`wget https://s3.us-east-2.amazonaws.com/jdkjre/jdk-8u77-linux-x64.tar.gz`
cp=`sudo cp -r ./jdk*.gz /usr/local/java/`
tz=`sudo tar -xzf ./jdk-8u77-linux-x64.tar.gz`
cz=`sudo cp -r ./jdk1.8.0_77/ /usr/local/java/`


echo "JAVA_HOME=/usr/local/java/jdk1.8.0_77" | sudo tee -a /etc/profile
echo "JRE_HOME=/usr/local/java/jre1.8.0_77"  | sudo tee -a /etc/profile
echo "PATH=$PATH:$JRE_HOME/bin:$JAVA_HOME/bin" | sudo tee -a /etc/profile
echo "export JAVA_HOME"  | sudo tee -a /etc/profile
echo "export JRE_HOME" | sudo tee -a /etc/profile
echo "export PATH" | sudo tee -a /etc/profile

sa1=`sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.8.0_77/bin/java" 1`
sa2=`sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.8.0_77/bin/javac" 1`
sa3=`sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jdk1.8.0_77/bin/javaws" 1`

sua1=`sudo update-alternatives --set java /usr/local/java/jdk1.8.0_77/bin/java`
sua2=`sudo update-alternatives --set javac /usr/local/java/jdk1.8.0_77/bin/javac`
sua3=`sudo update-alternatives --set javaws /usr/local/java/jdk1.8.0_77/bin/javaws`

echo "Pls logout and login to see the java versions(java -version & javac -version)"
