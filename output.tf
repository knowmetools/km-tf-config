output "bucket" {
  value = "${aws_s3_bucket.state_bucket.id}"
}

output "region" {
  value = "${aws_s3_bucket.state_bucket.region}"
}
