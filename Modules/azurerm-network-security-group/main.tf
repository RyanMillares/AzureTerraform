resource "azurerm_network_security_group" "sec_group" {
  name                = var.sec_group_name
  location            = var.sec_group_rg_location
  resource_group_name = var.sec_group_rg_name
}