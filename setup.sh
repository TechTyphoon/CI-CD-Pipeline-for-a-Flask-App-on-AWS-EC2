#!/bin/bash
# Automated setup script for Flask app production deployment on Ubuntu EC2
set -e

REPO_URL="https://github.com/<your-username>/CI-CD-Pipeline-for-a-Flask-App-on-AWS-EC2.git"
APP_DIR="/home/ubuntu/CI-CD-Pipeline-for-a-Flask-App-on-AWS-EC2"
VENV_DIR="$APP_DIR/venv"
LOG_DIR="/var/log/gunicorn"

# Install system dependencies
sudo apt-get update
sudo apt-get install -y python3 python3-pip python3-venv git

# Clone repo if not present
if [ ! -d "$APP_DIR" ]; then
    git clone "$REPO_URL" "$APP_DIR"
fi
cd "$APP_DIR"

git pull

# Create virtualenv if missing
if [ ! -d "$VENV_DIR" ]; then
    python3 -m venv "$VENV_DIR"
fi

# Install requirements
"$VENV_DIR/bin/pip" install --upgrade pip
"$VENV_DIR/bin/pip" install -r requirements.txt

# Create log dir
sudo mkdir -p "$LOG_DIR"
sudo chown ubuntu:www-data "$LOG_DIR"

# Copy and enable systemd service
sudo cp gunicorn-flask.service /etc/systemd/system/gunicorn-flask.service
sudo systemctl daemon-reload
sudo systemctl enable gunicorn-flask
sudo systemctl restart gunicorn-flask

echo "Deployment complete. Gunicorn running via systemd."
