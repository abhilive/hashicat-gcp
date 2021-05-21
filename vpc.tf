module "network" {
  source  = "app.terraform.io/abhishek-srivastava-training/network/google"
  version = "2.5.0"
  network_name = "abhilive-network"
  project_id = var.project
  subnets = [
    {
        subnet_name   = "abhilive-subnet"
        subnet_ip     = "10.100.10.0/24"
        subnet_region = var.region
    }
  ]
}