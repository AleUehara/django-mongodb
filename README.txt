http://django-mongodb-engine.readthedocs.org/en/latest/topics/setup.html

pip install virtualenv
virtualenv myproject
source myproject/bin/activate
pip install git+https://github.com/django-nonrel/django@nonrel-1.3
pip install git+https://github.com/django-nonrel/djangotoolbox@toolbox-1.3
pip install git+https://github.com/django-nonrel/mongodb-engine@mongodb-engine-1.3

django-admin.py startproject mysite


--------------------
Change on settings.py
--------------------
DATABASES = {
   'default' : {
      'ENGINE' : 'django_mongodb_engine',
      'NAME' : 'my_database'
   }
}

--------------------
Add on settings.py
--------------------
INSTALLED_APP
django_mongodb_engine


--------------------
Run
--------------------
python ./manage.py shell
from django.contrib.sites.models import Site
s = Site()
s.save()

--------------------
Run
--------------------
./manage.py tellsiteid
#The default site's ID is u'XXXXXXXXXXXXXX'. To use the sites framework, add this line to settings.py:
#SITE_ID=u'XXXXXXXXXXXXXXX'

Change on settings.py SITE_ID

--------------------
uncomment
--------------------
urls.py --> from django.contrib import admin
urls.py --> admin.autodiscover()
urls.py --> url(r'^admin/', include(admin.site.urls)),
settings.py --> 'django.contrib.admin' 