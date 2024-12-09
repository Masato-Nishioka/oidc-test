terraform {
  required_version = ">= 1.9.0, < 1.10.0" # 使用するTerraformのバージョンを指定

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.6.0" # Googleプロバイダーのバージョン制約を指定
    }
  }
}