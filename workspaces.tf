module "svc-workspaces" {
  # Module import info here
  source  = "app.terraform.io/kidsloop-infrastructure/svc-ws-kidskube/tfe"
  version = "1.4.1"

  # Module inputs here
  region              = local.region
  project_environment = "landingzone"
  project_region      = "uk"
  service_owner       = "Infra"

  domain              = "landing-zone.kidsloop.live"
  env_repo_default_branch = "main"
  working_directory       = basename(abspath("."))

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