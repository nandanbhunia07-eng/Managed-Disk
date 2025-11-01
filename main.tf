# Create Managed Disk
resource "azurerm_managed_disk" "data_disk" {
  name                 = "${var.prefix}-data-disk"
  location             = var.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = "Standard_LRS"      # Options: Standard_LRS, Premium_LRS, StandardSSD_LRS, Premium_ZRS
  create_option        = "Empty"             # Other options: Import, Copy, Restore, FromImage
  disk_size_gb         = 256                # Disk size in GB
  tags = {
    environment = "Dev"
  }
}