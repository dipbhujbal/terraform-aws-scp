module "ec2" {
  source          = "../../modules/ec2"
  target_id = var.target_id
  allowed_ec2_instance_types = var.allowed_ec2_instance_types
}