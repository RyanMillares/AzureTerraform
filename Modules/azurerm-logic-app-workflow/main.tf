resource "azurerm_logic_app_workflow" "example" {
  name                = var.la_name
  location            = var.logic_rg_location
  resource_group_name = var.logic_rg_name
}