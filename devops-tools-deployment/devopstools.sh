#!/bin/bash

# Perform quick update
sudo apt update -y
sudo apt upgrade -y

# Install required packages
sudo apt install wget openjdk-17-jdk docker.io -y

# Install Jenkins
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install jenkins -y

# Start and enable Jenkins service
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Install Nexus
sudo mkdir /opt/nexus
cd /opt/nexus
sudo wget -O nexus.tar.gz http://download.sonatype.com/nexus/3/nexus-3.22.1-02-unix.tar.gz
sudo tar -xvzf nexus.tar.gz
sudo rm -f nexus.tar.gz
cd nexus-3.22.1-02/bin/
./nexus start
cd /

# Install SonarQube
sudo usermod -aG docker $USER
sudo systemctl start docker
sudo mkdir /opt/sonarqube
cd /opt/sonarqube
docker run -d -p 9000:9000 mc1arke/sonarqube-with-community-branch-plugin

# Install Git
sudo apt install git -y
