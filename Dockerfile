# Базовый образ(image) Python
FROM python:3.9-slim

# Рабочая директория в контейнере
WORKDIR /app

# Копируем файлы проекта
COPY . .

# Устанавливаем зависимости (если есть)
#RUN pip install -r requirements.txt  # Пропустите, если файла нет

# Команда для запуска
CMD ["python", "app.py"]