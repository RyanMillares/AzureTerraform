variable "service_plan_name" {
    description = "Name of AS Plan Name"
}
variable "serviceplan_rg_name"{
    description = "Name of AS Service Plan Resource Group"
}
variable "serviceplan_rg_location" {
    description = "Location of the AS Service Plan Resource Group"
}
variable "as_sku_tier" {
    default = "Standard"
}
variable "as_sku_size" {
    default = "S1"
}