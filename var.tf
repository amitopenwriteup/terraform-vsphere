variable "vsphere_user" {
  description = "The username for vSphere"
  type        = string
}

variable "vsphere_password" {
  description = "The password for vSphere"
  type        = string
  sensitive   = true
}

variable "vsphere_server" {
  description = "The vSphere server address"
  type        = string
}
