# example-terraform

Some basic examples for Terraform using different providers.

## Azure
* [Provider Authentication](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret)
* [Terraform Provider](https://github.com/hashicorp/terraform-provider-azurerm)

Export the following values
```
export ARM_CLIENT_ID="..."
export ARM_CLIENT_SECRET="..."
export ARM_SUBSCRIPTION_ID="..."
export ARM_TENANT_ID="..."
```

## AWS
* [Provider Authentication](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration)
* [Terraform Provider](https://github.com/hashicorp/terraform-provider-aws)

Export the following values
```
export AWS_ACCESS_KEY_ID="..."
export AWS_SECRET_ACCESS_KEY="..."
export AWS_REGION="..."
```
