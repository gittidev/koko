FROM nginx:alpine

# 현재 디렉토리의 모든 파일을 Nginx의 기본 HTML 폴더로 복사
COPY . /usr/share/nginx/html

# Nginx 설정 복사
COPY nginx.conf /etc/nginx/conf.d/default.conf
