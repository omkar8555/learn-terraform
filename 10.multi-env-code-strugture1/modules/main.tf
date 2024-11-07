resource "aws_instance" "instace" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-05180aaee83558bdc"]
     tags = {
         Name = "test-${var.env}"
         }
     }
variable "env" {}

resource "aws_route53_record" "record" {
  zone_id = "Z08947163LH0CXG3JRYK4"
  name    = "test-${var.env}.rdevopsb72.shop"
  type    = "A"
  ttl     = 300
  records = ["aws_instance.instance.public_ip"]
}