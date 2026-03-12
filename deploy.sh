#!/bin/bash

EC2_USER=ubuntu
EC2_IP=65.1.147.4
TARGET_DIR=/var/www/html

echo "Deploying files to EC2..."

scp -r index.html style.css script.js $EC2_USER@$EC2_IP:$TARGET_DIR

echo "Deployment completed"