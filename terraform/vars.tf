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