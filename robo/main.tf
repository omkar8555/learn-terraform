variable "list" {
    default = [
        10,
        20,
        "ys",
        false
        ]
    }

output "list" {
    value = var.list[3]
    }