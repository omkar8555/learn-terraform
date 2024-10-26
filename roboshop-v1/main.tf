resource "aws_instance" "frontend" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-0af16956e6a252f7a" ]
    tags = {
        Name = "frontend"
        }
    }

resource "aws_route53_record" "frontend" {
  zone_id = "Z0568841399D7VVAXAQ1A"
  name    = "frontend-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-0af16956e6a252f7a" ]
    tags = {
        Name = "mongodb"
        }
    }

resource "aws_route53_record" "mongodb" {
  zone_id = "Z0568841399D7VVAXAQ1A"
  name    = "mongodb-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "catalogue" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-0af16956e6a252f7a" ]
    tags = {
        Name = "catalogue"
        }
    }

resource "aws_route53_record" "catalogue" {
  zone_id = "Z0568841399D7VVAXAQ1A"
  name    = "catalogue-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "redis" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-0af16956e6a252f7a" ]
    tags = {
        Name = "redis"
        }
    }

resource "aws_route53_record" "redis" {
  zone_id = "Z0568841399D7VVAXAQ1A"
  name    = "redis-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "user" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-0af16956e6a252f7a" ]
    tags = {
        Name = "user"
        }
    }

resource "aws_route53_record" "user" {
  zone_id = "Z0568841399D7VVAXAQ1A"
  name    = "user-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "cart" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-0af16956e6a252f7a" ]
    tags = {
        Name = "cart"
        }
    }

resource "aws_route53_record" "cart" {
  zone_id = "Z0568841399D7VVAXAQ1A"
  name    = "cart-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mysql" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-0af16956e6a252f7a" ]
    tags = {
        Name = "mysql"
        }
    }

resource "aws_route53_record" "mysql" {
  zone_id = "Z0568841399D7VVAXAQ1A"
  name    = "mysql-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "shipping" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-0af16956e6a252f7a" ]
    tags = {
        Name = "shipping"
        }
    }

resource "aws_route53_record" "shipping" {
  zone_id = "Z0568841399D7VVAXAQ1A"
  name    = "shipping-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "rabbitmq" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-0af16956e6a252f7a" ]
    tags = {
        Name = "rabbitmq"
        }
    }

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0568841399D7VVAXAQ1A"
  name    = "rabbitmq-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "payment" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-0af16956e6a252f7a" ]
    tags = {
        Name = "payment"
        }
    }

resource "aws_route53_record" "payment" {
  zone_id = "Z0568841399D7VVAXAQ1A"
  name    = "payment-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "dispatch" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_security_group_ids = [ "sg-0af16956e6a252f7a" ]
    tags = {
        Name = "dispatch"
        }
    }

resource "aws_route53_record" "dispatch" {
  zone_id = "Z0568841399D7VVAXAQ1A"
  name    = "dispatch-dev.rdevopsb72.shop"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

