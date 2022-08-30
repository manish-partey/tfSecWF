/*

The following links provide the documentation for the new blocks used
in this terraform configuration file

1.azurerm_storage_account - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account

*/

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.8.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "e8f1787b-1cc9-46b9-b301-d36898fa4a71"
  tenant_id = "ca791cb1-cc7a-4286-bff9-5b1895019204"
  client_id = "da3ce896-db3d-499f-98fb-15c26fcb4d6b"
  client_secret = "2667da6f-b1f2-4302-b9be-eaed6b1eeb4f"
  features {}  
}

resource "azurerm_resource_group" "appgrp" {
  name     = "app-grp"
  location = "North Europe"
}

resource "azurerm_storage_account" "mpartey566565637" {
  name                     = "mpartey566565637"
  resource_group_name      = "app-grp"
  location                 = "North Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
}