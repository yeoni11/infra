variable "proxmox_api_token" {
  description = "Proxmox API token"
  type        = string
  sensitive   = true
}

variable "template_id" {
  description = "Ubuntu 24.04 template VM ID"
  type        = number
  default     = 9000
}

variable "ssh_public_keys" {
  description = "SSH public keys"
  type        = list(string)
}
