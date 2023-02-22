variable "la_name" {
  description = "Prefix of the logic app that's combined with a random ID so name is unique in your Azure subscription."
}
variable "logic_rg_name"{
    description = "Name of Logic App Resource Group"
}
variable "logic_rg_location" {
    description = "Location of Logic App Resource Group"
}