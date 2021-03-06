module "website" {
  source               = "github.com/domroutley/static-website-module"
  endpoint             = "dom"
  storage_account_name = "websitesdomroutley"
}

terraform {
  backend "azurerm" {
    storage_account_name = "tfstatesdom"
    container_name       = "tfstate"
    key                  = "tfstate"
  }
}

provider "azurerm" {
  features {}
}
