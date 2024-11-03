resource "aws_instance" "frontend" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids =["sg-05180aaee83558bdc"]
    tags = {
        Name = "frontend"
        }
    }

resource "aws_instance" "frontend"{
    zone_id= "Z08947163LH0CXG3JRYK4"
    name = "frontend-dev.rdevopsb72.shop"
    type = "A"
    ttl = "30"
    records =[aws_instance.frontend.private_id]
    }