variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "East US 2"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"

  validation {
    condition = contains(
      ["dev", "test", "stage", "prod"],
      var.environment
    )

    error_message = "Environment must be dev, test, stage, or prod."
  }
}
variable "tenant_id" {
  description = "Microsoft Entra tenant ID"
  type        = string
}

variable "admin_username" {
  default = "azureadmin"
}

variable "ssh_public_key" {
  description = "Path to your SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "ARM_CLIENT_ID" {
  description = "Azure AD application (client) ID"
  type        = string
}

variable "ARM_CLIENT_SECRET" {
  description = "Azure AD application (client) secret"
  type        = string
}