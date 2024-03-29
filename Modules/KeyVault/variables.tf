variable "resource_group_location" {
  default     = "uksouth"
  description = "Location of the resource group."
}

variable "resource_prefix" {
  default     = "shared"
  description = "Prefix of the resource."
}

variable "resource_group_name" {
  default     = ""
  description = "Resource group name."
}

variable "resource_name" {
  default     = "kv"
  description = "Name of the resource."
}

variable "resource_environment" {
  default     = "dev"
  description = "Environment of the resource."
  validation {
    condition     = contains(["dev", "stg", "prd"], var.resource_environment)
    error_message = "The environment must be either 'dev', 'stg' or 'prd'."
  }
}

variable "key_vault_suffix" {
  default     = ""
  description = "Optional suffix for global uniqueness."
}
