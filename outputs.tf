# internal ip adsress from VM-1 (LEMP)
output "internal_ip_address_vm_1" {
  value = module.ya_instance_1.internal_ip_address_vm
}

# external ip adsress from VM-1 (LEMP)
output "external_ip_address_vm_1" {
  value = module.ya_instance_1.external_ip_address_vm
}

# internal ip adsress from VM-2 (LAMP)
output "internal_ip_address_vm_2" {
  value = module.ya_instance_2.internal_ip_address_vm
}

# ixternal ip adsress from VM-1 (LAMP)
output "external_ip_address_vm_2" {
  value = module.ya_instance_2.external_ip_address_vm
}



