resource "azurerm_sql_server" "sql_server" {
  name                         = var.server_name
  resource_group_name          = var.sqlserver_rg_name
  location                     = var.sqlserver_rg_location
  version                      = "12.0"
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_pass

  tags = {
    environment = "development"
  }
  }