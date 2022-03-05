git clone https://github.com/omogidi/Mobalysis:/home/mob_app_usr .
cd /home/mob_app_usr/Mobalysis
sudo chmod 777 /home/mob_app_usr/.bashrc
sudo echo “export DBNAME=“mobalytics”” >> /home/mob_app_usr/.bashrc
sudo echo “export DBUSER=“mob_db_user”” >> /home/mob_app_usr/.bashrc
sudo echo “export DBPASS=“mob_db_pass”” >> /home/mob_app_usr/.bashrc
sudo echo “export DBHOST=“localhost”” >> /home/mob_app_usr/.bashrc
sudo echo “export DBPORT=“5432”” >> /home/mob_app_usr/.bashrc
source /home/mob_app_usr/.bashrc
sudo python3 -m pip install --user --upgrade pip
sudo python3 -m pip --version
sudo python3 -m pip install --user virtualenv
sudo python3 -m venv /home/mob_app_usr/env

source /home/mob_app_usr/env/bin/activate

sudo python3 -m pip install django

sudo python3 ~/Mobalysis/backend/manage.py makemigrations

sudo python3 ~/Mobalysis/backend/manage.py migrate
