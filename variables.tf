variable "location" {
  description = "Cloud Storage バケットのリージョン"
  type        = string
  default     = "asia-northeast1"  # デフォルトを東京リージョンに設定

  validation {
    condition     = contains(["asia-northeast1", "asia-northeast2", "asia-northeast3"], var.location)
    error_message = "有効なリージョンを指定してください。例: asia-northeast1"
  }
}