#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt update

apt install openjdk-17-jre-headless
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.6.0.92116.zip -P /opt
# -P /opt redirects directly to optional folder
sudo apt install unzip -y
sudo cd /opt
sudo unzip sonarqube-10.6.0.92116.zip
sudo mv sonarqube-10.6.0.92116 sonar
sudo useradd sonar
sudo chown -R sonar:sonar /opt/sonar

