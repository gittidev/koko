# Nginx 이미지를 기반으로 사용
FROM nginx:latest

# 작업 디렉토리를 설정
WORKDIR /usr/share/nginx/html

# 정적 파일을 이미지에 복사
COPY . /usr/share/nginx/html

# 권한을 설정하여 Nginx가 파일에 접근할 수 있도록 함
RUN chmod -R 755 /usr/share/nginx/html

# Nginx 서버 실행
CMD ["nginx", "-g", "daemon off;"]
