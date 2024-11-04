variable "fruits" {
    default = [
    apple,
    banana,
    mango
    ]
}

resource "null_resource" "fruits" {
    count = 10
    }