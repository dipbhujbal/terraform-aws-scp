variable "target_id" {
  description = "The Root ID, Organizational Unit ID, or AWS Account ID to apply SCPs."
  type        = string
}


variable "allowed_ec2_instance_types" {
  type = list(string)
  description = "List of Allowed EC2 instance types"
}