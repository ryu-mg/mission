from django.urls import path

from .views import print_sync_message

urlpatterns = [
    path('hello', print_sync_message)
]
