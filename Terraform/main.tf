locals {
  vms = {
    # DNS
    "dns-01" = {
      vmid        = 2211
      node        = "kosa2"
      template_id = 9001
      ip          = "172.16.30.11"
      cpu         = 2
      memory      = 2048
      disk_size   = 10
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }
    "dns-02" = {
      vmid        = 2312
      node        = "kosa3"
      template_id = 9002
      ip          = "172.16.30.12"
      cpu         = 2
      memory      = 2048
      disk_size   = 10
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }

    # Nexus
    "nexus-01" = {
      vmid        = 2415
      node        = "kosa4"
      template_id = 9003
      ip          = "172.16.30.15"
      cpu         = 2
      memory      = 4096
      disk_size   = 100
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }

    # Vault
    "vault-01" = {
      vmid        = 2221
      node        = "kosa2"
      template_id = 9001
      ip          = "172.16.30.21"
      cpu         = 2
      memory      = 2048
      disk_size   = 10
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }
    "vault-02" = {
      vmid        = 2322
      node        = "kosa3"
      template_id = 9002
      ip          = "172.16.30.22"
      cpu         = 2
      memory      = 2048
      disk_size   = 10
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }
    "vault-03" = {
      vmid        = 2423
      node        = "kosa4"
      template_id = 9003
      ip          = "172.16.30.23"
      cpu         = 2
      memory      = 2048
      disk_size   = 10
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }

    # HAProxy (VLAN 20)
    "haproxy-01" = {
      vmid        = 2226
      node        = "kosa2"
      template_id = 9001
      ip          = "172.16.20.11"
      cpu         = 2
      memory      = 2048
      disk_size   = 10
      storage     = "ceph-vmpool"
      vlan        = 20
      gateway     = "172.16.20.1"
    }
    "haproxy-02" = {
      vmid        = 2327
      node        = "kosa3"
      template_id = 9002
      ip          = "172.16.20.12"
      cpu         = 2
      memory      = 2048
      disk_size   = 10
      storage     = "ceph-vmpool"
      vlan        = 20
      gateway     = "172.16.20.1"
    }

    # K8s Master
    "k8s-master-01" = {
      vmid        = 2131
      node        = "kosa1"
      template_id = 9000
      ip          = "172.16.30.31"
      cpu         = 2
      memory      = 8192
      disk_size   = 35
      storage     = "local-lvm"
      vlan        = 30
      gateway     = "172.16.30.1"
    }
    "k8s-master-02" = {
      vmid        = 2232
      node        = "kosa2"
      template_id = 9001
      ip          = "172.16.30.32"
      cpu         = 2
      memory      = 6144
      disk_size   = 35
      storage     = "local-lvm"
      vlan        = 30
      gateway     = "172.16.30.1"
    }
    "k8s-master-03" = {
      vmid        = 2333
      node        = "kosa3"
      template_id = 9002
      ip          = "172.16.30.33"
      cpu         = 2
      memory      = 6144
      disk_size   = 35
      storage     = "local-lvm"
      vlan        = 30
      gateway     = "172.16.30.1"
    }

    # K8s Worker
    "k8s-worker-plat" = {
      vmid        = 2440
      node        = "kosa4"
      template_id = 9003
      ip          = "172.16.30.40"
      cpu         = 12
      memory      = 20480
      disk_size   = 80
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }
    "k8s-worker-01" = {
      vmid        = 2141
      node        = "kosa1"
      template_id = 9000
      ip          = "172.16.30.41"
      cpu         = 2
      memory      = 12288
      disk_size   = 35
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }
    "k8s-worker-02" = {
      vmid        = 2242
      node        = "kosa2"
      template_id = 9001
      ip          = "172.16.30.42"
      cpu         = 2
      memory      = 12288
      disk_size   = 35
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }
    "k8s-worker-03" = {
      vmid        = 2343
      node        = "kosa3"
      template_id = 9002
      ip          = "172.16.30.43"
      cpu         = 2
      memory      = 12288
      disk_size   = 35
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }

    # MinIO
    "minio-01" = {
      vmid        = 2450
      node        = "kosa4"
      template_id = 9003
      ip          = "172.16.30.50"
      cpu         = 2
      memory      = 4096
      disk_size   = 50
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }

    # CI/CD
    "cicd-01" = {
      vmid        = 2360
      node        = "kosa3"
      template_id = 9002
      ip          = "172.16.30.60"
      cpu         = 2
      memory      = 8192
      disk_size   = 50
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }

    # Monitoring
    "monitor-01" = {
      vmid        = 2170
      node        = "kosa1"
      template_id = 9000
      ip          = "172.16.30.70"
      cpu         = 2
      memory      = 8192
      disk_size   = 35
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }

    # SIEM
    "siem-01" = {
      vmid        = 2280
      node        = "kosa2"
      template_id = 9001
      ip          = "172.16.30.80"
      cpu         = 2
      memory      = 8192
      disk_size   = 35
      storage     = "ceph-vmpool"
      vlan        = 30
      gateway     = "172.16.30.1"
    }
  }
}

resource "proxmox_virtual_environment_vm" "vms" {
  for_each = local.vms

  vm_id     = each.value.vmid
  node_name = each.value.node
  name      = each.key

  clone {
    vm_id = each.value.template_id
    full  = true
  }

  cpu {
    cores = each.value.cpu
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = each.value.memory
  }

  disk {
    interface    = "virtio0"
    size         = each.value.disk_size
    datastore_id = each.value.storage
  }

  network_device {
    bridge  = "vmbr0"
    vlan_id = each.value.vlan
  }

  initialization {
    ip_config {
      ipv4 {
        address = "${each.value.ip}/24"
        gateway = each.value.gateway
      }
    }
    user_account {
      username = "ubuntu"
      keys     = var.ssh_public_keys
    }
  }

  agent {
    enabled = true
  }
}
