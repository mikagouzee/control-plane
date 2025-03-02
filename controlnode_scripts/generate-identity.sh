#!/bin/bash

# Load the Terraform output from the JSON file
terraform_output=$(cat terraform_output.json)

# Extract the control node identity client ID using jq
controlnode_identity_client_id=$(echo $terraform_output | jq -r '.controlnode_identity_client_id.value')

# Log in to Azure using the managed identity client ID
az login --identity

echo "Logged in using managed identity client ID: $controlnode_identity_client_id"

# Your additional commands can follow here
# For example, creating additional VMs, configuring services, etc.
