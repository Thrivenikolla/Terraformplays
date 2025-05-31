provider "aws" {
    region = "us-east-1"
}

module "aws_ec2" {
    source = "./modules/ec2"
    tags = [
    { Name = "MyEC2", Env  = "Dev"},
    { Name = "MyEC2", Env  = "Prod"},
    { Name = "MyEC2", Env  = "Test" }
]
}
