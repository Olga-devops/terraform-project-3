# terraform-iaac-eks


Prerequisites:
Terraform 0.12.23

### Change the fallowing lines 
s3_bucket = "terraform-project-backend-2020-3team"                                                   #Will be used to set backend.tf 
s3_folder_project = "tower"                                                                          #Will be used to set backend.tf
s3_tfstate_file = "new-best-tower-team1.tfstate"                                                     #Will be used to set backend.tf


subnets = [                                                                                          #will be used to set eks.tf
    data.terraform_remote_state.dev.outputs.Subnet1,
    data.terraform_remote_state.dev.outputs.Subnet2,
    data.terraform_remote_state.dev.outputs.Subnet3                                                  
  ]
vpc_id = data.terraform_remote_state.dev.outputs.VPC_ID                                            #will be used to set eks.tf


## INSTALL AWSCLI
  sudo pip install awscli --ignore-installed six

### INSTALL KUBECTL
## curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.17.0/bin/linux/amd64 kubectl
## chmod +x kubectl (chmod +x ./kubectl)
## sudo mv kubectl /bin/ (sudo mv ./kubectl /bin/kubectl)

### INSTALL NEEDED TERRAFORM VERSION IF NOT MATCHING THE CURRENT
## wget https://releases.hashicorp.com/terraform/0.12.23/
## unzip terraform_0.12.23_linux_amd64.zip
## sudo mv terraform /bin/terraform_0.12.23 (OR)
## ./terraform version (which means run 0.12.23 in current system(EKS), not the one in bin)
### SET-UP
## source setenv.sh configurations/dev/dev.tfvars
## terraform_0.12.23 init
## terraform_0.12.23 apply -var-file configurations/dev/dev.tfvars



### IMPORTANT VERSIONS
- Checking for available provider plugins...
- Downloading plugin for provider "local" (hashicorp/local) 1.4.0...
- Downloading plugin for provider "template" (hashicorp/template) 2.1.2...
- Downloading plugin for provider "random" (hashicorp/random) 2.2.1...
- Downloading plugin for provider "kubernetes" (hashicorp/kubernetes) 1.11.1...
- Downloading plugin for provider "aws" (hashicorp/aws) 2.54.0...
- Downloading plugin for provider "null" (hashicorp/null) 2.1.2...

