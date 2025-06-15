# Create an S3 Bucket
resource "aws_s3_bucket" "example_bucket_swiggy" {
  bucket = "swiggy-bucket-terraform"
}

# Enable versioning using a separate resource
resource "aws_s3_bucket_versioning" "example_bucket_swiggy_versioning" {
  bucket = aws_s3_bucket.example_bucket_swiggy.id

  versioning_configuration {
    status = "Enabled"
  }
}


