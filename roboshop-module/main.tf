module "roboshop" {
    for_each = var.instance
    source   = "./module"
    component_name = each.key
    }
variable "instance" {
    default = {
        frontend = {}
            cart = {}
            catalogue = {}
            user = {}
            shipping = {}
            payment = {}
            mysql = {}
            mongodb = {}
            rabbitmq = {}
            redis = {}
            }
        }