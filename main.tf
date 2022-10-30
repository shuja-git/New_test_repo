#this is terraform providers
terraform {
  required_providers {
  local = {
      source = "hashicorp/local"
      version = "2.2.3"
}
}
}
resource "local_file" "p1" {
   filename = each.value
   content = "this is new one"
   for_each = toset(var.filename)
}
