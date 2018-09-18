#!/bin/bash -e

export PYTHON_VERSION=3.7*
echo "================= Installing Python "$PYTHON_VERSION" ==================="
sudo apt-get install -y \
python3.7="$PYTHON_VERSION" \
python3.7-dev="$PYTHON_VERSION"

# Install virtualenv
virtualenv -p python3.7 $HOME/venv/3.7

# Install pip packages
. $HOME/venv/3.7/bin/activate
pip install nose mock pytest coverage
deactivate
echo "================= Successfully Installed Python  ==================="

