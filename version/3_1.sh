#!/bin/bash -e

echo "================= Installing Python 3.1.5 ==================="
sudo apt-get install -y \
  python3.1=3.1* \
  python3.1-dev=3.1*

# Install virtualenv
virtualenv -p python3.1 $HOME/venv/3.1

# Install pip packages
. $HOME/venv/3.1/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 3.1.5 ==================="
