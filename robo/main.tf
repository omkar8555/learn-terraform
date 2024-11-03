 variable "instance" {
     default ={
         frontend = {}
         mongodb = {}
         }
     }

 resource "aws_instance" "A" {
     count = length(var.instance)
     ami = "ami-09c813fb71547fc4f"
     instance_type= "t3.small"
      vpc_security_group_ids =["sg-05180aaee83558bdc"]
     tags ={
         Name=var.instance[count.index]
         }
     }
 resource "aws_route53_record" "record" {
     count = length(var.instance)
    zone_id = "Z08947163LH0CXG3JRYK4"
     name = "${var.instance}-dev.rdevopsb72.shop"
     type = "A"
     ttl = "30"
     records = [aws.instance.instance[count.index].private_ip]
     }