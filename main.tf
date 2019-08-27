module "iam" {
  source = "./iam"

  name_prefix = var.name_prefix
}

module "ssm" {
  source = "./ssm"

  slack_webhooks = var.slack_webhooks
  default_tags   = var.default_tags
}

module "s3" {
  source = "./s3"

  region       = data.aws_region.current.name
  default_tags = var.default_tags
}
