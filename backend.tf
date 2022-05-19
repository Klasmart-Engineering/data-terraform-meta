terraform {
  cloud {
    organization = "kidsloop-infrastructure"
    workspaces {
      # name = "meta-data-services"
      name = "service-meta-data"
    }
  }
}