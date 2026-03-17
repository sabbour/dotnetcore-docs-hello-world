#!/usr/bin/env bash
set -e
RG=asabbour-ai
LOCATION=swedencentral

az group create -n $RG -l $LOCATION

az deployment group create \
  --resource-group $RG \
  --template-file main.bicep \
  --parameters @parameters.json