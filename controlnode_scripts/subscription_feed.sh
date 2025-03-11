#!/bin/bash

# Retrieve the subscription ID using Azure CLI
subscription_id=$(az account show --query id -o tsv)

# Define the path to your providers.tf file
providers_file="ehealth-iac/environments/dev/providers.tf"

# Use sed to replace the "subscription_id = ''" line with the actual subscription ID
sed -i 's|subscription_id = ""|subscription_id = "${subscription_id}"|g' "$providers_file"

echo "The subscription ID has been updated in $providers_file"
