variable "instances" {
    default = [
        "test1",
        "test2"
        ]
    }

module "ec2" {
    count = length(var.instances)
    source = "./ec2"
    name = var.component_name[count.index]
    }

module "route53" {
    count = length(var.instances)
    source = "./route53"
    name = var.component_name[count.index]
    ip_address = module.ec2[count.index].ip_address
    }