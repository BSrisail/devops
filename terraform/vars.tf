variable "sample" {
  default = "10"
}

variable "fruits" {
  default = ["subu", "bqna", "aam"]
}

output "sample" {
  value = var.sample
}

output "fruits" {
  value = var.fruits[0]
}

variable "test" {}
output "test" {
  value = var.test
}

variable "list" {
}
resource "null_resource" "list" {
  count = length(var.list)
}