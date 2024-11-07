default:
       rm -rf terraform init
       terraform init -backend-config=env-$(var.env)/state.tfvars
       terraform $(action) -auto-approve -var-file=env-$(var.env)/main.tfvars