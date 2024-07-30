# берем базовый образ
FROM python:3.9-slim
# указываем рабочую директорию
WORKDIR /cowsay
# копируем с локальной машины в образ
COPY requirements.txt .
# устанавливаем
RUN pip install --no-cache-dir -r requirements.txt
# копируем с локальной машины в образ
COPY app.py .
# запуск приложения
CMD ["python", "./app.py"]