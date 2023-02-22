module "azurerm_resource_group" { 
  #count = var.test_input
  source = "./modules/azurerm-resource-group"
  resource_group_location = "${var.target_region}"
  resource_group_name = "${var.rg_prefix}_${var.rg_name}"
}
module "azurerm_network_security_group" {
  source = "./Modules/azurerm-network-security-group"
  sec_group_rg_location = module.azurerm_resource_group.rg_output_location
  sec_group_rg_name = module.azurerm_resource_group.rg_output_name
  sec_group_name = "${var.sg_prefix}_${var.sec_group_name}"
}
module "azurerm_virtual_network" {
  source = "./Modules/azurerm-virtual-network"
  sg_id = module.azurerm_network_security_group.sec_group_id
  vnet_name = "${var.vnet_prefix}_${var.vnet_name}"
  vnet_rg_location = module.azurerm_resource_group.rg_output_location
  vnet_rg_name = module.azurerm_resource_group.rg_output_name
}
module "azurerm_sql_server" {
  source = "./modules/azurerm-sql-server"
  server_name = "${var.mssql_prefix}${var.mssql_name}"
  sqlserver_rg_name = module.azurerm_resource_group.rg_output_name
  sqlserver_rg_location = module.azurerm_resource_group.rg_output_location
}
module "azurerm_app_service_plan" {
  source = "./modules/azurerm-service-plan"
  service_plan_name = "${var.as_prefix}_${var.as_name}"
  serviceplan_rg_name = module.azurerm_resource_group.rg_output_name
  serviceplan_rg_location = module.azurerm_resource_group.rg_output_location
}
module "azurerm_storage_account" {
  source = "./modules/azurerm-storage-account"
  account_name = "${var.storage_prefix}${var.sacc_name}"
  storage_rg_name = module.azurerm_resource_group.rg_output_name
  storage_rg_location = module.azurerm_resource_group.rg_output_location
}
module "azurerm_function_app" {
  source = "./modules/azurerm-function-app"
  count = var.num_func_apps
  fa_name = "${var.function_prefix}-${var.function_name}-${count.index}"
  storage_primary_key = module.azurerm_storage_account.storage_access_key
  storage_name = module.azurerm_storage_account.storage_name
  app_service_id = module.azurerm_app_service_plan.as_plan_id
  function_rg_name = module.azurerm_resource_group.rg_output_name
  function_rg_location = module.azurerm_resource_group.rg_output_location

}
module "azurerm_logic_app_workflow" {
  source = "./modules/azurerm-logic-app-workflow"
  count = var.num_logic_apps
  la_name = "${var.logic_prefix}_${var.logic_name}_${count.index}"
  logic_rg_name = module.azurerm_resource_group.rg_output_name
  logic_rg_location = module.azurerm_resource_group.rg_output_location

}

