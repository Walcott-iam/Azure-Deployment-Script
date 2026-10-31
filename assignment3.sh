#!/bin/bash


LOCATION="eastus"

read -p "Enter Project Name: " PROJECT_NAME


if [ -z "$PROJECT_NAME" ]; then
    echo "Error: Project Name cannot be empty!"
    exit 1
fi

echo "Project Name: $PROJECT_NAME"
echo "Using Azure Location: $LOCATION"
echo ""

ENVIRONMENTS=("Dev" "Test" "UAT" "Production")

for ENV in "${ENVIRONMENTS[@]}"; do
    RESOURCE_GROUP_NAME="${PROJECT_NAME}-${ENV}-RG"
    echo "Creating Resource Group: $RESOURCE_GROUP_NAME"
    if az group create --name "$RESOURCE_GROUP_NAME" --location "$LOCATION" --output none; then
        echo "Successfully created: $RESOURCE_GROUP_NAME"
    else
        echo "Failed to create: $RESOURCE_GROUP_NAME"
    fi
    echo ""
done

echo "All tasks completed!"