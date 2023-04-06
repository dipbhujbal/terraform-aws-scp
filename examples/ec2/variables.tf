variable "target_id" {
  type = string
  #default = "919611311137"
  description = "OU or Account id to attach SCP"
}
variable "allowed_ec2_instance_types" {
  type = list(string)
  #default = ["t3.large","t3.medium", "t2.micro", "t3.xlarge"]
  description = "List of Allowed EC2 instance types"
}