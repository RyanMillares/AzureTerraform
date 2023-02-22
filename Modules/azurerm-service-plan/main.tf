resource "azurerm_app_service_plan" "service_plan" {
  name                = var.service_plan_name
  resource_group_name = var.serviceplan_rg_name
  location            = var.serviceplan_rg_location
  #os_type             = "Linux"
  #sku_name            = "P1v2"
  
  sku {
    tier = var.as_sku_tier
    size = var.as_sku_size
  }
}