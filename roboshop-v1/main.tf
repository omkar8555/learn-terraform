    resource "aws_instance" "frontend" {
        ami = "ami-09c813fb71547fc4f"
        instance_type= "t3.small"
        vpc_security_source_id= ["sg-0af16956e6a252f7a"]
        tags = {
            Name = "frontend"
            }
        }