provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "buckets" {
  bucket = var.bucket_names
  
}
