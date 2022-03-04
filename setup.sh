#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt-get -y install postgresql
sudo -u postgresql psql -c "CREATE USER mob_db_user PASSWORD 'mob_db_pass'"
\q
exit
sudo useradd mob_app_usr -p 'Project4'
sudo apt install -y python3-venv
sudo -u postgres psql -c "create database mobalytics"
sudo -u postgres psql -c "ALTER DATABASE mobalytics OWNER TO mob_db_user"
