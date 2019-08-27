output "slack_webhook_cicd" {
  value = jsondecode(aws_secretsmanager_secret_version.slack_webhooks.secret_string)["cicd"]
}
