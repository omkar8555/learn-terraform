variable "A"{
    default= "abc.com"
    }
#access variable

output "A" {
    value= var.A
    }


output "A1" {
    value= "a - ${ var.A }"
    }