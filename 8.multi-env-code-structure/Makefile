default:
rm -rf .terraform.
terraform init -backend-config=env-${env}/state.tfvars
terraform ${action} -auto-approve -vars-file=env-${env}/main.tfvars