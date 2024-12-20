# Використовуємо офіційний образ nginx в якості базового образу
FROM nginx

# Видаляємо за замовчуванням всі файли у папці /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/*

# Копіюємо файли нашого проєкту до образу nginx
COPY ./index.html /usr/share/nginx/html

# Відкриваємо порт 80 для доступу до веб-сайту
EXPOSE 80

# Виконуємо nginx у фоновому режимі
CMD ["nginx", "-g", "daemon off;"]
