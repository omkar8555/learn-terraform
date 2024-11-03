variable "list" {
    default = [
        10,
        20,
        true,
        "jkl0"
        ]
    }

output "list" {
    value = var.list[0]
    }