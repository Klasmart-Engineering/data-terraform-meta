output "region" {
  description = "Cloud provider region for this deployment"
  value       = module.svc-workspaces.region
}
output "project_environment" {
  description = "Shorthand name of the environment (e.g. prod, stage, dev...)"
  value       = module.svc-workspaces.project_environment
}
output "project_region" {
  description = "Two letter country code for the market which this environment serves (e.g. kr / lk / in etc..)"
  value       = module.svc-workspaces.project_region
}
output "service_owner" {
  description = "Name of the team who owns and manages this deployment."
  value       = module.svc-workspaces.service_owner
}
output "domain" {
  description = "Name of the domain where this deployment will be hosted."
  value       = module.svc-workspaces.domain
}
output "working_directory" {
  description = "Directory name for the Terraform code."
  value       = module.svc-workspaces.working_directory
}
output "env_repo_default_branch" {
  description = "Deployment branch name in Git of the environment repos."
  value       = module.svc-workspaces.env_repo_default_branch
}

output "tags" {
  description = "Map of provider tags that should be applied into the dependent environments."
  value       = module.svc-workspaces.tags
}

# AWS connection details outputs
output "aws_session_name" {
  description = "AWS IAM session name for assume role calls."
  value       = local.aws_session_name
}
output "aws_target_role_arn" {
  description = "AWS IAM role ARN for the target AWS account."
  value       = local.aws_target_role_arn
}
output "aws_target_external_id" {
  description = "AWS IAM external ID for the target AWS account."
  value       = local.aws_target_external_id
}
output "aws_dns_role_arn" {
  description = "AWS IAM role ARN for the DNS AWS account."
  value       = local.aws_dns_role_arn
}
output "aws_dns_external_id" {
  description = "AWS IAM external ID for the DNS AWS account."
  value       = local.aws_dns_external_id
}
output "aws_infra_role_arn" {
  description = "AWS IAM role ARN for the Infra AWS account."
  value       = local.aws_infra_role_arn
}
output "aws_infra_external_id" {
  description = "AWS IAM external ID for the Infra AWS account."
  value       = local.aws_infra_external_id
}