provider "azurerm" {
  features {}
}


resource "azurerm_virtual_network" "vnet" {
  name                = "satha-vm-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "southindia"
  resource_group_name = "satha-pc"
}

resource "azurerm_subnet" "subnet" {
  name                 = "internal"
  resource_group_name  = "satha-pc"
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}


resource "azurerm_public_ip" "pip" {
  name                = "satha-vm-ip"
  resource_group_name = "satha-pc"
  location            = "southindia"
  allocation_method   = "Static"

}

resource "azurerm_network_interface" "nic" {
  name                = "satha-vm308"
  location            = "southindia"
  resource_group_name = "satha-pc"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }
}


resource "azurerm_windows_virtual_machine" "vm" {
  name                = "satha-vm"
  resource_group_name = "satha-pc"
  location            = "southindia"
  size                = "Standard_D2s_v3"
  priority            =  "Spot"
  eviction_policy     =  "Deallocate"
  admin_username      = "sathavahana"
  admin_password      = "Bdc13@2028@123456"
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 128
  }

  source_image_reference {
    publisher = "microsoftwindowsdesktop"
    offer     = "windows-11"
    sku       = "win11-22h2-pro"
    version   = "latest"
  }
}
