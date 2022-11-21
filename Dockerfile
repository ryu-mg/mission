# FROM: base 이미지. 하나의 Docker image는 base image부터 시작하여 새로운 이미지를 중첩해가며 여러 단계의 image layer를 쌓아가면서 생성
FROM python:3.8.13-slim

# ENV: 도커 환경 변수(모든 문자 대문자로 작성)
ENV PYTHONUNBUFFERED 1

# WORKDIR: 작업 디렉토리 설정
WORKDIR /root/mission

# COPY: <복사할 대상> <도커 컨테이너에 붙여넣기 할 대상(여기서는 WORKDIR)>
# ADD: 일반 파일 뿐만 아니라 압축 파일이나 네트워크 상의 파일도 사용 가능. 특수한 파일을 다루는 것이 아니라면 COPY를 사용
COPY . .

# RUN / CMD / ENTRYPOINT 차이: 실행시점과 파라미터
# RUN: 도커파일로부터 도커 "이미지를 빌드하는 순간"에 실행. 주로 라이브러리를 설치하는 부분에서 활용
# CMD: 해당 이미지를 "컨테이너로 띄울 때" 디폴트로 실행할 커맨드나, ENTRYPOINT 명령문으로 지정된 커맨드에 디폴트로 넘길 파라미터를 지정할 때 사용
# ENTRYPOINT: CMD 명령문와 비슷하지만, "컨테이너를 띄울 때" 항상 실행되야 하는 커맨드를 지정할 때 사용
RUN pip install --upgrade pip && pip install -r /root/mission/requirements.txt

# CMD ["python3", "manage.py", "runserver", "0.0.0.0:8088"]