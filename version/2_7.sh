#!/bin/bash -e

export PYTHON_VERSION=2.7.14*
echo "================= Installing Python "$PYTHON_VERSION" ==================="
sudo apt-get install -y \
python2.7="$PYTHON_VERSION" \
python-dev="$PYTHON_VERSION" \

export PYTHON_PIP_VERSION=8.1.1*
echo "============= Installing pip "$PYTHON_PIP_VERSION" ======================"
sudo apt-get install -y python-pip="$PYTHON_PIP_VERSION" \

export PYTHON_VIRTUALENV=16.0.0
echo "============= Installing virtualenv "$PYTHON_VIRTUALENV" ================="
python-virtualenv="$PYTHON_VIRTUALENV"
 
# Install virtualenv
virtualenv -p python $HOME/venv/2.7

# Install pip packages
. $HOME/venv/2.7/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python ==================="
