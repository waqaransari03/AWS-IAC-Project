provider "aws" {
	profile = "Waqar"
	region = "us-east-2"
}

module "network_module" {
	source = "./network_module"
}
