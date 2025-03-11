#!/bin/bash
secret_name=$1
github_token=$2

# GitHub repository details
owner="mikagouzee"
repo="control-plane"

# Retrieve the secret value using the GitHub API
secret_value=$(curl -s -H "Authorization: token ${github_token}" \
  "https://api.github.com/repos/${owner}/${repo}/actions/secrets/${secret_name}" | jq -r '.encrypted_value')

# Output the secret value
echo "Secret value: ${secret_value}"
