git add .
git commit -m "$1"
git push

echo "All changes pushed to GitHub."
#!/bin/bash
git add .
git commit -m "final: production-ready setup with CI/CD, Docker, systemd, and log rotation"
git push origin main
