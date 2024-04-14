# store the terraform state file in s3

terraform {
  backend "s3" {
    bucket    = "ec2-5-vpc-remote-backend"
    key       = "five_ec2.tfstate"
    region    = "ap-south-1"
    profile   = "Terra-Ansi-User"
  }
}