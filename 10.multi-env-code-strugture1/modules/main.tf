resource "aws_instance" "instace" {
    ami           = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    vpc_secuirity_group_id = ["sg-05180aaee83558bdc"]
     tags = {
         Name = "test-${var.env}"
         }
     }
 variable "env" {}