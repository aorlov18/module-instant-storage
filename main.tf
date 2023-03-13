terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.86.0"

    }
  }
  # storage backend
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "ttf-state-bucket"
    region                      = "ru-central1-a"
    key                         = "terraform1.tfstate"
    shared_credentials_file     = "storage.key"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
# provider "Yandex"
provider "yandex" {
  service_account_key_file = "./key.json"
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = "ru-central1-a"
}


# Create a network in the zone "default" ("ru-central1-a")
resource "yandex_vpc_network" "network-1" {
  name        = "network-1"
  description = "my_network"
}
# Create a subnet-1 in the network
resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet-1"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}

# Create a subnet-1 in the network
resource "yandex_vpc_subnet" "subnet-2" {
  name           = "subnet-2"
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.11.0/24"]
}

# intall virteall machin from the family image "lemp" Name "lemp"
module "ya_instance_1" {
  source                = "./modules/instance"
  instance_family_image = "lemp"
  vpc_subnet_id         = yandex_vpc_subnet.subnet-1.id
}

# intall virteall machin from the family image "LAMP" Name "LAMP"
module "ya_instance_2" {
  source                = "./modules/instance"
  instance_family_image = "lamp"
  vpc_subnet_id         = yandex_vpc_subnet.subnet-2.id
  instance_zone         = "ru-central1-b"
}
