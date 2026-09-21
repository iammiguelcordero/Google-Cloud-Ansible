# Terraform + Ansible on Google Cloud Platform

---

# Architecture

![Architecture Diagram](docs/images/Terraform-Ansible.drawio.png)

---

# Environment

Since this project is for learning purposes, I used a Google Cloud Skills Boost lab environment (https://www.skills.google/).

This allows practicing cloud infrastructure without personal cost. The lab used is a temporary environment with limited duration and resources.

I used this lab for this example: Create a Virtual Machine

# Variables

To customize the infrastructure, you can modify the `terraform.tfvars` file.

Since this is a learning project, no sensitive information is included in the configuration files.

You will need change the variables ZONE, REGION and PROJECT

---

# Deploy our infrastucture with Terraform

Clone this repo in your Google Cloud Shell

```bash
git clone https://github.com/iammiguelcordero/Google-Cloud-Ansible.git
```

To deploy our infrastucture we just need execute the next commands in the folder terraform:

```bash
cd terraform
terraform init
terraform apply  # confirm with "yes"
```

Just wait a few minutes and our infrastucture will be ready
