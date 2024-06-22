variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  default     = "myResourceGroup"
}

variable "location" {
  description = "Location for all Azure resources"
  default     = "East US"
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  default     = "myVnet"
}

variable "subnet_name" {
  description = "Name of the Subnet"
  default     = "mySubnet"
}

variable "vm_name" {
  description = "Name of the Virtual Machine"
  default     = "myWindowsVM"
}

variable "vm_size" {
  description = "Size of the Virtual Machine"
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "Admin username for the Virtual Machine"
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin password for the Virtual Machine"
  default     = "P@ssw0rd1234!"
}

variable "os_disk_caching" {
  description = "Caching type for OS disk"
  default     = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  description = "Storage account type for OS disk"
  default     = "Standard_LRS"
}

variable "spot_max_price" {
  description = "Maximum price for Azure Spot instances (-1 means current on-demand price)"
  default     = -1
}
