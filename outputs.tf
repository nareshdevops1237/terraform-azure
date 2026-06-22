locals {
  project_name = "terraform-lab"
  common_tags = {
    Environment = var.environment
    Project     = local.project_name
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_resource_group" "lab" {
  name     = "rg-${local.project_name}-${var.environment}"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_virtual_network" "lab" {
  name                = "vnet-${local.project_name}-${var.environment}"
  location            = azurerm_resource_group.lab.location
  resource_group_name = azurerm_resource_group.lab.name
  address_space       = ["10.10.0.0/16"]

  tags = local.common_tags
}

resource "azurerm_subnet" "application" {
  name                 = "snet-application"
  resource_group_name  = azurerm_resource_group.lab.name
  virtual_network_name = azurerm_virtual_network.lab.name
  address_prefixes     = ["10.10.1.0/24"]
}