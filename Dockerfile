<<<<<<< HEAD

=======
# Используем Python 3.11 (он точно совместим с Django 5.1)
FROM python:3.11-slim

# Устанавливаем системные зависимости для psycopg2
RUN apt-get update && apt-get install -y gcc libpq-dev && rm -rf /var/lib/apt/lists/*

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы
COPY . /app/

# Обновляем pip
RUN pip install --upgrade pip

# Устанавливаем зависимости с verbose выводом
RUN pip install --no-cache-dir -r requirements.txt --verbose

# Открываем порт
EXPOSE 8000

# Запуск
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
>>>>>>> 68430b1 (Make Docker fully working and update README)
