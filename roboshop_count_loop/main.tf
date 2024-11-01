variable "instances" {
  default = [
    "frontend",
    "cart",

  ]
}

resource "aws_instance" "frontend" {
    count= length(var.instances)
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-05180aaee83558bdc" ]
    tags = {
        Name = var.instances[count.index]
        }
    }