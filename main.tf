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

  tags {
    Application = "terraform"
    Name        = "Terraform State"
  }

  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "terraform_statelock" {
  name           = "${var.lock_table}"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags {
    Application = "terraform"
    Name        = "Terraform Lock"
  }
}

