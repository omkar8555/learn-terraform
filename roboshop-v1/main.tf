resource "aws_instance" "frontend" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-0af16956e6a252f7a" ]
    tags = {
        name = "frontend"
        }
    }

resource "aws_route53_record" "frontend" {
  zone_id = "Z0568841399D7VVAXAQ1A"
  name    = "frontend-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}