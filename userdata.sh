#!/bin/bash
sudo apt-get update -y
sudo apt-get install git -y
sudo apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/bekirokutan/my-aws-capstone-project.git
cd /home/ubuntu/my-aws-capstone-project
sudo apt install python3-pip -y
sudo apt-get install python3.7-dev default-libmysqlclient-dev -y
sudo pip3 install -r requirements.txt
cd /home/ubuntu/my-aws-capstone-project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80