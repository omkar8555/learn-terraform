variable "fruits" {
    default = {
        apple ={}
        orange= {}
        banana= {}
        }
    }


resource "null_resource" "fruits" {
    for_each=var.fruits
    }