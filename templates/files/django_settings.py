# -------------
# -- IMPORTS --
# -------------

# standard library imports
from os import path, pardir
import sys

# related third party imports

# local application/library specific imports

# ---------------
# -- CONSTANTS --
# ---------------
PROJECT_ROOT = path.dirname(path.abspath(__file__))
sys.path.append(path.join(PROJECT_ROOT, "apps"))

#  To use sqlite3
#  mkdir db
#  'ENGINE': 'django.db.backends.sqlite3'
#  'NAME': path.join(PROJECT_ROOT, pardir, 'db/namedb.db')
