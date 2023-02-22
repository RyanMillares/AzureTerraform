resource "azurerm_storage_account" "storage_acc" {
  name                     = "${var.account_name}"
  resource_group_name      = var.storage_rg_name
  location                 = var.storage_rg_location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}