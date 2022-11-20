from django.http import HttpResponse
from .tasks import print_async_message


def print_sync_message(_):
    print_async_message.delay()

    return HttpResponse('Give me 3 seconds')
