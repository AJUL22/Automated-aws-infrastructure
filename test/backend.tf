terraform {
  backend "s3" {
    bucket         = "my-s3-bucket-12123"
    key            = "infra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
