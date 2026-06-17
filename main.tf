provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "test-rupam-bucket" {
  bucket = "test-rupam-bucket"
  acl    = "private"

  tags = {
    Project     = "test-rupam-bucket"
    ManagedBy   = "terraform"
  }
}

output "s3_bucket_name" {
  value = aws_s3_bucket.test-rupam-bucket.id
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.test-rupam-bucket.arn
}

output "s3_bucket_endpoint" {
  value = aws_s3_bucket.test-rupam-bucket.website_endpoint
}