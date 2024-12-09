plugin "google" {
    enabled = true
    version = "0.30.0"
    source  = "github.com/terraform-linters/tflint-ruleset-google"
}

rule "google_location_restriction" {
    enabled = true
    regions = ["ap-northeast1"]
}
