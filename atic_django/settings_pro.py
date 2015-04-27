import site
# venv site packages
site.addsitedir('/home/WEBHOST/webapps/ATICrepo/atic_django/venv/lib/python2.7/site-packages')

# venv activate this
activate_this = os.path.expanduser('/home/WEBHOST/webapps/ATICrepo/atic_django/venv/bin/activate_this.py')
DATABASES = {
    'default': {
    'ENGINE': 'django.db.backends.postgresql_psycopg2',
    'NAME': '',
    'USER': '',
    'PASSWORD': '',
    'HOST': '',
    'PORT': '',
    }
}
MEDIA_ROOT = '/home/WEBHOST/webapps/ATICrepo_media/'
STATIC_ROOT = '/home/WEBHOST/webapps/ATICrepo_static/'
