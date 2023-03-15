## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.86.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.86.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ya_instance_1"></a> [ya\_instance\_1](#module\_ya\_instance\_1) | ./modules/instance | n/a |
| <a name="module_ya_instance_2"></a> [ya\_instance\_2](#module\_ya\_instance\_2) | ./modules/instance | n/a |

## Resources

| Name | Type |
|------|------|
| [yandex_lb_network_load_balancer.foo](https://registry.terraform.io/providers/yandex-cloud/yandex/0.86.0/docs/resources/lb_network_load_balancer) | resource |
| [yandex_lb_target_group.foo](https://registry.terraform.io/providers/yandex-cloud/yandex/0.86.0/docs/resources/lb_target_group) | resource |
| [yandex_vpc_network.network-1](https://registry.terraform.io/providers/yandex-cloud/yandex/0.86.0/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.subnet-1](https://registry.terraform.io/providers/yandex-cloud/yandex/0.86.0/docs/resources/vpc_subnet) | resource |
| [yandex_vpc_subnet.subnet-2](https://registry.terraform.io/providers/yandex-cloud/yandex/0.86.0/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | Default ID yandex cloud | `string` | `"b1goral11t4lro8uppkv"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Default folder ID in yandex cloud | `string` | `"b1g2d41pq9qq6kcdtgoj"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address_vm_1"></a> [external\_ip\_address\_vm\_1](#output\_external\_ip\_address\_vm\_1) | n/a |
| <a name="output_external_ip_address_vm_2"></a> [external\_ip\_address\_vm\_2](#output\_external\_ip\_address\_vm\_2) | n/a |
| <a name="output_internal_ip_address_vm_1"></a> [internal\_ip\_address\_vm\_1](#output\_internal\_ip\_address\_vm\_1) | n/a |
| <a name="output_internal_ip_address_vm_2"></a> [internal\_ip\_address\_vm\_2](#output\_internal\_ip\_address\_vm\_2) | n/a |