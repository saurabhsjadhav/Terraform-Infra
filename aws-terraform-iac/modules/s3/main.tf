resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "aws_s3_bucket" "bucket" {
  bucket = "saurabh-terraform-bucket-project-${random_string.suffix.result}"

  tags = {
    Name = "S3 Bucket"
  }
}
