from django.shortcuts import render
from django.http import *


# Create your views here.

def Login(request):
    return render(request, 'Login.html')


def Index(request):
    return render(request, 'Index.html')


def Registro(request):
    return render(request, 'Registro.html')
