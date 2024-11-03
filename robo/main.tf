variable "map" {
    default = {
       aws = {
           trainer ="a"
           duration = 30
           }
       devops = {
           trainer ="b"
           duration = 30
           }
    }
}

output "aws_trainer" {
    value= var.map["aws"].trainer
}


variable "trainer_name"  {}

output "trainer_name" {
    value = var.trainer_name
    }