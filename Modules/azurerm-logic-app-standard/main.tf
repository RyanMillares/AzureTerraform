resource "azurerm_logic_app_standard" "logic_app" {
    name = var.la_name
    location = var.logic_rg_location
    resource_group_name = var.logic_rg_name
    app_service_plan_id = var.app_service_id
    storage_account_name = var.storage_name
    storage_account_access_key = var.storage_primary_key

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME"     = "node"
    "WEBSITE_NODE_DEFAULT_VERSION" = "~18"
  }
 
}