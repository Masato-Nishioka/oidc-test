plugin "google" {
    enabled = true
    version = "0.29.0"
    source  = "github.com/terraform-linters/tflint-ruleset-google"
}

rule "google_storage_bucket_location" {
    enabled     = true
    description = "チェック対象のリージョンを指定します"
    pattern     = "asia-northeast1|us-central1|europe-west1"
}
