output "resource_group_name" {
  description = "Created Azure resource group name"
  value       = azurerm_resource_group.lab.name
}

output "virtual_network_name" {
  description = "Created Azure virtual network name"
  value       = azurerm_virtual_network.lab.name
}

output "subnet_id" {
  description = "Created Azure subnet resource ID"
  value       = azurerm_subnet.application.id
}