FROM nginx:alpine

# 현재 디렉토리의 모든 파일을 Nginx의 기본 HTML 폴더로 복사
COPY . /usr/share/nginx/html

# 복사된 파일들이 읽기 가능한 권한 설정
RUN chmod -R 755 /usr/share/nginx/html

# Nginx 설정 복사
COPY nginx.conf /etc/nginx/conf.d/default.conf