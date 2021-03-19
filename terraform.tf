provider "azurerm" {
  version = ">=1.2.7"
  features {}
}
variable "client_id"{
  type = string
}
variable "client_secret"{
  type = string
}
resource "azurerm_resource_group" "gitops" {
  name     = "gitops-team1"
  location = "East US 2"
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                = "quick-learning-with-tf"
  location            = "East US 2"
  resource_group_name = "gitops-team1"
  dns_prefix          = "gitops-qlwt"

  role_based_access_control{
    enabled        = false
}
  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  default_node_pool {
    name            = "default"
    vm_size         = "standard_b2s"
    node_count      = 1
    os_disk_size_gb = 30
  }
}
