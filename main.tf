terraform{
    required_providers{
        aws = {
            source ="hashicorp/aws" # Terraform Source for the AWS
            version = "3.4.0" # Latest AWS Terraform Version
        }
    }
    required_version = ">=1.1.0" #Terraform Version
}

provider "aws" {
    region = "ap-southeast-1" #region where we are building our infrastructure
    access_key = "*****"
    secret_key = "*********"
    # we can also mention the iam user role details
}

resource "aws_s3_bucket" "b" {
  bucket = "balaram-tf-test-bucket-103"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}