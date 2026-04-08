# FastAPI CI/CD Project

## 📌 Overview
This project demonstrates a CI/CD pipeline using GitHub Actions for a FastAPI application. The pipeline runs automated tests using Poetry and builds a Docker image on each push.

---

## ⚙️ Technologies Used
- FastAPI
- Pytest
- Poetry
- Docker
- GitHub Actions
- Kubernetes (optional)
- Railway (deployment)

---

## 🚀 Features
- REST API built with FastAPI
- Automated testing using Pytest
- Dependency management with Poetry
- Docker containerization
- CI/CD pipeline with GitHub Actions

---

## 🔄 CI/CD Workflow
The pipeline performs the following steps:
1. Install dependencies using Poetry
2. Run tests using Pytest
3. Build Docker image
4. (Optional) Run container to verify application

---

## 🐳 Docker

### Build image:
```bash
docker build -t fastapi-app .

Run container:
docker run -p 8000:8000 fastapi-app
🧪 Testing

Run tests locally:

poetry run pytest
🌐 API Endpoint
GET /
{"message": "Hello FastAPI 🚀"}
☸️ Kubernetes (Optional)

Apply deployment:

kubectl apply -f deployment.yaml

Apply service:

kubectl apply -f service.yaml
🌍 Live Deployment

The application is deployed using Railway:

👉 https://my-resume-or-portfolio-production.up.railway.app

📁 Project Structure
app.py
test_app.py
Dockerfile
pyproject.toml
deployment.yaml
service.yaml
.github/workflows/python-app.yml
README.md