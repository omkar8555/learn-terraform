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
    value = var.map{"aws"}.trainer
    }