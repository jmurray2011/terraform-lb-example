- [Intention](#intention)
- [Assumptions](#assumptions)
- [Prerequisites](#prerequisites)
- [Launch instructions](#launch-instructions)
  - [NOTE](#note)

This is based off of code by [Andrei Maksimov](https://www.linkedin.com/in/avmaksimov/) / [Hands-On.Cloud](https://Hands-On.Cloud)

The original project code is [on his github](https://github.com/andreivmaksimov/terraform-recipe-managing-auto-scaling-groups-and-load-balancers)

## Intention

The intention of this repo is to mock out a base configuration for an auto-scaling, load-balanced set of web servers with automatic SSL termination.

## Assumptions

This is configured with the assumption that you have a Hosted Domain in AWS and that said domain has a Hosted Zone with the same name as is defined by the _domain_ variable. It will *NOT* create or modify existing Hosted Zones.

## Prerequisites

1. Install [terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

2. Install [aws cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

3. Generate an [IAM access key](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html) for the user account you'll be using `terraform` with

4. Create an [aws cli Named Profile](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html). This will be referred to in the `terraform` variables file `values.tfvars`

## Launch instructions

1. Copy example variables: ```cp "values.tfvars.example" "values.tfvars"```

2. Modify ```values.tfvars``` file with your desired variables and save 

3. Execute the following commands:

```
terraform init

terraform plan -out "my-plan.plan" -var-file="values.tfvars"
```

4. **Carefully review your plan for accuracy!**

5. Once satisfied, execute:

```
terraform apply my-plan.plan
```

6. Wait a few minutes for your infrastructure to come online

### NOTE

This will spit out an AWS Key Pair associated with the instances spun up by Terraform. You will need to set the correct permissions in order to use it:

```chmod 400 <my-keyfile.pem>```

The default username for the AMI is ```ec2-user```, so the correct SSH command would be:

```ssh -i "/path/to/<my-keyfile.pem>" ec2-user@<your-instance-public-ip>```
