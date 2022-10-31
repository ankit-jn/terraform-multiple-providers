## Outputs for VPC
output vpc_config {    
    description = "The VPC Details"
    value = module.aws_vpc.vpc_config
}

output aws_vpc_default_route_table_id {
    description = "The ID of the route table created by default on VPC creation"
    value = module.aws_vpc.vpc_default_route_table_id
}

output aws_vpc_main_route_table_id {
    description = "The ID of the main route table associated with this VPC."
    value = module.aws_vpc.vpc_main_route_table_id
}

output aws_vpc_default_network_acl_id {
    description = "The ID of the network ACL created by default on VPC creation"
    value = module.aws_vpc.vpc_default_network_acl_id
}

output aws_vpc_default_security_group_id {
    description = "The ID of the security group created by default on VPC creation"
    value = module.aws_vpc.vpc_default_security_group_id
}

output aws_vpc_dhcp_options_id {
    description = "The ID if DHCP Option"
    value = module.aws_vpc.vpc_dhcp_options_id
}

output aws_vpc_enable_classiclink {
    description = "Whether or not the VPC has Classiclink enabled"
    value = module.aws_vpc.vpc_enable_classiclink
}

output aws_vpc_enable_classiclink_dns_support {
    description = "Whether or not the VPC has Classiclink DNS support"
    value = module.aws_vpc.vpc_enable_classiclink_dns_support
}

output aws_vpc_enable_dns_support {
    description = "Whether or not the VPC has DNS support"
    value = module.aws_vpc.vpc_enable_dns_hostnames
}

output aws_vpc_enable_dns_hostnames {
    description = "Whether or not the VPC has DNS hostname support"
    value = module.aws_vpc.vpc_enable_dns_hostnames
}

output aws_vpc_ipv6_association_id {
    description = "The association ID for the IPv6 CIDR block."
    value = module.aws_vpc.vpc_ipv6_association_id
}

output aws_vpc_ipv6_cidr_block_network_border_group {
    description = "The Network Border Group Zone name"
    value = module.aws_vpc.vpc_ipv6_cidr_block_network_border_group
}

output aws_vpc_tags_all {
    description = "All tags associated to VPC"
    value = module.aws_vpc.vpc_tags_all
}

## Outputs for Internet Gateways
output aws_vpc_igw {
    description = "The details of the Internet Gateway."
    value = module.aws_vpc.vpc_igw
}

output aws_vpc_egress_igw_id {
    description = "The ID of the egress-only Internet gateway."
    value = module.aws_vpc.vpc_egress_igw_id
}

# Outputs for Subnets
output aws_subnets_public {
    description = "The configuration of all subnets"
    value = module.aws_vpc.subnets
}

# Outputs for Route Tables
output aws_public_route_table_id {
    description = "ID of Dedicated route table"
    value       = module.aws_vpc.route_table_id
}