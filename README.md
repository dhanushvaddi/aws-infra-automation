# aws-infra-automation
This project automates AWS infrastructure and deployment using Terraform, Ansible, and Jenkins. It provisions EC2 instances in the default VPC, sets up an Ansible master-slave configuration, installs Java and Jenkins, and runs a Jenkins pipeline to pull a GitHub repo.

# AWS Infrastructure Automation Project

## Objective:
Automate infrastructure provisioning and application setup using Terraform, Ansible, and Jenkins.

## Architecture:
- One EC2 instance created manually for Terraform.
- Three EC2 instances created via Terraform in default VPC/Subnets.
- One Ansible Master (auto-configured using `user_data` script).
- Two Ansible Slaves (one for Jenkins & Java, one for Java).
- Jenkins installed via Ansible.
- GitHub pipeline setup from Jenkins to pull a sample website repository.

GitHub Repo Used: [Website-PRT-ORG](https://github.com/Sameer-8080/Website-PRT-ORG)
