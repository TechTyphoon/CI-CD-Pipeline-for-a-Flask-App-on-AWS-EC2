#!/bin/bash
# Simple uptime/health check script
URL="http://65.0.134.123:5000/health"
STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)
if [ "$STATUS" == "200" ]; then
  echo "UP: $URL"
else
  echo "DOWN: $URL (status $STATUS)"
fi
