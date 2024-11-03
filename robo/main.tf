 variable "instances" {
     default = [
         "frontend",
        " mongodb"]


     }

 resource "aws_instance" "instance" {
     count = length(var.instances)
     ami = "ami-09c813fb71547fc4f"
     instance_type = "t3.small"
      vpc_security_group_ids =["sg-05180aaee83558bdc"]
     tags ={
         Name = var.instances[count.index]
         }
     }
 resource "aws_route53_record" "record" {
     count = length(var.instances)
    zone_id = "Z08947163LH0CXG3JRYK4"
     name = "${ var.instances[count.index]}-dev.rdevopsb72.shop"
     type = "A"
     ttl = "30"
     records = [aws_instance.instance[count.index].private_ip]
     }