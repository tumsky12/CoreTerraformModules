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
  default     = "sa"
  description = "Name of the resource."
}

variable "min_tls_version" {
  default     = "TLS1_2"
  description = "The minimum supported TLS version for the storage account."
}

variable "storage_account_numerical_suffix" {
  default     = "1337"
  description = "Numerical suffix for global uniqueness."
}

variable "resource_environment" {
  default     = "dev"
  description = "Environment of the resource."
  validation {
    condition     = contains(["dev", "stg", "prd"], var.resource_environment)
    error_message = "The environment must be either 'dev', 'stg' or 'prd'."
  }
}
