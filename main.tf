resource "proxmox_vm_qemu" "vm_test" {
  vmid        = var.vm_id
  name        = var.vm_name
  target_node = var.node_name

  clone = var.template_name

  cores  = var.cores
  memory = var.memory

  disk {
    storage   = var.disk_storage
    size      = var.disk_size
    type      = "scsi"
    interface = "virtio0"
  }

  network {
    model  = "virtio"
    bridge = var.bridge
  }

  # Cloud-init: use DHCP if true
  os_type   = "cloud-init"
  ipconfig0 = var.use_dhcp ? "ip=dhcp" : "ip=192.168.1.129,gw=192.168.1.1"

  vm_state = var.vm_state
}
