## ARJ-Stack: Terraform -> Dealing with Multiple Providers

This Example Configuration is a demonstration of dealing with multiple providers. To keep the case simple, we have taken an example of resource provisioning in AWS and Azure cloud while also introducing HTTP provider to deal with HTTP(s) URL.

#### Resources to be provisioned as an outcome of this example
---

#### AWS Resources

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | VPC | `arjstack-vpc` | CIDR - 10.0.0.0/24 |
| 2 | Default Network ACL | `arjstack-vpc-nacl-default` |  |
| 3 | Default Route Table | `arjstack-vpc-rt-default` |  |
| 4 | Default Security Group | `arjstack-vpc-sg-default` |  |
| 5 | Internet Gateway | `arjstack-vpc-igw` |  |
| 6 | Subnet | `public-subnet` | CIDR - `10.0.0.0/25`. This is Public Subnet |
| 7 | Route Table | `arjstack-vpc-rt-public` | This route table will be dedicated for Public Subnets | 
| 8 | Route |  | Route to Destination (Internet, 0.0.0.0/0) via Internet Gateway (`arjstack-vpc-igw`) in Public Route Table `arjstack-vpc-rt-public` |
| 9 | Network ACL | `arjstack-vpc-nacl-public` | This Network ACL will be applied on Public Subnets |
| 10 | Network ACL Rule |  | Inbound Rule is created in NACL `arjstack-vpc-nacl-public` |
| 11 | Network ACL Rule |  | Outbound Rule is created in NACL `arjstack-vpc-nacl-public` |
| 12 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Public Route Table (`arjstack-vpc-rt-public`) with Public Subnet (`public-subnet`) |

#### AZURE Resources

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Resource Group | `arjstack-rg` |  |

#### HTTP Data Resources

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | `http.terraform-check` |  |  |

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.22.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_aws) | 3.14.0 |
| <a name="requirement_http"></a> [http](#requirement\_aws) | 2.2.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.22.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.14.0 |
| <a name="provider_http"></a> [http](#provider\_http) | 2.2.0 |

### Usages

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note: Select the correct the AWS provider configurations in `provider.tf` file

### Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/ankit-jn/terraform-multiple-providers/graphs/contributors).
