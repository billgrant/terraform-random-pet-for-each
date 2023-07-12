terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}


resource "random_pet" "external" {
  for_each  = var.pets
  length    = each.value.length
  prefix    = each.value.prefix
  separator = each.value.separator
}