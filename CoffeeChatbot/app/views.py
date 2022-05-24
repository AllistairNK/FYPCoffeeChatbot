"""
Definition of views.
"""

from datetime import datetime
from django.shortcuts import render
from django.http import HttpRequest
from app.chatbot import chatbot
from django.http import HttpResponse
from django.db import connection

def coffeeChatbot(request):
    """Renders the about page."""
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'app/index.html'
    )

def get(request):
    userText = request.GET.get('msg')
    print(userText)
    Botresponse = str(chatbot.get_response(userText))
    response = HttpResponse(Botresponse)
    cursor = connection.cursor()
    cursor.execute("call setUserInput('"+userText+"')")
    cursor.execute("call setUserInput('"+Botresponse+"')")
    result = cursor.fetchall()
    return response




