# 노드별로 template의 번호가 9000/9001/9002/9003으로 달라지므로
# main.tf 파일 내부 local 안에 vm마다 직접 template_id를 넣는 방식으로 바꿔
# 현재 variabled.tf 파일에서 따로 template을 지정해줄 필요가 없음
# 더군다나 variable은 하나의 값만 받을 수 있어 노드별로 template 번호를 지정해줄 수 없음.

variable "proxmox_api_token" {
  description = "Proxmox API token"
  type        = string
  sensitive   = true
}

#variable "template_id" {
#  description = "Ubuntu 24.04 template VM ID"
#  type        = number
#  default     = 9000
#}

variable "ssh_public_keys" {
  description = "SSH public keys"
  type        = list(string)
}
