#!/bin/bash
cd /app
pm2 start npm --name "my_app" -- start 