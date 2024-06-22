location = "eastus"

network_interface_name = "myNetworkInterface"

enable_accelerated_networking = true

network_security_group_name = "myNetworkSecurityGroup"

network_security_group_rules = [
  {
    name                       = "allow_ssh"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
]

subnet_name = "mySubnet"

virtual_network_name = "myVnet"

address_prefixes = ["10.0.0.0/16"]

subnets = [
  {
    name           = "mySubnet"
    address_prefix = "10.0.1.0/24"
  }
]

public_ip_address_name = "myPublicIP"

public_ip_address_type = "Static"

public_ip_address_sku = "Standard"



virtual_machine_name = "myVM"

virtual_machine_computer_name = "myVM"

virtual_machine_rg = "myResourceGroup"

os_disk_type = "Premium_LRS"

os_disk_delete_option = "Delete"

data_disks = [
  {
    name                    = "datadisk1"
    lun                     = 0
    create_option           = "Empty"
    caching                 = "ReadWrite"
    disk_size_gb            = 1024
    storage_account_type    = "Premium_LRS"
    id                      = null
    delete_option           = "Delete"
    write_accelerator_enabled = false
  }
]

virtual_machine_size = "Standard_DS1_v2"

nic_delete_option = "Delete"

hibernation_enabled = false

admin_username = "adminuser"

admin_password = "P@ssw0rd1234"

patch_mode = "AutomaticByPlatform"

enable_hotpatching = true

security_type = "TrustedLaunch"

secure_boot = true

vtpm = true
