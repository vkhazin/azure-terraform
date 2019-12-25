set -e

terraform_install_dir="./bin" 
wget -O ./terraform.zip https://releases.hashicorp.com/terraform/0.12.18/terraform_0.12.18_linux_amd64.zip
unzip -o terraform.zip -d $terraform_install_dir
rm -f terraform.zip