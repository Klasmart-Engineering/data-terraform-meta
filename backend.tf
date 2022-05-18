terraform {
  cloud {
    organization = "kidsloop-infrastructure"
    workspaces {
      name = "meta-data-services"
    }
  }
}