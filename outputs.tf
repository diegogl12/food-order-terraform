output "cluster_name" {
  description = "Nome do cluster EKS"
  value       = aws_eks_cluster.eks-cluster.name
}

output "cluster_endpoint" {
  description = "Endpoint para acessar o cluster EKS"
  value       = aws_eks_cluster.eks-cluster.endpoint
}

output "cluster_ca_certificate" {
  description = "Certificado CA do cluster EKS"
  value       = aws_eks_cluster.eks-cluster.certificate_authority[0].data
  sensitive   = true
}

output "region" {
  description = "Região AWS onde o cluster está implantado"
  value       = var.regionDefault
}

output "kubeconfig_command" {
  description = "Comando para configurar o kubeconfig"
  value       = "aws eks update-kubeconfig --region ${var.regionDefault} --name ${aws_eks_cluster.eks-cluster.name}"
} 