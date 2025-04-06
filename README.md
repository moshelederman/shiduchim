# Shlomit Sarel - Matchmaking App

End-to-End system for deploying and managing a Flask matchmaking site using Kubernetes, CI/CD, monitoring, and GitOps.

## ✨ Architecture Overview

![Architecture Diagram](https://raw.githubusercontent.com/your-org/shlomit-sarel/main/assets/architecture-diagram.png)

> **Note**: You can replace the above image with your custom diagram including logos of GitHub, Docker, Terraform, GCP, Kubernetes, ArgoCD, Prometheus, and Grafana.

## 🌐 Key Technologies

- **Flask** – Lightweight Python web framework
- **Docker** – Containerization of the Flask app
- **GitHub Actions** – For CI/CD automation
- **Terraform** – Infrastructure as Code (provisions GKE cluster)
- **Helm** – Deploys app and monitoring stack (Prometheus + Grafana)
- **ArgoCD** – GitOps continuous delivery into Kubernetes
- **Prometheus & Grafana** – Monitoring and visualization stack

## ✅ Project Setup Steps

### 1. GitHub Secrets

Set the following secrets in your GitHub repository:

- `DOCKER_USERNAME`, `DOCKER_PASSWORD`
- `GCP_CREDENTIALS` – JSON key of GCP Service Account
- `GCP_PROJECT_ID` – Your GCP project ID

### 2. Folder Structure

```
.
├── app/                # Flask matchmaking app
├── k8s/                # Kubernetes manifests
├── terraform/          # Terraform files for GKE cluster
├── .github/workflows/  # CI/CD workflows
└── README.md
```

### 3. Running the Project

1. Clone the repository: `git clone https://github.com/your-org/shlomit-sarel.git`
2. Push changes to the `main` branch to trigger the CI/CD pipeline
3. Access the app via the external LoadBalancer IP from Kubernetes

---

Feel free to open Issues or Pull Requests for questions or improvements ❤️