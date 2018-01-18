variable "aws_region" {
  type = "string"
  description = "The region to create the Terraform infrastructure in."
  default = "us-east-1"
}

variable "old_version_expiration" {
  type = "string"
  description = "The number of days that old state files will be kept for."
  default = "30"
}

variable "state_bucket" {
  type = "string"
  description = "The name of the bucket to store Terraform state files in."
  default = "km-tf-state"
}
