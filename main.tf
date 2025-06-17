provider "aws" {
  region = "us-east-1"
}

module "ec2_1" {
  source            = "./module/ec2"
  ami               = var.ami
  instance_type     = var.instance_type
  subnet_cidr_block = var.subnet_cidr_block
  vpc_cidr_block    = var.vpc_cidr_block
} 