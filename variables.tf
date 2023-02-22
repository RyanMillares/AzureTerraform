# hard-coded variables
variable "target_region" {}
variable "rg_prefix" {}
variable "mssql_prefix" {}
variable "as_prefix" {}
variable "storage_prefix" {}
variable "function_prefix" {}
variable "logic_prefix" {}
variable "sg_prefix" {}
variable "vnet_prefix" {}

#user-required variables
variable "num_logic_apps" {
    default = 2
}
variable "num_func_apps" {
    default = 2
}
variable "rg_name" {
    default = "default_group"
}
variable "sacc_name" {
    default = "storageaccount"
}
variable "mssql_name" {
    default = "default-server"
}
variable "as_name" {
    default = "default-as-plan"
}
variable "logic_name" {
    default = "default-logic-app"
}
variable "function_name" {
    default = "default-func-app"
}
variable "sec_group_name" {
    default = "default-security-group"
}
variable "vnet_name" {
    default = "default-virtual-network"
}