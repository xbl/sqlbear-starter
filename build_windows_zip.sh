#!/bin/bash

TARGET="/dist/sqlbear_windows_x64"

sudo mkdir -p $TARGET
sudo cp -Rf ./* $TARGET
wget https://github.com/AdoptOpenJDK/openjdk13-binaries/releases/download/jdk-13%2B33/OpenJDK13U-jre_x64_windows_hotspot_13_33.zip
unzip OpenJDK13U-jre_x64_windows_hotspot_13_33.zip
sudo cp -r ./jdk-13+33-jre $TARGET/jre/