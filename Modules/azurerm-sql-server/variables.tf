variable "server_name" {
  description = "Name of SQL Server instance."
}
variable "sqlserver_rg_name"{
    description = "Name of SQL Server Resource Group"
}
variable "sqlserver_rg_location" {
    description = "Location of the SQL Server Resource Group"
}
variable "admin_login" {
  default = "db_admin"
  description = "Username of admin account"
}
variable "admin_pass" {
  default = "Password123!"
  description = "Password of admin account"
}
