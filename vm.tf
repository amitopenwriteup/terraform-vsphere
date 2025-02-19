resource "vsphere_virtual_machine" "vm" {
  name             = "test-vm"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 1024   # 1GB RAM
  guest_id = "other3xLinux64Guest"  # Use a valid OS identifier

  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = "vmxnet3"
  }

  disk {
    label            = "disk0"
    size             = 20  # 20GB HDD
    eagerly_scrub    = false
    thin_provisioned = true
  }

  cdrom {
    client_device = true
  }
}
