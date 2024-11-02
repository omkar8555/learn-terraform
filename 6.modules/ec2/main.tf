resource "aws_instance" "instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-05180aaee83558bdc"]
  tags = {
    Name = var.component_name
  }
}

variable "instance_name" {}

output "ip_address" {
  value = aws_instance.instance.private_ip
}

# Output in child module wont print on screen,
# Output in root module will print on screen as output