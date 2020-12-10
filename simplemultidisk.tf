variable "server" {}
variable "password" {}
variable "user_name" {}
#variable "disk_label" {}
provider "vsphere" {
  user           = "${var.user_name}"
  password       = "${var.password}"
  vsphere_server = "${var.server}"

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = "devcloud"
}

data "vsphere_datastore" "datastore" {
  name          = "vmstore"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

resource "vsphere_virtual_disk" "ln1Disk" {
  size         = 20
  vmdk_path    = "latenight1_diskir.vmdk"
  datacenter   = "devcloud"
  datastore    = "vmstore"
  type         = "thin"
}

resource "vsphere_virtual_disk" "ln2Disk" {
  size         = 20
  vmdk_path    = "latenight2_diskir.vmdk"
  datacenter   = "devcloud"
  datastore    = "vmstore"
  type         = "thin"
}

resource "vsphere_virtual_disk" "ln3Disk" {
  size         = 20
  vmdk_path    = "latenight3_diskir.vmdk"
  datacenter   = "devcloud"
  datastore    = "vmstore"
  type         = "thin"
}

resource "vsphere_virtual_disk" "ln4Disk" {
  size         = 20
  vmdk_path    = "latenight4_diskir.vmdk"
  datacenter   = "devcloud"
  datastore    = "vmstore"
  type         = "thin"
}

resource "vsphere_virtual_disk" "ln5Disk" {
  size         = 20
  vmdk_path    = "latenight5_diskir.vmdk"
  datacenter   = "devcloud"
  datastore    = "vmstore"
  type         = "thin"
}

