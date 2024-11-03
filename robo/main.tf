 variable "fruits" {
     default ={
         apple = {}
         mango = {}
         banana = {}
         }
     }



 resource "null_resource" "fruits" {
     for_each = var.fruits
     }