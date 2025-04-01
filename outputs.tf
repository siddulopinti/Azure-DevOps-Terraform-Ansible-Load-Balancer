# outputs.tf

output "public_ip" {
  description = "The public IP address of the load balancer"
  value       = azurerm_public_ip.lb_pip.ip_address
}

output "cdn_endpoint" {
  description = "The CDN endpoint"
  value       = azurerm_cdn_endpoint.cdn_endpoint.host_name
}
