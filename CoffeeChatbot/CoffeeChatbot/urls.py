"""
Definition of urls for CoffeeChatbot.
"""

from datetime import datetime
from django.urls import path
from django.contrib import admin
from django.contrib.auth.views import LoginView, LogoutView
from app import forms, views


urlpatterns = [
    path('', views.coffeeChatbot, name='test'),
    path('get', views.get, name='msg'),
]
