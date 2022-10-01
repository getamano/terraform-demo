provider "aws" {
  profile = "defult"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "tf_course" {
  bucket = "tf-course-bucket-aman-09-30-2022"
  acl = "private"
}