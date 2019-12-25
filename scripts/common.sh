set -e 
 
if [ $# -eq 0 ] 
  then 
    echo "Environment name argument is required, e.g. './scripts/plan.sh poc'" 
    exit
fi 

env=$1 
env_config="$(pwd)/env/$env.sh"

if ! [ -e ${env_config} ] 
  then 
    echo "Project configuration ${env_config} was not found" 
    exit 
fi 

source $env_config
############################################################################### 
# Deleting local state before applying 
############################################################################### 
rm -rf ./.terraform || true 
############################################################################### 
 
############################################################################### 
# Configure remote state 
############################################################################### 
cp -f ./remote-state.template ./remote-state.tf 
sed -i -e "s/{terraform_state_resource_group}/${terraform_state_resource_group}/g" ./remote-state.tf
sed -i -e "s/{terraform_state_storage_account}/${terraform_state_storage_account}/g" ./remote-state.tf
sed -i -e "s/{terraform_state_container_name}/${terraform_state_container_name}/g" ./remote-state.tf
sed -i -e "s/{terraform_state_key_name}/${env}/g" ./remote-state.tf
############################################################################### 

echo "terraform_install_dir: ${terraform_install_dir}" 
${terraform_install_dir}/terraform init