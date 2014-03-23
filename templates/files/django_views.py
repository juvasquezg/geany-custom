# -------------
# -- IMPORTS --
# -------------

# Uncomment the imports that you need

# standard library imports
#from django.http import HttpResponse, HttpResponseRedirect
#from django.shortcuts import render_to_response, get_object_or_404
#from django.template import RequestContext
#from django.contrib.auth.decorators import login_required


# related third party imports

# local application/library specific imports
#from main.models import MyModel
#from main.forms import MyModelForm

# ---------------
# -- CONSTANTS --
# ---------------

# Create your views here.


# simple view
def home(request):
    """(HttpRequest)  -> (HttpResponse)

    """

    return HttpResponse("Welcome to Home")

# Agrego un form
def add(request):
    if request.POST:
        form = MyModelForm(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect("/")
    else:
        form = MyModelForm()
    template = "form.html"
    return render_to_response(
        template,context_instance=RequestContext(request,locals())
    )
