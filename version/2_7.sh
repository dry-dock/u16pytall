#!/bin/bash -e

echo "================= Installing Python 2.7.14 ==================="
sudo apt-get install -y \
  python2.7=2.7.14* \
  python-dev=2.7.14* \
  python-pip=9.0.3* \
  python-virtualenv=15.2.0*

# Install virtualenv
virtualenv -p python $HOME/venv/2.7

# Install pip packages
. $HOME/venv/2.7/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.7 ==================="
