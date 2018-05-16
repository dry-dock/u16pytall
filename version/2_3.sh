#!/bin/bash -e

echo "================= Installing Python 2.3.7 ==================="
sudo apt-get install -y \
  python2.3=2.3* \
  python2.3-dev=2.3* \
  python-pip=8.1.1* \
  python-virtualenv=15.0.1+ds*

# Install virtualenv
virtualenv -p python $HOME/venv/2.3

# Install pip packages
. $HOME/venv/2.3/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.3.7 ==================="
