terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.24.0"
    }
  }
  required_version = "1.7.5"
}

provider "google" {
  project = "project-id"
  region  = "asia-northeast1"
}

resource "google_storage_bucket" "example" {
  name          = "${var.env}-example-bucket"
  location      = "ASIA"
  storage_class = "MULTI_REGIONAL"
  versioning {
    enabled = true
  }
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
}