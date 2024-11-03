variable "A" {
    default = "omkar reddy"
    }

output "X" {
    value = p.g.$(var.A)
    }