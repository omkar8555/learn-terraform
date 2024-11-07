module "ec2" {
    source = "./modules"
    env    = var.env
    }

module "route53" {
    source = "./modules"
    env    = var.env
    }

