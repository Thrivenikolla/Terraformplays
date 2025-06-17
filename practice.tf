provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "practice_ec2" {
    ami = "ami-0953476d60561c955"
    instance_type = var.instance_type
    count = 3
    tags = {
        Name = "practice_ec2"
    }
}

resource "aws_security_group" "practice-sg" {
    name = "practice-sg"
}

resource "aws_vpc_security_group_ingress_rule" "practice-sg" {
    security_group_id = aws_security_group.practice-sg.id
    ip_protocol = "tcp"
    cidr_ipv4 = var.cidrvalue
    from_port = 22
    to_port = 22
   
}
