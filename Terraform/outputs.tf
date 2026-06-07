output "vm_ips" {
  description = "생성된 VM IP 목록"
  value = {
    for k, v in proxmox_virtual_environment_vm.vms :
    k => v.initialization[0].ip_config[0].ipv4[0].address
  }
}
