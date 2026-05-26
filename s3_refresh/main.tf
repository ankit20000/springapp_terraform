# Define the AWS provider
provider "aws" {
  region = "ap-south-1" # Change to your preferred region
}

# Create an S3 bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-unique-bucket-chalasjdbhasj" # Replace with your unique bucket name

  # Optional: Add tags to the bucket
  tags = {
    Environment = "Dev"
    Owner       = "Ankit"
  }
}

# Optional: Enable bucket versioning
resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.example_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.example_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}



