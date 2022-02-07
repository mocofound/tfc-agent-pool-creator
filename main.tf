resource "tfe_organization" "test-organization" {
  name  = "my-org-name"
  email = "admin@company.com"
}

resource "tfe_agent_pool" "test_agent_pool" {
  name         = var.tfc_agent_pool_name
  organization = var.tfc_organization
}

variable "tfc_agent_pool_name" {
  type = string
}

variable "tfc_organization" {
  type = string
}

output "tfc_agent_pool_name" {
  value = tfe_agent_pool.test_agent_pool.name
}
