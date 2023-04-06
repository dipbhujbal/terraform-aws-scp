variable "target_id" {
  type = string
  description = "OU or Account id to attach SCP"
}
variable "create_policy" {
  type = string
  description = "Input create policy or not"
  default = "true"
}
variable "region_lockdown" {
  type = string
  default = "us-east-1"
  description = "Region to give access"
}