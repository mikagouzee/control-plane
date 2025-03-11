provider "azurerm" {
    features {}

    use_msi = true
}

terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "2.78.0"
            
        }
    }
}