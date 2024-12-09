#参考：https://zenn.dev/erueru_tech/articles/a32fead5669031

$ vi /tmp/sample-project/terraform/.tflint.hcl
# ref. https://github.com/terraform-linters/tflint/blob/master/docs/user-guide/config.md
config {
}

# ref. https://github.com/terraform-linters/tflint-ruleset-google
plugin "google" {
  enabled = true
  version = "0.27.1"
  source  = "github.com/terraform-linters/tflint-ruleset-google"
}

# resource名はスネークケース表記にする必要がある
rule "terraform_naming_convention" {
  enabled = true
}

# コメントは#を使う(//は使わない)
rule "terraform_comment_syntax" {
  enabled = true
}

# variableブロックやoutputブロックはvariables.tfやoutputs.tfに定義する必要がある
rule "terraform_standard_module_structure" {
  enabled = true
}

# terraformブロック内に必ずrequired_versionを宣言する必要がある
# なお、自分のプロジェクトのフォルダ構造では、このルールを満たすのは不可能なので無効化
# ref. https://github.com/erueru-tech/infra-testing-google-sample
# しかし通常は有効にした方がいいかもしれない
rule "terraform_required_version" {
  enabled = false
}