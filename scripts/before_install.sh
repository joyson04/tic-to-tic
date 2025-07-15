#!/bin/bash

# Create /app directory if it doesn't exist
if [ ! -d "/app" ]; then
  echo "Creating /app directory..."
  mkdir -p /app
  chown ec2-user:ec2-user /app   # Optional: set owner
fi

cd /app
npm install
npm install -g pm2
