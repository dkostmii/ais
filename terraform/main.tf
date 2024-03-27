resource "virtualbox_vm" "example" {
  name        = "terraform-provisioned-vm-1"
  image       = "https://vagrantcloud.com/ubuntu/boxes/xenial64/versions/20180420.0.0/providers/virtualbox.box"
  memory      = "1024 mib"
  cpus        = "1"
  boot_order  = ["disk"]

  network_adapter {
    type           = "bridged"
    host_interface = "wlan0"
  }
}
