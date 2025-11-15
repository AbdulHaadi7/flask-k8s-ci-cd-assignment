# Dockerfile
FROM python:3.13-slim AS build

WORKDIR /app

# Copy requirements from root
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app folder
COPY app/ .

CMD ["python", "app/main.py"]
