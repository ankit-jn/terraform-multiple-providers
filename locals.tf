locals {
  tags = merge(var.default_tags, var.env_tags)
}
