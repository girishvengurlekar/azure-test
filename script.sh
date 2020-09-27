#!/bin/bash
PA=$PWD
cd /home/azureuser/
sudo rm -r deployment
mkdir deployment
cd deployment
DEPLOYMENTPATH=$PWD
virtualenv virtualenv
echo $PA
echo $DEPLOYMENTPATH
scp -r $PA/.* .
source virtualenv/bin/activate
pip install -r requirements.txt
sudo kill $(sudo lsof -t -i:5000)
python app.py -P 0.0.0.0 &

