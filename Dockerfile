# Базовый образ
FROM nginx:latest

# Копируем наш конфигурационный файл в контейнер
COPY nginx.conf /etc/nginx/nginx.conf

# Копируем наш код в контейнер
COPY index.php /var/www/html/

# Устанавливаем права на папку с кодом
RUN chown -R www-data:www-data /var/www/html/

# Открываем порты для доступа к контейнеру
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]
