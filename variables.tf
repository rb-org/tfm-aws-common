variable "name_prefix" {
  default = ""
}

variable "region" {
  default = "eu-west-1"
}

# Tags
variable "default_tags" {
  type = "map"
  default = {
    Github-Repo = "rb-org/tfm-common"
    Terraform   = "true"
  }
}

# Account IDs
variable "account_id" {
  default = "827734529707"
}

# Remote State S3 Bucket
variable "remote_state_s3_auto" {
  description = "S3 bucket name holding the Terraform remote state file"
  default     = "tfm-remote-state"
}

# Notifications

variable "sns_slack_webhook" {
  description = "Slack webhook for receiving SNS notification messages"
  default     = "this should go in ssm params or pickup from local secrets"
}

# Secrets
variable "slack_webhooks" {
  type = "map"
}
