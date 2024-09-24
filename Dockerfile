FROM nginx:alpine

# 앱 파일 복사
COPY /app/dist /usr/share/nginx/html
COPY /app/public /usr/share/nginx/html/public

# Nginx 설정 복사
COPY nginx.conf /etc/nginx/conf.d/default.conf
