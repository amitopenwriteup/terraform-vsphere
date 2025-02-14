# Get Datacenter Info
data "vsphere_datacenter" "dc" {
  name = "Datacenter"
}

# Get Cluster Info
data "vsphere_compute_cluster" "cluster" {
  name          = "Cluster"
  datacenter_id = data.vsphere_datacenter.dc.id
}

# Get Datastore Info
data "vsphere_datastore" "datastore" {
  name          = "Datastore"
  datacenter_id = data.vsphere_datacenter.dc.id
}

# Get Network Info
data "vsphere_network" "network" {
  name          = "VM Network"
  datacenter_id = data.vsphere_datacenter.dc.id
}

# Get Host Info
data "vsphere_host" "host" {
  name          = "esxi-1.cloudadda.local"
  datacenter_id = data.vsphere_datacenter.dc.id
}
