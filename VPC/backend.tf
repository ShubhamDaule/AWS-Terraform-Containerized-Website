# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket  = "shubham-terraform-remote-state"
    key     = "vpc-tfstate"
    region  = "us-east-1"
    profile = "shubham"
  }
}