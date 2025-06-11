resource "aws_vpc" "ec2_1_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "ec2_1_subnet" {
  vpc_id            = aws_vpc.ec2_1_vpc.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = "us-east-1a"
}

resource "aws_security_group" "ec2_1_SG" {
  name        = "ec2_1_SG"
  description = "Security group for ec2_1"
  vpc_id      = aws_vpc.ec2_1_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ec2_1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.ec2_1_SG.id]
  subnet_id              = aws_subnet.ec2_1_subnet.id
  tags = {
    Name = "ec2_1"
  }
}
