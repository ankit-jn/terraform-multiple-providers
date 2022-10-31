## Create AWS VPC along with public subnets
module "aws_vpc" {
    source = "git::https://github.com/arjstack/terraform-aws-vpc.git?ref=v1.0.0"
    
    vpc_name = var.vpc_name
    ipv4_cidr_block = var.vpc_cidr

    vpc_dns_configs = var.vpc_dns_configs

    dedicated_network_acl = var.dedicated_network_acl
    dedicated_route_table = var.dedicated_route_table
    subnets_type = "public"
    subnets = var.subnets_public

    default_tags = local.tags
}

## Create Azure Resource Group 
module "azure_rg" {
    source = "./modules/azure/rg"

    name      = var.rg_name
    location  = var.az_location
    tags      = local.tags
}

## Terraform check using HTTP URL
# https://checkpoint-api.hashicorp.com/v1/check/terraform 
module "http_url" {
    source  = "./modules/http"
    url     = var.url
}