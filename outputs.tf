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

output "subnet_database_id" {
  description = "Created Azure database subnet resource ID"
  value       = azurerm_subnet.database.id
}

output "entra_user_object_ids" {
  value = {
    for key, user in data.azuread_user.users :
    key => user.object_id
  }
}

output "entra_user_upns" {
  value = {
    for key, user in data.azuread_user.users :
    key => user.user_principal_name
  }
}