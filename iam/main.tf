// CircleCI admin user
module "circleci_user" {
  source = "git@github.com:rb-org/terraform-aws-iam-misc//admin_user"

  username    = "circleci"
  name_prefix = var.name_prefix
}

module "rb_auto_user" {
  source = "git@github.com:rb-org/terraform-aws-iam-misc//admin_user"

  username    = "rb-auto"
  name_prefix = var.name_prefix
}
