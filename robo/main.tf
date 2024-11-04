variable "fruits" {
    default = {
    apple = {}
    banana = {}
    mango =  {}
    }
}

resource "null_resource" "fruits" {
    for_each = var.fruits
    }