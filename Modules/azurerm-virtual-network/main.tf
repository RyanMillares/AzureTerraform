resource "azurerm_virtual_network" "v_net" {
  name                = var.vnet_name 
  location            = var.vnet_rg_location
  resource_group_name = var.vnet_rg_name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
    security_group = var.sg_id
  }

  tags = {
    environment = "Development"
  }
}