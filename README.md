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
