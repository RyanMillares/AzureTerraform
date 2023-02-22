variable "fa_name" {
  description = "Prefix of the server name that's combined with a random ID so name is unique in your Azure subscription."
}
variable "storage_primary_key" {
    description = "Primary Access Key to Storage Account"
}
variable "storage_name" {
    description = "Name of Storage Account"
}
variable "app_service_id" {
    description = "ID of App Service Plan"
}
variable "function_rg_name"{
    description = "Name of Function App Resource Group"
}
variable "function_rg_location" {
    description = "Location of Function App Resource Group"
}
