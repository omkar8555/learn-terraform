resource "aws_route53_record" "record" {
  zone_id = "Z08947163LH0CXG3JRYK4"
  name    = "${var.component_name}-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [ip_address]
}

variable "component_name" {}
variable "ip_address" {}