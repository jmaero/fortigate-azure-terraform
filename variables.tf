variable "owner_email" {
  description = "Email address of object creator for use with Azure tags."
  type        = string
}

variable "location" {
  description = "Azure region to deploy into."
  type        = string
}

variable "resource_group" {
  description = "Unique name of the Azure resource group."
  type        = string
}

variable "dmz_name" {
  description = "DMZ Subnet Name."
  type        = string
}

variable "dmz_prefix" {
  description = "DMZ Subnet Prefix."
  type        = string
}

variable "external_name" {
  description = "External Subnet Name."
  type        = string
}

variable "external_prefix" {
  description = "External Subnet Prefix."
  type        = string
}

variable "internal_name" {
  description = "Internal Subnet Name."
  type        = string
}

variable "internal_prefix" {
  description = "Internal Subnet Prefix."
  type        = string
}

variable "vnet_address_prefix" {
  description = "Virtual Network Address prefix."
  type        = string
}
