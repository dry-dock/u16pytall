#!/bin/bash -e

echo "================= Installing Python 2.5.6 ==================="
sudo apt-get install -y \
  python2.5=2.5* \
  python2.5-dev=2.5* \
  python-pip=8.1.1* \
  python-virtualenv=15.0.1+ds*

# Install virtualenv
virtualenv -p python $HOME/venv/2.5

# Install pip packages
. $HOME/venv/2.5/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.5.6 ==================="
