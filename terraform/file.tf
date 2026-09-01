terraform {
          required_providers   {
           azurerm = {
           source = "hashicorp/azurerm" 
           version ="4.64.0"
} 
} 
}
 provider "azurerm" {
        features{}
  subscription_id= "e170e6f1-ca80-4879-9605-a5c46172cf73"
           }

resource "azurerm_resource_group" "avi" {
  name     = "prikshit_rggg"
  location = "Central India"
}



resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"

  template {
    owner                = "github"
    repository           = "terraform-template-module"
    include_all_branches = true
  }
}

