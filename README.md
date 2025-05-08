# Flask Devops Test App

A simple web server built using Flask, running as a Docker container, deployed using GitHub Actions, and hosted on AWS EC2! 

## 🚀 Features

- Simple Flask web server
- Dockerized for easy deployment
- Hosted on AWS EC2
- CI/CD pipeline via GitHub Actions
- Docker image hosted on Docker Hub

## 🧪 Local Development

This project uses Nix Flakes to ensure a reproducible dev and deployment environment. To deploy on any Nix-compatible host (e.g., EC2), simply run nix develop to enter the environment.

Run in development environment:

python3 app.py

Or run with Docker:

docker build -t flask-test-app .
docker run -p 80:5000 flask-test-app
