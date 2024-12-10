# 参考：https://zenn.dev/erueru_tech/articles/a32fead5669031

# ref. https://github.com/terraform-linters/tflint/blob/master/docs/user-guide/config.md
# config {
# }

# ref. https://github.com/terraform-linters/tflint-ruleset-google
# plugin "google" {
#   enabled = true
#   version = "0.27.1"
#   source  = "github.com/terraform-linters/tflint-ruleset-google"
# }

plugin "google" {
  enabled = true
  version = "0.17.0"  # 最新の互換性のあるバージョンに更新
  project = "oidc-test-project-443611" # GCPプロジェクトIDを指定
  region  = "asia-northeast1"         # デフォルトのリージョンを指定
  source  = "github.com/terraform-linters/tflint-ruleset-google"
}
