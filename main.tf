module "demo-single" {
  source = "./modules/virtualbox/provision-vm"

  vm_name                = "demo-single"
  vm_count               = 1
  image                  = var.ubuntu_image
  cpus                   = 1
  memory                 = "512 MiB"
  user_data              = "./user_data/ubuntu.cloud-init"
  network_adapter_type   = var.common_network_adapter_type
  network_host_interface = var.common_network_host_interface
}

module "demo-multi" {
  source = "./modules/virtualbox/provision-vm"

  vm_name                = "demo-multi"
  vm_count               = 2
  image                  = var.centos_image
  cpus                   = 2
  memory                 = "512 MB"
  user_data              = "./user_data/centos.cloud-init"
  network_adapter_type   = var.common_network_adapter_type
  network_host_interface = var.common_network_host_interface
}