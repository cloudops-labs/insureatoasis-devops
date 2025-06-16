# insureatoasis-devops
# InsureAtOasis DevOps Deployment

This repository showcases the DevOps infrastructure and CI/CD setup for deploying a Node.js-based insurance platform using Kubernetes, Terraform, Jenkins, and Docker.

## 🚀 Stack Used

- Kubernetes (EKS / OpenShift-ready)
- Terraform (for infra provisioning)
- Jenkins (for CI/CD)
- Docker (for containerization)
- GitHub (VCS and pipeline trigger)

## 📦 Structure

- `terraform/`: Contains IaC configuration to provision AWS infrastructure
- `jenkins/`: Jenkins pipeline (Groovy) for building and deploying the application
- `docker/`: Dockerfile for containerizing the Node.js app
- `k8s/`: Kubernetes manifests for deployment and service configuration

## 🔐 Disclaimer

This is a sanitized and demo-safe version of an internal project. All secrets, URLs, and private configs have been removed or masked.
