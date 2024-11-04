module "roboshop" {
  for_each = var.instances
  source = "./module"

}

variable "instances" {
  default = {
    frontend = {}
    cart = {}
   }
  }