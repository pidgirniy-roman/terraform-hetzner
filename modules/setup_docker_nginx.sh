#!/bin/bash

echo "=== Оновлення списку пакетів ==="
apt-get update -y

echo "=== Встановлення Docker ==="
apt-get install -y docker.io

echo "=== Запуск Nginx у Docker-контейнері ==="
# -d: запускаємо у фоні (detached)
# -p 80:80: з'єднуємо зовнішній 80-й порт сервера з 80-м портом всередині контейнера
# --name web-server: даємо контейнеру зрозуміле ім'я
# --restart always: наказуємо Docker автоматично перезапускати Nginx, якщо сервер перезавантажиться
docker run -d -p 80:80 --name web-server --restart always nginx:latest

echo "=== Встановлення завершено успішно! ==="