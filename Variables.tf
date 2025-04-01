

variable "location" {
  description = "The Azure location where resources will be created"
  default     = "East US"
}

variable "admin_username" {
  description = "The admin username for the virtual machines"
  default     = "adminuser"
}

variable "ssh_public_key" {
  description = "Path to the public SSH key for authentication"
  default     = "~/.ssh/id_rsa.pub"
}

variable "vm_size" {
  description = "The size of the virtual machine"
  default     = "Standard_B1s"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  default     = "10.0.0.0/16"
}

variable "subnet_address_space" {
  description = "The address space for the subnet"
  default     = "10.0.1.0/24"
}
