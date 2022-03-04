git clone https://github.com/omogidi/Mobalysis:/home/mob_app_usr .
cd /home/mob_app_usr/Mobalysis
sudo chmod 777 /home/mob_app_usr/.bashrc
sudo echo “export DBNAME=“mobalytics”” >> /home/mob_app_usr/.bashrc
sudo echo “export DBUSER=“mob_db_user”” >> /home/mob_app_usr/.bashrc
sudo echo “export DBPASS=“mob_db_pass”” >> /home/mob_app_usr/.bashrc
sudo echo “export DBHOST=“localhost”” >> /home/mob_app_usr/.bashrc
sudo echo “export DBPORT=“5432”” >> /home/mob_app_usr/.bashrc
source /home/mob_app_usr/.bashrc
