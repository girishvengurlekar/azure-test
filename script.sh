#!/bin/bash
PA=$PWD
whoami
cd /home/azureuser/
sudo -n rm -r deployment
sudo mkdir deployment
cd deployment
DEPLOYMENTPATH=$PWD
sudo virtualenv virtualenv
echo $PA
echo $DEPLOYMENTPATH
sudo scp -r $PA/.* .
source virtualenv/bin/activate
pip install -r requirements.txt
sudo -n kill $(sudo lsof -t -i:5000)
python app.py -P 0.0.0.0 &

