# mission


# CMD
## docker
- docker 이미지 생성
```shell
docker build -t {이미지명}:{태그} {Dockerfile 파일 위치}
```

- docker 이미지 제거
```shell
docker rmi {이미지 id}
```

- docker 컨테이너 생성
```shell
docker run -d -it --name {이미지명} -p {로컬포트}:{도커포트} {이미지}
```

- docker 컨테이너 제거
```shell
dockcer rm {이미지명}
```

- docker compose 빌드/서비스 실행
```shell
docker compose up
```
  - up 명령어 단계별 진행사항
    - 서비스를 띄울 네트워크 설정
    - 필요한 볼륨 생성(혹은 이미 존재하는 볼륨과 연결)
    - 필요한 이미지 풀(pull)
    - 필요한 이미지 빌드(build)
    - 서비스 의존성에 따라 서비스 실행
  - option
    - -d: 서비스 백그라운드로 실행. (docker run에서의 -d와 같음)
    - --force-recreate: 컨테이너를 지우고 새로 생성. 
    - --build: 서비스 시작 전 이미지를 새로 생성 
    - -f: 기본으로 제공하는 docker-compose.yml이 아닌 별도의 파일명을 실행할 때 사용 
    - docker-compose -f docker-compose.yml -f docker-compose-test.yml up 형태로 두 개의 파일 실행도 가능 
    - YAML을 두 개 이상 설정할 경우 앞에 있는 설정보다 뒤에 있는 파일이 우선

## celery
- celery 실행 명령어
```shell
celery -A mission worker -l INFO
```
- [ -A | --app ]: Celery App의 파일명.
- [ worker ]: Worker 실행 명령어.
- [ -l | --loglevel ]: Logging 레벨 설정, DEBUG, INFO, WARNING, ERROR, CRITICAL, or FATAL.
- [ -P | --pool ]: 프로세스 처리 방식.
- [ -c | --concurrency ]: 동시에 병행처리 할 수 있는 Task의 수.

## 여러가지 
- Dockerfile 작성하기: https://www.daleseo.com/dockerfile/  
####
- docker-compose: https://meetup.toast.com/posts/277/
- docker-compose option: https://jaehun2841.github.io/2018/12/01/2018-12-01-docker-4/#volumes
####
- docker 컨테이너 종료 코드: https://blog.naver.com/alice_k106/221310477844
- 컨테이너가 바로 꺼지는 이슈: https://woochan-autobiography.tistory.com/488
- django 0.0.0.0: https://flyingsquirrel.medium.com/django-%EC%BD%94%EB%93%9C%EB%A5%BC-docker-container%EB%A1%9C-%EC%A0%95%EC%83%81%EC%A0%81%EC%9C%BC%EB%A1%9C-%EB%9D%84%EC%9B%A0%EC%A7%80%EB%A7%8C-local%EC%97%90%EC%84%9C-%EC%97%B4%EB%A6%AC%EC%A7%80-%EC%95%8A%EC%9D%84-%EB%95%8C-bff5f3b1f97b 