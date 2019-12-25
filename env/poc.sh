# Naming conventions: https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging
source ./env/common.sh

export TF_VAR_azure_region="Central US"
export TF_VAR_resource_group_name="rg-trgos-cicd"