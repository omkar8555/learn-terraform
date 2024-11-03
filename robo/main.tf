resource "aws_instance" "frontend" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_id = "sg-05180aaee83558bdc"
    tags ={
        Name = "frontend"
        }
    }
resource "aws_route53_record" "record" {
    zone_id = "Z08947163LH0CXG3JRYK4"
    name = fronend-dev.rdevopsb72.shop
    type = "A"
    ttl = "30"
    records =[aes_instance.instance.private_ip]
    }