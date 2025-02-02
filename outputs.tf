# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.cluster_name
}

# these parameters are used by `learn-external-secrets`
output "oidc_provider_arn" {
  description = "Kubernetes OIDC Provider Arn"
  value       = module.eks.oidc_provider_arn
}

output "cluster_version" {
  description = "Kubernetes Cluster Version"
  value       = module.eks.cluster_version
}

output "configure_kubectl" {
  description = "Configure kubectl: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig"
  value       = "aws eks --region ${var.region} update-kubeconfig --name ${module.eks.cluster_name}"
}

output "vpc_id" {
  description = "VPC id for use in other projects"
  value       = module.vpc.vpc_id
}
output "vpc_database_subnet_group_name" {
  description = "VPC database_subnet_group_name for use in other projects"
  value       = module.vpc.database_subnet_group_name
}
output "vpc_private_subnets_cidr_blocks" {
  description = "VPC private_subnets_cidr_blocks for use in other projects"
  value       = module.vpc.private_subnets_cidr_blocks
}
