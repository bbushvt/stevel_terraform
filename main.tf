data "ibm_resource_group" "rg" {
  name = var.resource_group
}

# data ibm_is_vpc bcbush_vpc {
#     name = var.vpc_name
# }

# data ibm_is_ssh_key sshkey {
#     name = var.sshkey_name
# }

# data ibm_is_subnet subnet1 {
#     name = var.subnet1_name
# }

# data ibm_is_subnet subnet2 {
#     name = var.subnet2_name
# }

# data ibm_is_subnet subnet3 {
#     name = var.subnet3_name
# }

data ibm_is_dedicated_host_group "host_group" {
    name = "hpc-compute-dal1"
}

resource "ibm_is_dedicated_host" "dedicated_hosts" {
  count = length(var.dh_names)
  name = var.dh_names[count.index]
  profile = "mx3d-host-176x1760"
  host_group = data.ibm_is_dedicated_host_group.host_group.id
}



# resource "ibm_is_instance" "vsis" {
#   count = length(var.vsi_names)
#   name = var.vsi_names[count.index]
#   image = var.os_image_id
#   profile = var.profile
#   primary_network_interface {
#     subnet = data.ibm_is_subnet.subnet1.id
#   }
#   vpc = data.ibm_is_vpc.bcbush_vpc.id
#   zone = var.zone1
#   keys = [data.ibm_is_ssh_key.sshkey.id]
#   resource_group = data.ibm_resource_group.rg.id
# }


