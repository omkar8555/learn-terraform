module "roboshop" {
  for_each = var.instances
  source = "./module"
  component_name = each.key
}

variable "instances" {
  default = {
    frontend = {}
    cart = {}
   }
  }