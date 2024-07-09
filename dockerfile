# Используем базовый образ с Inbucket
FROM inbucket/inbucket:latest

# Указываем порты для Inbucket
EXPOSE 9000 2500 1100

# Необходимые переменные окружения
ENV INBUCKET_USERNAME=username
ENV INBUCKET_PASSWORD=password

# Команда для запуска Inbucket
ENTRYPOINT ["/bin/inbucket"]
