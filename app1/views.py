from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def home(request):

    #return HttpResponse("<h1>Hello response to main page</h1> ")
       return render(request,'index.html',{'name':'sudhir shrivastvava','job':'IIT KGP'})

def add(request):

    val1=int(request.POST["num1"])
    val2=int(request.POST["num2"])
    val3= val1 + val2

    return  render(request,"result.html",{'result':val3})