variable "vm_name" {
  type        = string
  description = "VM Name"
}

variable "vm_count" {
  type        = number
  description = "VM Count"
}


variable "image" {
  type        = string
  description = "Vagrant Image"
}

variable "cpus" {
  type        = number
  description = "vCPU Count"
}

variable "memory" {
  type        = string
  description = "Memory Size"
}

variable "user_data" {
  type        = string
  description = "User Data"
}

variable "network_adapter_type" {
  type        = string
  description = "Network Adapter Type"
}

variable "network_host_interface" {
  type        = string
  description = "Network Host Interface"
}

