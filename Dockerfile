FROM nginx:alpine          # Dùng image nginx nhỏ nhẹ làm nền
COPY . /usr/share/nginx/html  # Copy tất cả file trong thư mục hiện tại vào thư mục phục vụ web của nginx
