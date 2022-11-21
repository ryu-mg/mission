from django.http import HttpResponse
from .tasks import print_async_message


def print_sync_message(_):
    """
    - delay: apply_async를 사용하여 만든 shortcut. arguments만 전달할 수 있고 옵션은 설정할 수 없음
    - apply_async: arguments와 countdown, quque, ingnore_result 등 다양한 옵션을 설정할 수 있음
    """
    print_async_message.delay()

    return HttpResponse('Give me 3 seconds')
