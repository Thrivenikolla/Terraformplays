resource "aws_instance" "ec2_mod" {
    ami = var.ami
    instance_type = var.instance_type
    count = 3
    
    tags = var.tags[count.index]

    lifecycle {
        ignore_changes = [ami]
    }
}