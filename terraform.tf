provider "azurerm" {
  version = "=1.5.0"
}

resource "azurerm_resource_group" "k8s" {
  name     = "gitops-team1"
  location = "East US 2"
}
