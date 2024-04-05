#!/bin/bash
#downloading python и venv
pip install python3 python3-venv -y

#venv creation
python3 -m venv env
#venv activation
source env/bin/activate

#downloading
wget https://www.dropbox.com/s/ija7ax3sj6ysb0p/blocknote-master.tar.gz
#ziping
tar -xf blocknote-master.tar.gz

#installing requirements
pip install -r requirements.txt

#creating migrations
python3 manage.py makemigrations
#do migraation for database
python3 manage.py migrate
#run the server
python3 manage.py runserver