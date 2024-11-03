variable "A" {
    default = "omkar"
    }

variable "B" {
    default = "reddy"
    }

output "name" {
    value = "var.A ${var.B}"
    }