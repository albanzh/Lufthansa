# Lufthansa

Azure Infrastructure Deployment with Terraform

This repository contains Terraform scripts for deploying a resilient infrastructure on Microsoft Azure.
Infrastructure Overview
The following resources are provisioned:
Resource Group: A foundational resource to group and manage all related Azure resources.
Virtual Network and Subnet: Network configurations for isolating resources and managing the flow of data.
Network Security Group: To define inbound and outbound security rules for the resources.
Public IP: Allocates public IPs for VMs and Load Balancers.
Network Interface: Configures network interfaces for Virtual Machines.
Load Balancer: Distributes inbound traffic across VM instances.
Windows Virtual Machines: Deploys a set of Windows Server 2019 instances. Uses random usernames and passwords for added security.
VM Extensions: Executes custom scripts on VM instances for tasks like domain joining and setting up RDS (Remote Desktop Services).
Pre-requisites
Terraform installed.
An active Azure subscription.
Azure CLI (optional, for authentication).
Variables
Ensure you set the necessary Terraform variables, either through a terraform.tfvars file or through environment variables. Here are some of the key variables:
prefix: A string used as a naming prefix for all provisioned resources.
location: Azure region where the resources should be created.
vm_count: Number of VM instances to deploy.
vm_size: The size or type of the VM instances.
Usage
1.Clone the repository.
git clone [repository_url]
cd [repository_name]


2.Initialize the Terraform workspace.

terraform init

3.Plan the deployment and review the resources to be provisioned.
terraform plan

4.Apply the Terraform configurations.

terraform apply
5.To destroy the infrastructure:
terraform destroy


Scripts
domain-join.ps1: Script to join the Windows VM to a domain.
rd_server_setup_script.ps1: Script to set up the Remote Desktop Services.
session_host_setup_script.ps1: Script for setting up session hosts.
