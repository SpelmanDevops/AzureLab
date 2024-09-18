#!/bin/bash

# Ensure Azure CLI is logged in
az login --service-principal -u "c3b0265f-a426-4c84-9f6f-5b8c45eb4c6e" -p "IaB8Q~u7T.NRhzEpDpjX98r9Sa8WCQm2~ouixaIe" --tenant "0ac96593-38b1-430b-8a73-a9e89ad1cca8"

# Variables to be baked into pipeline so to not be in code
USER_PRINCIPAL_NAME="adam.spelmanDevOps@gmail.com"
PASSWORD="Hello123"
DISPLAY_NAME="Adam Spelman Guest Account"
GROUP_NAME="DevOpsGroup"
ROLE_NAME="Contributor"
SUBSCRIPTION_ID="74e6ec23-e1de-4926-8fe5-fd9dda0b91f4"

# Create an Entra AD User
az ad user create \
    --display-name "$DISPLAY_NAME" \
    --password "$PASSWORD" \
    --user-principal-name "$USER_PRINCIPAL_NAME" \
    --force-change-password-next-login false

echo "User '$DISPLAY_NAME' created successfully."