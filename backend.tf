terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "sttfstate100380"
    container_name       = "tfstate"
    key                  = "terraform-azure/dev/terraform.tfstate"
    use_azuread_auth     = true
  }
}