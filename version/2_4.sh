#!/bin/bash -e

echo "================= Installing Python 2.4.6 ==================="
sudo apt-get install -y \
  python2.4=2.4* \
  python2.4-dev=2.4 \
  python-pip=8.1.1* \
  python-virtualenv=15.0.1+ds*

# Install virtualenv
virtualenv -p python $HOME/venv/2.4

# Install pip packages
. $HOME/venv/2.4/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.4.6 ==================="
