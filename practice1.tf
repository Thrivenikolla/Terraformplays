provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "remoteex" {
    ami = "ami-0953476d60561c955"
    instance_type = "t2.micro"
    key_name = "one"
    
    provisioner "remote-exec" {
        inline = [
            "echo Hi Sri from self.public_ip",
            "echo good"
            ]
        connection {
            type = "ssh"
            user = "ec2-user"
            private_key = file("./one.pem")
            host = self.public_ip
        }
    }
}
