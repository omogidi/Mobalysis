### Task 1
-- Bash script to install and setup Postgres
-- Write a shell script that installs postgresql, adds a user with the username mob_db_user and a password mob_db_pass. 
-- Script should be run as the root user or using sudo. 
-- Script should be called setup.sh 
-- Commit this shell script to the repository that you forked.

Step 1: SandBox Environment
I created an EC2 instance with the following specifications
Ami Image: Linux
Instance type:t2.micro
Type: gp2 
Size: 8GiB
IOPS: 100
Availability Zone: us-east-1d
Security group: launch-wizard-8 (This allows SSH from anywhere)

## Cloned the repository
Step 2: Cloning
git clone https://github.com/omogidi/Mobalysis.git
## Change directory to Mobalysis
cd mobalysis
## Created a branch called Emmanuel
git checkout -b Emmanuel
## Created the setup.sh file
touch setup.sh
## Edit the file
vi setup.sh
In the script
## Created a shebang
#!/bin/bash
## Update the repo
sudo apt update

## Install Postgresql
sudo apt-get -y install postgresql

## Signin to the postgre
sudo su postgres
psql
sudo -u postgres psql

## Start the Postgre service
sudo service postgresql start

## Created a user with password
sudo -u postgres createuser --interactive
CREATE USER mob_db_user PASSWORD 'mob_db_pass'

## Save the script
:wq

git add .
git commit -m "Created the setup.sh file to install and setup postgre"
git push -u origin Emmanuel


## On Github.
Create a pull Request.
Merge Pull request to the main.

## Update local repo
git pull origin main


### TASK 3
git clone https://github.com/omogidi/Mobalysis:/home/mob_app_usr .
cd /home/mob_app_usr/Mobalysis

### TASK 4
#Install python3-venv:
sudo apt install -y python3-venv

#Create an empty database with the name mobalytics:
sudo -u postgres psql -c "create database mobalytics"

#Set the owner of the mobalytics database to mob_db-user:
sudo -u postgres psql -c "ALTER DATABASE mobalytics OWNER TO mob_db_user"

### TASK 5: Adding environment variables and values to mob_app_usr's bashrc file:
sudo chmod 777 /home/mob_app_usr/.bashrc
sudo echo “export DBNAME=“mobalytics”” >> /home/mob_app_usr/.bashrc
sudo echo “export DBUSER=“mob_db_user”” >> /home/mob_app_usr/.bashrc
sudo echo “export DBPASS=“mob_db_pass”” >> /home/mob_app_usr/.bashrc
sudo echo “export DBHOST=“localhost”” >> /home/mob_app_usr/.bashrc
sudo echo “export DBPORT=“5432”” >> /home/mob_app_usr/.bashrc
source /home/mob_app_usr/.bashrc

### TASK 6: Install application packages for backend in virtual environment:
#Create a virtual environment called env:
sudo python3 -m pip install --user --upgrade pip
sudo python3 -m pip --version
sudo python3 -m pip install --user virtualenv
sudo python3 -m venv /home/mob_app_usr/env

#Activate the virtual environment:
source /home/mob_app_usr/env/bin/activate

#Install application packages in the virtual environment:
sudo python3 -m pip install django


#Make any new migrations by executing:
sudo python3 ~/Mobalysis/backend/manage.py makemigrations

#Install the backend migrations
sudo python3 ~/Mobalysis/backend/manage.py migrate


#Using Vs Code to work on this