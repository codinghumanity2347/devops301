provider "azurerm" {
  version = "=1.5.0"
}

resource "azurerm_resource_group" "k8s" {
  name     = "gitops-team1"
  location = "East US 2"
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                = "automated-cluster"
  location            = "East US 2"
  resource_group_name = "gitops"

  

  agent_pool_profile {
    name            = "default"
    count           = 1
    vm_size         = "Standard_DS2_v2"
    os_type         = "Linux"
    os_disk_size_gb = 7
  }
