# Naming conventions: https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging
source ./env/common.sh

deployment_name="trgospoc" # no symbols, lower case only

export TF_VAR_azure_region="Central US"
export TF_VAR_resource_group_name="rg-${deployment_name}-cicd"
export TF_VAR_storage_account_name="st${deployment_name}"