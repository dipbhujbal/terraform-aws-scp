variable "target_id" {
  type = string
  description = "OU or Account id to attach SCP"
}
variable "create_policy" {
  type = string
  description = "Input create policy or not"
}
variable "region_lockdown" {
  type = string
  description = "Region to give access"
}
