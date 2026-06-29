locals {
  entra_users = {
    ocpadmin01 = {
      display_name        = "OCP Admin User 01"
      user_principal_name = "ocpadmin01@openshiftpractise.xyz"
      mail_nickname       = "ocpadmin01"
    }

    ocpdev01 = {
      display_name        = "OCP Dev User 01"
      user_principal_name = "ocpdev01@openshiftpractise.xyz"
      mail_nickname       = "ocpdev01"
    }

    ocpdev02 = {
      display_name        = "OCP Dev User 02"
      user_principal_name = "ocpdev02@openshiftpractise.xyz"
      mail_nickname       = "ocpdev02"
    }

    ocptest01 = {
      display_name        = "OCP Test User 01"
      user_principal_name = "ocptest01@openshiftpractise.xyz"
      mail_nickname       = "ocptest01"
    }
  }
}

resource "azuread_user" "users" {
  for_each = local.entra_users

  display_name        = each.value.display_name
  user_principal_name = each.value.user_principal_name
  mail_nickname       = each.value.mail_nickname
  account_enabled     = true
}