FROM nginx:alpine

# Copy mã web vào thư mục gốc Nginx
COPY ./app /usr/share/nginx/html

# Copy cấu hình Nginx (tuỳ chọn)
# COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
