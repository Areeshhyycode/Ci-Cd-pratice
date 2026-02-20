# CI/CD Pipeline Demo Project

A simple website with automated CI/CD pipeline using GitHub Actions and Docker.

## Tech Stack
- HTML/CSS (Website)
- Docker (Containerization)
- Nginx (Web Server)
- GitHub Actions (CI/CD Pipeline)

## How it works
1. Push code to `main` branch
2. GitHub Actions pipeline triggers automatically
3. Docker image is built
4. Image is pushed to Docker Hub
5. Website is ready to deploy!

## Run Locally
```bash
docker build -t my-cicd-website .
docker run -p 8080:80 my-cicd-website
```
Then open http://localhost:8080

## Setup Secrets in GitHub
Go to: Repository → Settings → Secrets → Actions
Add these secrets:
- `DOCKER_USERNAME` - Your Docker Hub username
- `DOCKER_PASSWORD` - Your Docker Hub access token
