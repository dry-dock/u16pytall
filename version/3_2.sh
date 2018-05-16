#!/bin/bash -e

echo "================= Installing Python 3.2.6 ==================="
sudo apt-get install -y \
  python3.2=3.2* \
  python3.2-dev=3.2*

# Install virtualenv
virtualenv -p python3.2 $HOME/venv/3.2

# Install pip packages
. $HOME/venv/3.2/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 3.2.6 ==================="
