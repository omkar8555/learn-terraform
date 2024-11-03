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

output "map" {
    value = var.map["aws"]["trainer"]
    }

variable "map1" {
  default = {
    aws = {
      trainer = "John"
      duration = 30
    }
    devops = {
      trainer = "Steve"
      duration = 20
    }
  }
}



output "map1_aws_trainer" {
  value = var.map1["aws"]["trainer"]
  #value = var.map1["aws"].trainer
}

