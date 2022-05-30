# Infrastructure as Code (IaC) with Terraform

## Table of Contents
* [Initial Setup](#initial-terraform-setup-process)
* [Deploy Infrastructure](#deploy-infrastructure)
* [Update Deployment](#make-changes-to-deployed-infrastructure)
* [Destroy Infrastructure](#destroy-infrastructure)
* [Variables](#how-to-use-variables)
* [Outputs](#pull-data-from-output)
* [References](#references)

## Initial Terraform setup process
1. Install ```awscli```.
2. Run ```aws configure```.
3. Set environmental variables:
    * ```export AWS_ACCESS_KEY_ID="<YOUR_AWS_ACCESS_KEY_ID>"```
    * ```export AWS_SECRET_ACCESS_KEY="<YOUR_AWS_SECRET_ACCESS_KEY>"```
    * ```export AWS_DEFAULT_REGION="<YOUR_AWS_DEFAULT_REGION>"```
4. Create directory for terraform code.
5. Move into that directory and create ```main.tf``` file.
6. Update ```main.tf``` with relevant provider information.
7. Run ```terraform init```.
8. Format and validate configuration:
    * To format run ```terraform fmt```.
    * To validate run ```terraform validate```

## Deploy infrastructure
1. Once above is done, run ```terraform apply```.
2. Review output, type ```yes``` if everything is as desired.

## Make changes to deployed infrastructure
1. Make changes within ```main.tf``` and save.
2. Run ```terraform apply```.

## Destroy infrastructure
1. Run ```terraform destroy```.
2. Review output, type ```yes``` if everything is as desired.

## How to use variables
1. Within ```main.tf```, update the value to be represented by the value and remove the hard coded value.
2. Update value with ```var.<variable_name>```
3. To use variables from file:
    1. Create ```variables.tf``` file within the IaC directory.
    2. Add the variable block to ```variables.tf```.
4. To use variables from command line:
    1. Run ```terraform apply -var "<variable_name>=<variable_value>"```.
5. Review output, type ```yes``` if everything is as desired.

## Pull data from output
1. Create ```outputs.tf``` file within the IaC directory.
2. Add relevant output blocks for information you'd like to pull.
3. Run ```terraform apply```.
4. Review output, type ```yes``` if everything is as desired.
5. To view just defined output, run ```terraform output```.

## References
1. [HashiCorp Terraform Tutorial](https://learn.hashicorp.com/tutorials/terraform/aws-outputs?in=terraform/aws-get-started)

