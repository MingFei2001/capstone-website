#!/usr/bin/env bash

echo "| Installing dependencies ..."

sudo apt-get update
sudo apt-get install python3-full python3-pip
sudo apt-get install python3-virtualenv
sudo apt-get install mysql-server

echo "| Initiating virtual environment ..."

virtualenv pyenv
source ./pyenv/bin/activate

sudo apt-get install python3-dev default-libmysqlclient-dev build-essential pkg-config
pip install mysqlclient
pip install flask_mysqldb
pip install flask gunicorn

echo "| Starting service now ..."

gunicorn -b localhost:8000 app-bk:app &
# gunicorn -b localhost:8000 app:app &

sudo cp ./flask-app.service /etc/systemd/system/flask-app.service
sudo systemctl daemon-reload
sudo systemctl start flask-app.service
sudo systemctl enable flask-app.service

echo "| Setting up Nginx ..."

sudo apt install nginx
sudo systemctl start nginx
sudo systemctl enable nginx

echo "| Init completed ..."
echo "| Program exiting ..."
