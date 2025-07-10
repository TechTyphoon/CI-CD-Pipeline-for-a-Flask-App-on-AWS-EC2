# Production-ready Dockerfile for Flask app with Gunicorn
FROM python:3.11-slim

# Set environment variables for best practices
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Create a non-root user and switch to it
RUN adduser --disabled-password --no-create-home flaskuser
USER flaskuser

# Use Gunicorn for production
CMD ["gunicorn", "-w", "3", "-b", "0.0.0.0:5000", "app:app"]
