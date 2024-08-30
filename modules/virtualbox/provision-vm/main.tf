resource "virtualbox_vm" "node" {
  count     = var.vm_count
  name      = var.vm_count == 1 ? var.vm_name : format("${var.vm_name}-%02d", count.index + 1)
  image     = var.image
  cpus      = var.cpus
  memory    = var.memory
  user_data = var.user_data != null ? file("${var.user_data}") : file("${path.module}/user_data.tpl")

  network_adapter {
    type           = var.network_adapter_type
    host_interface = var.network_host_interface
  }
}