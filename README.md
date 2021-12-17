This is based off of this article: https://github.com/andreivmaksimov/terraform-recipe-managing-auto-scaling-groups-and-load-balancers
by [Andrei Maksimov](https://www.linkedin.com/in/avmaksimov/) / [Hands-On.Cloud](https://Hands-On.Cloud)

The original code is [on his github](https://github.com/andreivmaksimov/terraform-recipe-managing-auto-scaling-groups-and-load-balancers)

## Assumptions

This is configured with the assumption that you have a Hosted Domain in AWS and that said domain has a Hosted Zone with the same name as is defined by the _domain_ variable. It will *NOT* create or modify existing Hosted Zones.

## Launch instructions

1. Copy example variables: ```cp values.auto.tfvars.example values.auto.tfvars```

2. Modify new file with your desired variables, save to ```values.auto.tfvars```

3. Execute the following commands:

```
terraform init
terraform plan -out my-plan.plan
```

4. Carefully review your plan for accuracy!

5. Once satisfied, execute:

```
terraform apply my-plan.plan
```

6. Wait a few minutes for your infrastructure to come online
