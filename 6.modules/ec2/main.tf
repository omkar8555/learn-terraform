resource "aws_route53_record" "record" {
  zone_id = "Z08947163LH0CXG3JRYK4"
  name    = "${var.component_name}-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance.private_ip]
}

variable "instance_name" {}

output "ip_address" {
  value = aws_instance.instance.private_ip
}

# Output in child module wont print on screen,
# Output in root module will print on screen as output