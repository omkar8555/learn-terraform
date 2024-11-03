 variable "instances" {
   default = {
     frontend = {}
     cart = {}

   }
 }

 resource "aws_instance" "instance" {
   for_each = var.instances
   ami           = "ami-09c813fb71547fc4f"
   instance_type = "t3.small"
   vpc_security_group_ids = ["sg-05180aaee83558bdc"]
   tags = {
     Name = each.key
   }
 }

 resource "aws_route53_record" "record" {
      for_each = var.instances
   zone_id = "Z08947163LH0CXG3JRYK4"
   name    = "${each.key}-dev.rdevopsb72.shop"
   type    = "A"
   ttl     = "30"
   records = [aws_instance.instance[each.key].private_ip]
 }