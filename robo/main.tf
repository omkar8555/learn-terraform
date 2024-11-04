data "aws_ami" "ami" {
    most_recent = true
    nam_regex = "RHEL-9-DevOps-Practice"
    owner = ["973714476881"]

    }

data "aws_security_group" "sg" {
    name = "allow-all"
    }

resource "aws_instance" "test" {
    ami = data.aws_ami.ami.id
    instance_type = "t3.small"
    vpc_aws_security_group-ids = [aws_security_group.sg.id]
    tags = {
        Name = "test"
        }
    }