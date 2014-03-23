# -------------
# -- IMPORTS --
# -------------

# Uncomment the imports that you need

# standard library imports
#from django.contrib import admin

# related third party imports

# local application/library specific imports
#from main.models import MyModel

# ---------------
# -- CONSTANTS --
# ---------------

# Create your admin here.

# list_display
class MyModelAdmin(admin.ModelAdmin):
    list_display = ("property", "property")
    list_filter = ("property", "property", "property")
    search_fields = ("property__property", "property__property")

admin.site.register(MyModel, MyModelAdmin)
