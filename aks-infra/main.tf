provider "azurerm" {
    version = "~>2.0"
    features {}
}

terraform {
    backend "azurerm" {
        resource_group_name = var.rs_group_name //"Terraform-Infra"
        storage_account_name = var.storag_acc_name //"terraformstatebbr"
        container_name = var.container_name //"tfstate"
        key = "terraform.tfstate"
    }
}

resource "azurerm_resource_group" "sample" {
    name = "avengers"
    location = "centralus"
}
