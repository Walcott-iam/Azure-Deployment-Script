#!/bin/bash
LOCATION="eastus"                                    
RG_NAME="khaleed-Deploy-RG"                   
STORAGE_NAME="khaleedprod$RANDOM"             
VNET_NAME="khaleed-VNet"                      

# error handling
set -e

echo "Creating Resource Group: $RG_NAME"
az group create --name "$RG_NAME" --location "$LOCATION" --output none
echo "Resource Group created successfully!"
echo ""

echo "Creating Storage Account: $STORAGE_NAME"
az storage account create \
    --name "$STORAGE_NAME" \
    --resource-group "$RG_NAME" \
    --sku "Standard_LRS" \
    --output none
echo "Storage Account created successfully!"
echo ""

echo "Creating Virtual Network: $VNET_NAME"
az network vnet create \
    --name "$VNET_NAME" \
    --resource-group "$RG_NAME" \
    --address-prefix "10.0.0.0/16" \
    --output none
echo "Virtual Network created successfully!"
echo ""
echo "Deployment Successful! All resources have been created."
echo "Environment ready for use"