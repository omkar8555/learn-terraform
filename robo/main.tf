variable "A" {
    default = "omkar"
    }

variable "B" {
    default = "reddy"
    }

output "X" {
    value = "${var.A} ${var.B}"
    }