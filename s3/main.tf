resource "aws_s3_bucket" "tfm_state" {
  bucket = "${local.tfm_state_bucket}"
  region = var.region
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = "${merge(
    var.default_tags,
    map(
      "Environment", format("%s", terraform.workspace)
    )
  )}"
}

