from django.shortcuts import render
from django.http import HttpResponse
from .models import destination

# Create your views here.
def index(request):

  dest1=destination()
  dest1.name="Hyderabad"
  dest1.price=6500

  dest2 = destination()
  dest2.name = "KGP"
  dest2.price = 7500

  dest3 = destination()
  dest3.name = "Delhi"
  dest3.price = 6000

  dest4 = destination()
  dest4.name = "Orchha"
  dest4.price = 10000

  alldest=[dest1,dest2,dest3,dest4]

  return render(request,'index.html',{'alldest':alldest})
  #return render(request,'index.html',{'dest1':dest1,'dest2':dest2,'dest3':dest3})

