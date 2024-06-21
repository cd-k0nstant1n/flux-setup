# Setting up Flux with Terraform and Managing Helm Releases

Set up Flux to deploy an application (`podinfo`) using Helm via Flux, and configure auto-updates for image tags.

## Prerequisites

Needed software before beginning:

- **Kubernetes Cluster**: Set up and configured a Kubernetes cluster (e.g., Minikube).
- **kubectl**: Installed and configured `kubectl` to interact with your Kubernetes cluster.
- **Helm**: Installed Helm CLI to manage Kubernetes applications.
- **Terraform**: Installed Terraform CLI for managing infrastructure as code.

## Setup Instructions

### 1. Install Flux with Terraform

1. **Clone Repository**:
   ```sh
   git clone <repository-url>
   cd <repository-directory>

2. **Apply Terraform Configuration**:
   ```sh
   terraform init
   terraform apply

3. **Change(if needed) and apply HelmRelease**:

   ```sh
   kubectl apply -f podinfo-helmrelease.yaml

4. **Install Helm Operator (if using)**:

   ```sh
   helm repo add fluxcd https://charts.fluxcd.io
   helm upgrade -i helm-operator fluxcd/helm-operator --namespace flux-system --set helm.versions=v3

### Explanation

- **Prerequisites**: Lists the tools and configurations needed before starting the setup.
- **Setup Instructions**: Step-by-step guide to setting up Flux with Terraform, deploying `podinfo` using Helm via Flux, and configuring auto-updates for image tags.
