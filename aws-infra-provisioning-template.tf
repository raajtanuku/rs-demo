provider "aws" {

  version = "~> 2.50"
  region   = "us-east-1"
  shared_credentials_file = "/root/.aws/credentials"
  profile = "default"
}

resource "aws_instance" "instance" {

  ami = "ami-087ca3b8702bd90cc"
  instance_type = "t2.micro"
  key_name = "packer-infy-key"
  security_groups = ["packer-infysec-1"]
  tags = {
    "Name"      = "Terraform-poc-instances"
  }
}