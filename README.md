# CI/CD Pipeline for Flask App on AWS EC2

## 🚀 Overview
This project demonstrates a full CI/CD pipeline using GitHub Actions to deploy a Flask web app to AWS EC2.

## 🧪 How It Works
1. Code pushed to GitHub triggers GitHub Actions.
2. It SSHs into EC2 and deploys the app.
3. App updates live automatically.

## 📂 Files
- app.py
- requirements.txt
- .github/workflows/deploy.yml (will be created in Phase 2)

## 🐳 Docker Deployment

1. Build and run with Docker:
   ```bash
   docker build -t flask-cicd-app .
   docker run -d -p 5000:5000 --restart always --name flask-cicd-app flask-cicd-app
   ```
2. Or use docker-compose:
   ```bash
   docker-compose up -d
   ```

## 🖥️ EC2 (Non-Docker) Deployment

1. Run `setup.sh` to install Python, create venv, install requirements, and start Gunicorn via systemd.
2. Systemd service: `gunicorn-flask.service` runs Gunicorn in `/home/ubuntu/CI-CD-Pipeline-for-a-Flask-App-on-AWS-EC2` and logs to `/var/log/gunicorn/`.
3. Log rotation: see `gunicorn-logrotate` for `/var/log/gunicorn/*.log`.

## 🤖 CI/CD Pipeline (GitHub Actions)

- On push, workflow runs tests, builds (optionally Docker), and deploys to EC2.
- Supports both Docker and non-Docker deploys.
- Add secrets for EC2 SSH and (optionally) Docker registry.

## 👨‍💻 Author
Mahendra Reddy
