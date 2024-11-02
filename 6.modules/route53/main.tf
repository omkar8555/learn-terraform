resource "aws_route53_record" "record" {
  zone_id = "Z08947163LH0CXG3JRYK4"
  name    = "${var.instance_name}-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [var.ip_address]
}

variable "instance_name" {}
variable "ip_address" {}