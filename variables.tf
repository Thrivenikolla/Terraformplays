variable "tags" {
    description = "tags for ec2"
    type        = list(map(string))
}

variable "ami" {
    default = "ami-0953476d60561c955"
}

variable "instance_type" {
    default = "t2.micro"
}