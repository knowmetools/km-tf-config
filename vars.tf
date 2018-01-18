variable "aws_region" {
  type = "string"
  description = "The region to create the Terraform infrastructure in."
  default = "us-east-1"
}

variable "lock_table" {
  type = "string"
  description = "Name of the DynamoDB table used to aquire a lock for running Terraform code."
  default = "terraformLock"
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
