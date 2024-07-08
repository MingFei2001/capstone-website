#!/usr/bin/env bash

echo "| Installing dependencies ..."

sudo apt-get install python3 python3-pip
sudo apt-get install python3-virtualenv

echo "| Initiating virtual environment ..."

virtualenv pyenv
source ./pyenv/bin/activate
pip install flask flask_mysqldb sqlite3 MySQL-python

echo "| Starting service now ..."

flask run

echo "| Service terminated"
echo "| Program exiting ..."
