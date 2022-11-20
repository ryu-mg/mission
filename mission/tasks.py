from __future__ import absolute_import

import os
import time
from celery import Celery


os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'mission.settings')
app = Celery('mission')

# settings에 정의된 namespace 중 CELERY인 항목은 celery의 항목설정임을 설정
app.config_from_object('django.conf:settings', namespace='CELERY')

# autodiscover: 생성한 애플리케이션들을 CELERY_IMPORTS에 추가할 필요 없이 사용 가능
app.autodiscover_tasks()


@app.task
def print_async_message():
    time.sleep(10)
    return 'Thank You'
