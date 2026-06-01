terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0"
    }
  }
}

provider "kubernetes" {
  config_path    = "C:/Users/RHJ/.kube/config"
  config_context = "minikube"
}

resource "kubernetes_namespace_v1" "platform_system" {
  metadata {
    name = "platform-system"
    labels = {
      "app.kubernetes.io/managed-by" = "terraform"
    }
  }
}