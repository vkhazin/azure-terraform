# Azure Terraform Environment

## Overview

* Terraform setup of Azure Environment
* Suitable for a production-like environment setup or for ci/cd environment initialization

## Azure Portal Setup

* One-time per subscription
* Create a new `resource group`, `storage account` and `container` for the [remote state](./remote-state.tf)

## Local Setup

* Azure cli authentication: `az login`
* One-time per local environment after repository has been cloned
* Enable scripts execution: `chmod +x ./scripts/*.sh && chmod +x ./env/*.sh`
* Install terraform: `./scripts/local-setup-ubuntu-18.04.sh`


## Environment setup

* Create a new file under ./env folder or update an existing file
* To select/change subscription: `az account set --subscription="SUBSCRIPTION_ID"`
* Verify the plan: `./scripts/plan.sh poc`
* Apply the plan: `./scripts/apply.sh poc`
* Destroy the plan: `./scripts/destroy.sh poc`
