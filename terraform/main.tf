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

# platform-system 네임스페이스
resource "kubernetes_namespace_v1" "platform_system" {
  metadata {
    name = "platform-system"
    labels = {
      "app.kubernetes.io/managed-by" = "terraform"
    }
  }
}

# data-starrocks 네임스페이스
resource "kubernetes_namespace_v1" "data_starrocks" {
  metadata {
    name = "data-starrocks"
    labels = {
      "app.kubernetes.io/managed-by" = "terraform"
    }
  }
}

# cicd 네임스페이스
resource "kubernetes_namespace_v1" "cicd" {
  metadata {
    name = "cicd"
    labels = {
      "app.kubernetes.io/managed-by" = "terraform"
    }
  }
}