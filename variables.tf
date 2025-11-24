variable "template_name" {
  type    = string
  default = "omni-talos-tpt"
}

variable "node_name" {
  type    = string
  default = "pve"
}

variable "vm_name" {
  type    = string
  default = "new-creation"
}

variable "vm_id" {
  type    = number
  default = 1233
}

variable "cores" {
  type    = number
  default = 1
}

variable "memory" {
  type    = number
  default = 2048
}

variable "disk_storage" {
  type    = string
  default = "local-lvm"
}

variable "disk_size" {
  type    = string
  default = "5G"
}

variable "bridge" {
  type    = string
  default = "vmbr0"
}

variable "vm_state" {
  type    = string
  default = "running" # or "stopped"
}

variable "use_dhcp" {
  type    = bool
  default = true
}
