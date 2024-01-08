terraform {
  backend "s3" {
    bucket  = "bootcamp32-dev-95"
    region  = "us-west-2"
    key     = "oidc/terraform.tfstate"
    encrypt = true
  }
}