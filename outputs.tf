output "argocd_project_name" {
  description = "The name of the ArgoCD project for this offering"
  value       = argocd_project.data_offering.name
}