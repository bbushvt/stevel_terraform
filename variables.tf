variable "ibmcloud_api_key" {
  description = "the IBM Cloud API key"
  default = "us-south-vdc1-rg"
}

variable resource_group {
  description = "Name of resource group to provision resources"
  default     = "us-south-vdc1-rg"
}

variable "ibmcloud_region" {
  description = "Preferred IBM Cloud region to use for your infrastructure"
  default = "us-south"
}

variable "vpc_name" {
  default = "bcbush-test"
  description = "Name of your VPC"
}

variable "sshkey_name" {
  default = "bcbush-ssh"
}

variable "subnet1_name" {
  default = "sn-20240917-01"
}

variable "subnet2_name" {
  default = "sn-20240917-02"
}

variable "subnet3_name" {
  default = "sn-20240917-03"
}

variable "os_image_id" {
    description = "us-south image id for Ubuntu 24.04"
  default = "r006-587a041d-9246-44f0-980b-56a327cf5bd7"
}

variable "vsi_names" {
  type = list(string)
  default = [ "bcbush-vsi01", "bcbush-vsi02", "bcbush-vsi03" ]
}

variable "dh_names" {
  type = list(string)
  default = [ "lsf-dedicated-host-03",  "lsf-dedicated-host-04", "lsf-dedicated-host-05",  "lsf-dedicated-host-06", "lsf-dedicated-host-07", "lsf-dedicated-host-08", "lsf-dedicated-host-09", "lsf-dedicated-host-10", "lsf-dedicated-host-11", "lsf-dedicated-host-12", "lsf-dedicated-host-13", "lsf-dedicated-host-14", "lsf-dedicated-host-15", "lsf-dedicated-host-16", "lsf-dedicated-host-17", "lsf-dedicated-host-18", "lsf-dedicated-host-19",]
}

variable "profile" {
  default = "cx2-2x4"
  description = "Instance profile to be used for virtual instances"
}

variable "zone1" {
  default = "us-south-1"
  description = "Define the 1st zone of the region"
}

variable "zone2" {
  default = "us-south-2"
  description = "Define the 2nd zone of the region"
}

variable "zone3" {
  default = "us-south-3"
  description = "Define the 3rd zone of the region"
}