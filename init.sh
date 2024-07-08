#!/usr/bin/env bash

echo "| Installing dependencies ..."

sudo apt-get update
sudo apt-get install python3 python3-pip
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
# gunicorn -b localhost:8000 app:app

echo "| Service terminated"
echo "| Program exiting ..."
