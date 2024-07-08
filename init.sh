#!/usr/bin/env bash

echo "| Installing dependencies ..."

sudo apt-get install python3 python3-pip
sudo apt-get install python3-virtualenv

echo "| Initiating virtual environment ..."

virtualenv pyenv
source ./pyenv/bin/activate
pip install flask flask_mysqldb sqlite3 MySQL-python gunicorn

echo "| Starting service now ..."

gunicorn -b localhost:8000 app-bk:app

echo "| Service terminated"
echo "| Program exiting ..."
