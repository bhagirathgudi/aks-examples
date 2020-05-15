provider "azurerm" {
    version = "~>2.0"
    subscription_id = "${var.sub}"
    client_id       = "${var.client_id}"
    client_secret   = "${var.client_secret}"
    tenant_id       = "${var.tenant_id}"
    features {}
}

terraform {
    backend "azurerm" {
        resource_group_name = "Terraform-Infra"
        storage_account_name = "terraformstatebbr"
        container_name = "tfstate"
        key = "terraform.tfstate"
    }
}

resource "azurerm_resource_group" "sample" {
    name = "avengers"
    location = "centralus"
}
