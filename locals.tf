locals {
  region = "eu-west-2"

  # AWS connection details - destination account (fill in details for the destination account)
  aws_target_role_arn     = "arn:aws:iam::150111280874:role/TerraformDeployRole"
  aws_target_external_id  = "3402212d-3613-4aef-8861-d5dc3ac3010e"
  aws_session_name        = "tfc-deploy_landingzone"

  # AWS connection details - DNS account (keep this one the same)
  aws_dns_role_arn     = "arn:aws:iam::572555940053:role/TerraformDeployRole"
  aws_dns_external_id  = "1e7e4a1f-266e-483a-9972-fd25dbbd28c8"

  # AWS connection details - Infra account (keep this one the same)
  aws_infra_role_arn     = "arn:aws:iam::942095822719:role/TerraformDeployRole"
  aws_infra_external_id  = "3402212d-3613-4aef-8861-d5dc3ac3010e"
}