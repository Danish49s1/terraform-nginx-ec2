# terraform-nginx-ec2
Automate EC2 and NGINX setup using Terraform on AWS

# 🚀 Terraform Project – EC2 + NGINX Setup

This project provisions an **EC2 instance running NGINX** using **Terraform** on AWS.

## 🧩 Features
- Creates VPC, Subnets, Route Tables, and Internet Gateway
- Deploys EC2 instance with NGINX pre-installed
- Configures Security Groups for HTTP (80) & SSH (22)
- Automates setup using user_data

## 🧠 Tools Used
- Terraform
- AWS EC2
- Amazon Linux 2
- NGINX

## 🖥️ How to Run
```bash
terraform init
terraform apply -auto-approve
