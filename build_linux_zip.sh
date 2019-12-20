#!/bin/bash

TARGET="/dist/sqlbear_linux_x64"

sudo mkdir -p $TARGET
sudo cp -Rf ./* $TARGET
wget https://github.com/AdoptOpenJDK/openjdk13-binaries/releases/download/jdk-13%2B33/OpenJDK13U-jre_x64_linux_hotspot_13_33.tar.gz
tar -xf OpenJDK13U-jre_x64_linux_hotspot_13_33.tar.gz
sudo cp -r ./jdk-13+33-jre $TARGET/jre/
sudo zip -r $TARGET.zip $TARGET