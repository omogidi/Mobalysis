#!/bin/bash
sudo apt-get update
sudo apt-get install curl -y
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install nginx -y
sudo systemctl reload nginx
cd /var/www/html/
npx create-react-app react-tutorial
cd react-tutorial
npm start
