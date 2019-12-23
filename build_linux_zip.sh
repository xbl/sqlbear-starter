#!/bin/bash

TARGET_Linux="/dist/sqlbear_linux_x64"

sudo mkdir -p $TARGET_Linux
sudo cp -Rf ./* $TARGET_Linux

TARGET_Mac="/dist/sqlbear_mac_x64"

sudo mkdir -p $TARGET_Mac
sudo cp -Rf ./* $TARGET_Mac

TARGET_Windows="/dist/sqlbear_windows_x64"

sudo mkdir -p $TARGET_Windows
sudo cp -Rf ./* $TARGET_Windows

wget https://github.com/AdoptOpenJDK/openjdk13-binaries/releases/download/jdk-13%2B33/OpenJDK13U-jre_x64_linux_hotspot_13_33.tar.gz
tar -xf OpenJDK13U-jre_x64_linux_hotspot_13_33.tar.gz
sudo cp -r ./jdk-13+33-jre $TARGET_Linux/jre/
sudo zip -r $TARGET_Linux.zip $TARGET_Linux
sudo rm -Rf ./jdk-13+33-jre


wget https://github.com/AdoptOpenJDK/openjdk13-binaries/releases/download/jdk-13%2B33/OpenJDK13U-jre_x64_mac_hotspot_13_33.tar.gz
tar -xf OpenJDK13U-jre_x64_mac_hotspot_13_33.tar.gz
sudo cp -r ./jdk-13+33-jre/Contents/Home $TARGET_Mac/jre/
sudo zip -r $TARGET_Mac.zip $TARGET_Mac
sudo rm -Rf ./jdk-13+33-jre

wget https://github.com/AdoptOpenJDK/openjdk13-binaries/releases/download/jdk-13%2B33/OpenJDK13U-jre_x64_windows_hotspot_13_33.zip
unzip OpenJDK13U-jre_x64_windows_hotspot_13_33.zip
sudo cp -r ./jdk-13+33-jre/ $TARGET_Windows/jre/
sudo zip -r $TARGET_Windows.zip $TARGET_Windows
sudo rm -Rf ./jdk-13+33-jre