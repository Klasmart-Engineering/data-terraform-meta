module "workspaces" {
  source = "./tfe-workspace-module"

  # Module inputs here
  region              = "eu-west-2"
  project_environment = "apifactory"
  project_region      = "uk"
  service_owner       = "Infra"

  workspace_name          = "data-services-apifactory-uk"
  env_repo                = "KL-Engineering/data-terraform-env"
  domain                  = "apifactory.kidsloop.live"
  env_repo_default_branch = "main"
  working_directory       = "apifactory/uk"

  # RBAC settings
  tfe_team_access_permissions = {
    "Infrastructure" = "admin"
    "sso"            = "read"
  }
  # Notification settings
  notify_triggers = ["run:needs_attention", "run:applying", "run:completed", "run:errored"]

  providers = {
    tfe        = tfe
  }
}