terraform {
  backend "s3" {
    bucket         = "km-terraform-state-bucket"   # Your S3 bucket for state files
    key            = "reusable-workflow/terraform.tfstate"  # Path within the bucket
    region         = "eu-west-2"                   # AWS Region of the S3 bucket
    dynamodb_table = "terraform-state-lock-dynamo" # DynamoDB table for state locking
    encrypt        = true
  }
}