# Flask Kubernetes CI/CD Pipeline – Assignment 03

This project demonstrates a complete CI/CD pipeline using **Docker**, **Kubernetes**, and **Jenkins**, deployed on a local environment.  
The application is a simple **Flask API**, containerized using Docker and deployed to Kubernetes using automated rollouts.

---

## 🚀 Project Features

### 🔹 1. Dockerized Flask Application
- The app runs inside a Docker container.
- Image is built automatically by Jenkins.

### 🔹 2. Jenkins CI/CD Pipeline
The pipeline performs:
1. Code Checkout  
2. Docker Image Build  
3. Docker Image Push  
4. Kubernetes Deployment Update  
5. Automated Rollout  

### 🔹 3. Kubernetes Deployment
The system includes:
- A `Deployment` with rolling updates  
- A `Service` for load balancing  
- Replica scaling  
- Zero-downtime deployments  

---

## 🐳 Run the Application Locally Using Docker

### **Build the Docker Image**
```bash
docker build -t flask-k8s-app .
