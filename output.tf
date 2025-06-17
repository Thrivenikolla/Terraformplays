output "public_ip" {
    value = aws_instance.practice_ec2[*].public_ip
}

output "instance_id" {
    value = aws_instance.practice_ec2[*].id
}

output "sg_id" {
    value = aws_security_group.practice-sg.id
} 
