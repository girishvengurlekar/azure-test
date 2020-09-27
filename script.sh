#!/bin/bash
cd /home/azureuser/
rm -r deployment
mkdir deployment
cd deployment
virtualenv virtualenv
source virtualenv/bin/activate
pip install -r requirements.txt
python app.py -P 0.0.0.0

