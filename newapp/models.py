from django.db import models

# Create your models here.
class  destination:
     name:int
     price:str
     descr:str



class mydestination(models.Model):
     name=models.CharField(max_length=100)
     price=models.IntegerField()



