variable "x" {
    default = "omkar"
    }
output "name" {
    value = var.x
    }

output "name1" {
    value = "${var.x} reddy"
    }

variable "A" {
    default = "omkar"
    }
variable "B" {
    default = "reddy"
    }

output "name2" {
    value =  "${var.A} ${var.B}"
    }
