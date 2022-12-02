# We strongly recommend using the required_providers block to set the
# AWS Provider source and version being used
terraform {
  
  # use Terraform Cloud
  cloud {
    organization = "tobiasdenzler"
    workspaces {
      name = "learn-terraform-aws"
    }
  }

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.0.0"
    }
  }

  required_version = ">= 1.1"
}

# The default provider configuration; resources that begin with `aws_` will use
# it as the default, and it can be referenced as `aws`.
provider "aws" {
  region = "eu-west-1"
}

# Additional provider configuration for us-east region; resources can
# reference this as `aws.useast`.
provider "aws" {
  alias  = "useast"
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"

  tags = var.resource_tags
}

resource "random_pet" "petname" {
  length    = 5
  separator = "-"
}

resource "aws_s3_bucket" "sample" {
  bucket = random_pet.petname.id

  acl    = "public-read"

  tags = {
    public_bucket = true
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-01cae1550c0adea9c"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
    accounting = "charge-${var.resource_tags["project"]}-${var.resource_tags["environment"]}"
  }
}