#!/bin/bash -e

# install python prereqs
add-apt-repository ppa:deadsnakes/ppa
apt-get update
apt-get install -y libxml2 libxml2-dev libxslt1.1 libxslt1-dev libffi-dev libssl-dev libpq-dev libmysqlclient-dev

# Installing pip-9.0.1
wget -nv https://bootstrap.pypa.io/3.2/get-pip.py
python get-pip.py
pip install -U pip

pip install setuptools

# Installing virtualenv-16.0.0
pip install -q virtualenv==16.0.0

#!/bin/bash
for file in /u16pytall/version/*;
do
  $file
done
