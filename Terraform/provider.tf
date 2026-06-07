terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.78"
    }
  }
}

provider "proxmox" {
  endpoint  = "https://192.168.34.101:8006/"
  api_token = "root@pam!terraform=5963c70e-7a07-4ec7-b100-1b17f1232ba2"
  insecure  = true
}
