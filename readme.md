# Azure Terraform Environment

## Overview

* Terraform setup of Azure Environment
* Suitable for a production-like environment setup or for ci/cd environment initialization

## Azure Portal Setup

* One-time per subscription
* Create a new `resource group`, `storage account` and `container` for the [remote state](./remote-state.tf)

## Local Setup

* One-time per local environment after repository has been cloned
* Enable scripts execution: `chmod +x ./scripts/*.sh && chmod +x ./env/*.sh`
* Install terraform: `./scripts/setup-ubuntu-18.04.sh`


## Environment setup

* Create a new file under ./env folder or update an existing file
* Verify the plan: `./scripts/plan.sh poc`

## Usage

* For Cosmos DB container creation, we need to pass unique key parameters in the command: terraform apply -var='unique_key_list=["/uniquekey1","/uniquekey2"]'
* Also, for passing the partition_key_name in Cosmos DB Container creation, need to specify the key name with a forward slash
