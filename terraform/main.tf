terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "kubernetes_namespace" "flux_system" {
  metadata {
    name = "flux-system"
  }
}

resource "helm_release" "flux" {
  depends_on = [kubernetes_namespace.flux_system]
  name       = "flux2"
  repository = "https://charts.fluxcd.io"
  chart      = "flux"
  namespace  = "flux-system"

  set {
    name  = "git.url"
    value = "https://github.com/cd-k0nstant1n/flux-setup.git"
  }

  set {
    name  = "git.branch"
    value = "main"
  }

  set {
    name  = "git.path"
    value = "clusters/minikube"
  }

  set_sensitive {
    name  = "git.token"
    value = "Y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"
  }
}
