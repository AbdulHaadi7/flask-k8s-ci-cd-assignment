# Use official Python slim image
FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Copy requirements from root and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app
COPY app/ .

# Expose port
EXPOSE 5000

# Command to run app
CMD ["python", "main.py"]
