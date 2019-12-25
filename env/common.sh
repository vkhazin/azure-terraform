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
# Function Apps
###############################################################################
export TF_VAR_function_app_authc_name="authn"