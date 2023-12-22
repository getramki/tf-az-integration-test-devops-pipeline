terraform {
  backend "azurerm" {}
}

resource "random_uuid" "uuid" {}

resource "azurerm_resource_group" "rg" {
  name     = "rg-integration-test-tf-${random_uuid.uuid.result}"
  location = var.location
}