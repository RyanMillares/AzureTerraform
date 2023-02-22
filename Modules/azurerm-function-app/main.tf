resource "azurerm_function_app" "function_app" {
    name = var.fa_name
    location = var.function_rg_location
    resource_group_name = var.function_rg_name
    app_service_plan_id = var.app_service_id
    storage_account_name = var.storage_name
    storage_account_access_key = var.storage_primary_key
}