# -------------
# -- IMPORTS --
# -------------

# Uncomment the imports that you need

# standard library imports
#from django.db import models
#from django.contrib.auth.models import User

# related third party imports

# local application/library specific imports

# ---------------
# -- CONSTANTS --
# ---------------

# Create your models here.


class MyModel(models.Model):


    def __str__(self):
        return '{0} - {1}'.format(self.property, self.property)


