provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_s3_bucket" "state_bucket" {
  acl    = "private"
  bucket = "${var.state_bucket}"
  region = "${var.aws_region}"

  lifecycle_rule {
    enabled = true
    id = "expire-old-versions"

    noncurrent_version_expiration {
      days = "${var.old_version_expiration}"
    }
  }

  versioning {
    enabled = true
  }
}
