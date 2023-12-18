variable "list" {
}
resource "null_resource" "list" {
  count = length(var.list)
}