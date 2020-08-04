#!/bin/bash

apt update -y && apt install -y python3 python3-pip certbot && pip3 install dnslib
mkdir -p /usr/local/collaboratorplusplus/
mv CollaboratorServer.properties /usr/local/collaboratorplusplus/CollaboratorServer.properties
mv CollaboratorPlusPlus.jar /usr/local/collaboratorplusplus/CollaboratorPlusPlus.jar
cp burpcollaboratorplusplus.service /etc/systemd/system/
cp startcollab.sh /usr/local/collaboratorplusplus/

cd /usr/local/collaboratorplusplus/
chmod +x /usr/local/collaboratorplusplus/*

systemctl disable systemd-resolved.service
systemctl stop systemd-resolved
