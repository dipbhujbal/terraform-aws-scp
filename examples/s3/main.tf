
module "s3" {
  source          =  "../../modules/s3"
  target_id       =  var.target_id
  create_policy   =  var.create_policy
  region_lockdown =  var.region_lockdown
}
