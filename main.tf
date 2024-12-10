terraform {
  required_version = ">= 1.0.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
  }
}

provider "google" {
  project = "oidc-test-project-443611"
  region  = var.location
}

resource "google_storage_bucket" "tfcmt-cicd-test" {
  name     = "tfcmt-cicd-test"
  location = var.location
}