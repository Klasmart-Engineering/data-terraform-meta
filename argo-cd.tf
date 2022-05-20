resource "argocd_project" "data_offering" {
  metadata {
    name      = local.argocd_project_name
    namespace = "argocd"
  }

  spec {
    description  = "Deployment project group for Data product offerings."
    source_repos = var.helm_source_repositories

    # TODO: for_each see if we can automate this?
    destination {
      for_each = var.kubernetes_server_urls
      server    = each.url.value
      namespace = local.offering_namespace
    }

    cluster_resource_whitelist {
      group = "*"
      kind  = "*"
    }

    orphaned_resources {
      warn = true
      #   ignore {
      #     group = "apps/v1"
      #     kind  = "Deployment"
      #     name  = "ignored1"
      #   }
    }
    # role {
    #   name = "testrole"
    #   policies = [
    #     "p, proj:myproject:testrole, applications, override, myproject/*, allow",
    #     "p, proj:myproject:testrole, applications, sync, myproject/*, allow",
    #   ]
    # }
    sync_window {
      kind         = "allow"
      applications = ["*"]
      clusters     = ["*"]
      namespaces   = ["*"]
      duration     = "30m"
      schedule     = "*/30 * * * *"
    }
    # signature_keys = [
    #   "4AEE18F83AFDEB23",
    #   "07E34825A909B250"
    # ]
  }
}
