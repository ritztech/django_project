from django.urls import path
from . import views

urlpatterns = [
path('',views.home,name='home'),
path('addnumber',views.add,name='add')

]

