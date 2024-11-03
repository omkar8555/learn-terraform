variable "map" {
    default = {
        aws = {
            trainer = "omkar"
            dur = 30
            }
        dev = {
            trainer = "reddy"
            dur = 60
            }
    }
}
output "aws_trainer" {
    value = var.map["aws"].dur
    }