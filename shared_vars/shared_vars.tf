output "vpcid" {
	value = local.vpcid
}

output "publicsubnetid" {
	value = local.publicsubnetid
}
output "privatesubnetid" {
	value = local.privatesubnetid
}
output "env_suffix" {
	value = local.env
}
locals {
	env = terraform.workspace
	
	vpcid_env = {
		default = "vpc-4b9af431"
		staging = "vpc-4b9af431"
		production= "vpc-4b9af431"
}
	vpcid = lookup(local.vpcid_env,local.env)

	publicsubnetid_env = {
		default = "subnet-2a104e76"
		staging = "subnet-2a104e76"
		production = "subnet-2a104e76"
}
	publicsubnetid = lookup(local.publicsubnetid_env,local.env)

        privatesubnetid_env = {
                default = "subnet-2a104e76"
                staging = "subnet-2a104e76"
                production = "subnet-2a104e76"
}
        privatesubnetid = lookup(local.privatesubnetid_env,local.env)

}
