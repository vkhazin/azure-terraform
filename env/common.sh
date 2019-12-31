###############################################################################
# Terraform remote state
###############################################################################
export terraform_install_dir="$(pwd)/bin"
export terraform_state_resource_group="rg-trgos-terraform-state"
export terraform_state_storage_account="sttrgosterraformstate"
export terraform_state_container_name="terraform-state"
###############################################################################

###############################################################################
# Naming conventions:
###############################################################################
# https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging
###############################################################################

###############################################################################
# Infra
###############################################################################
export TF_VAR_azure_region="Central US"
export TF_VAR_resource_group_name="rg-${deployment_name}-cicd"
export TF_VAR_storage_account_name="st${deployment_name}"
###############################################################################

###############################################################################
# Function Apps
###############################################################################
export TF_VAR_function_app_authc_name="authn"
export TF_VAR_function_app_authc_version="24"
###############################################################################