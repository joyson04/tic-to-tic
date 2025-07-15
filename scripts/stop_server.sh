#!/bin/bash
cd /app
pm2 stop my_app

echo "Stopping existing Node.js app (if running)..."
pm2 stop all || true
