provider "aws" {
	region = var.aws_region
}

module "my_instance_module" {
  source = "./modules/instance"

  bucket_name = "Diegoinstance"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "my_vpc_module" {
  source = "./modules/vpc"

  bucket_name = "DiegoVPC"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}