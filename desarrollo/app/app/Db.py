import os

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

POSTGRESQL = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'bd_python',
        'USER': 'postgres',
        'PASSWORD': 'admin',
        'HOST': 'localhost',
        'PORT': '5432'

    }
}
