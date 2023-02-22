variable "la_name" {
  description = "Prefix of the logic app that's combined with a random ID so name is unique in your Azure subscription."
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
variable "logic_rg_name"{
    description = "Name of Function App Resource Group"
}
variable "logic_rg_location" {
    description = "Location of Function App Resource Group"
}