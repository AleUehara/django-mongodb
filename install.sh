#!/bin/bash

pip install virtualenv
virtualenv myproject
source myproject/bin/activate
pip install git+https://github.com/django-nonrel/django@nonrel-1.3
pip install git+https://github.com/django-nonrel/djangotoolbox@toolbox-1.3
pip install git+https://github.com/django-nonrel/mongodb-engine@mongodb-engine-1.3

cd myproject
django-admin.py startproject mysite