# Используем официальный образ Poste.io
FROM analogic/poste.io

# Устанавливаем переменную среды для временной зоны (по желанию)
ENV TZ=Europe/Prague

# Открываем порты для почтовых служб
EXPOSE 25 80 443 110 143 465 587 993 995

# Команда по умолчанию для запуска Poste.io
CMD ["supervisord", "-c", "/etc/supervisord.conf"]