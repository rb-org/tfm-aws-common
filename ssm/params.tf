resource "aws_secretsmanager_secret" "slack_webhooks" {
  name = "${terraform.workspace}/slack-webhooks"
}

resource "aws_secretsmanager_secret_version" "slack_webhooks" {
  secret_id     = "${aws_secretsmanager_secret.slack_webhooks.id}"
  secret_string = jsonencode(var.slack_webhooks)
  lifecycle {
    ignore_changes = [
      "secret_string"
    ]
  }
}

resource "aws_ssm_parameter" "secret" {
  name        = "/${terraform.workspace}/slack_webhook/cicd"
  description = "Slack Webhook for CICD notifications"
  type        = "SecureString"
  value       = "${var.slack_webhooks["cicd"]}"

  tags = "${merge(var.default_tags,
    map("Environment", "${lower(terraform.workspace)}"),
    )
  }"
}
