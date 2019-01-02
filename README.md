# DOCKER SWAR + TERRAFORM + ANSIBLE
Walking through how you can create Swarm on AWS.
We will use Terraform and Ansible to complete the bootstrap process.

#### note: you need a default VPC for AWS to run it

### Usage
--> You need to install terraform and ansible in your machine to run this code <--

- Configure defaults in variables.tf or override them with flags during terraform apply
- Plan the build with terraform plan and ensure it looks as expected
- Build it with terraform apply

-> Once built,cat ansible/swarm-inventory to ensure master and workers are populated

Build Swarm cluster with ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -b -i swarm-inventory swarm.yml --private-key="you key path"

Delete all the Infrastructure with terraform destroy
Delete just the swar using ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -b -i swarm-inventory swarm-destroy.yml

#### PR's are welcome
