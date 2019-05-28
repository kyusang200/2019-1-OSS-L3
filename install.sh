#!/bin/sh

echo "Hello!"

sudo apt install -y git zip unzip python2.7 python3 python3-pip
python3 -m pip install virtualenv
git clone https://github.com/gunthercox/ChatterBot.git ChatterBot
cd ChatterBot
python3 -m virtualenv ChatterBotEnv
./ChatterBotEnv/bin/pip3  install -r requirements.txt
./ChatterBotEnv/bin/pip3  install -r dev-requirements.txt
./ChatterBotEnv/bin/python3 -m spacy download en
clear
echo "ChatterBot 폴더 내에서 'source ChatterBotEnv/bin/activate'를 실행하고 'python3 test.py' 를 실행하여 정상적으로 설치되었는지 확인하십시오."
