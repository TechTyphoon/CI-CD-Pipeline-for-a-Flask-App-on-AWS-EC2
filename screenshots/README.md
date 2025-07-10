<p align="center">
  <img src="https://img.shields.io/github/actions/workflow/status/TechTyphoon/CI-CD-Pipeline-for-a-Flask-App-on-AWS-EC2/test.yml?label=Tests&logo=github" alt="Test Status">
  <img src="https://img.shields.io/github/actions/workflow/status/TechTyphoon/CI-CD-Pipeline-for-a-Flask-App-on-AWS-EC2/deploy.yml?label=Deploy&logo=github" alt="Deploy Status">
  <img src="https://img.shields.io/github/license/TechTyphoon/CI-CD-Pipeline-for-a-Flask-App-on-AWS-EC2?color=blue" alt="MIT License">
  <img src="https://img.shields.io/badge/Docker-Ready-blue?logo=docker" alt="Docker Ready">
</p>

<h1 align="center">⚙️ CI/CD Pipeline for Flask App on AWS EC2</h1>

<p align="center">
  🚀 Fully automated CI/CD pipeline with GitHub Actions, Docker, Gunicorn, and AWS EC2.<br>
  🧠 Perfect for learning DevOps & deploying Python apps to the cloud.
</p>

---

## 🚀 TL;DR

Production-ready **Flask web app** with CI/CD on **AWS EC2** using:

- **GitHub Actions**
- **Docker**
- **Gunicorn**
- **systemd**
- **logrotate**
- ✅ Live deployment & health checks

---

## ✅ Features

- 🤖 GitHub Actions CI/CD (automated test & deploy)
- 🐳 Docker & Docker Compose support
- 🖥️ AWS EC2 cloud deployment
- 🔥 Gunicorn + systemd + logrotate
- 💉 `/health` endpoint with uptime monitoring
- 🧪 Pytest-based unit test
- 🔐 Secrets-managed SSH deployment
- 🧾 README badges, docs, and screenshots
- 📡 Simple `uptime.sh` health-check script
- 📜 MIT License, CODEOWNERS, CONTRIBUTING

---

## 🧰 Tech Stack

- Python 3.11 / Flask
- Docker / Docker Compose
- Gunicorn
- GitHub Actions
- AWS EC2 (Ubuntu)
- systemd / logrotate
- pytest

---

## 🔐 GitHub Secrets Required

| Secret Key       | Description                                |
|------------------|--------------------------------------------|
| `AWS_HOST`       | Public IP of your EC2 instance             |
| `AWS_USERNAME`   | SSH username (usually `ubuntu`)            |
| `AWS_SSH_KEY`    | Private key content (single-line format)   |

---

## 💻 Local Setup

```bash
git clone https://github.com/TechTyphoon/CI-CD-Pipeline-for-a-Flask-App-on-AWS-EC2.git
cd CI-CD-Pipeline-for-a-Flask-App-on-AWS-EC2
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python app.py
🧪 Test:

bash
Copy
Edit
pytest
🐳 Docker Deployment
Build & run:

bash
Copy
Edit
docker build -t flask-cicd-app .
docker run -d -p 5000:5000 --restart always --name flask-cicd-app flask-cicd-app
Or using Compose:

bash
Copy
Edit
docker-compose up -d
☁️ EC2 Production Deployment (Non-Docker)
bash
Copy
Edit
chmod +x setup.sh
./setup.sh
Systemd Unit: gunicorn-flask.service

Logs: /var/log/gunicorn/output.log

Rotated logs: /etc/logrotate.d/gunicorn-logrotate

🚀 CI/CD Flow
Push to GitHub

GitHub Actions:

✅ Runs tests

🔐 SSH into EC2

📂 Copies updated files

🧰 Restarts Gunicorn via systemd

📡 Health Check
Endpoint:

arduino
Copy
Edit
http://<your-ec2-ip>:5000/health
Returns:

json
Copy
Edit
{"status": "healthy"}
📸 Screenshots
Architecture Diagram	Deployed App	CI/CD Pipeline
		

🤝 Contributing
Want to improve it or extend it? See CONTRIBUTING.md

📝 License
MIT License

👨‍💻 Author
Made with ❤️ by Mahendra Reddy
🔗 GitHub | LinkedIn

⭐ Boost This Project
If you found this helpful:

⭐ Star this repo

🍴 Fork it

📣 Share with #DevOps #Flask #GitHubActions #AWS on LinkedIn!

