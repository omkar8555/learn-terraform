resource "aws_instance" "instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-05180aaee83558bdc"]
  tags = {
    Name = var.component_name
  }
}

variable "component_name" {}

output "ip_address" {
    value = aws_instance.instance.private_ip
    }

resource "aws_route53_record" "record" {
  zone_id = "Z08947163LH0CXG3JRYK4"
  name    = "${var.component_name}-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [var.ip_address]
}

variable "ip_address" {}

# Output in child module wont print on screen,
# Output in root module will print on screen as output