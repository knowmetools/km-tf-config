output "bucket" {
  value = "${aws_s3_bucket.state_bucket.id}"
}

output "region" {
  value = "${aws_s3_bucket.state_bucket.region}"
}

output "lock_table" {
  value = "${aws_dynamodb_table.terraform_statelock.id}"
}
