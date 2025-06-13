# Terraform GCP Infrastructure Setup

This repository contains a Terraform configuration to provision basic infrastructure on Google Cloud Platform (GCP), including:

- ✅ A **Google Cloud Storage (GCS) bucket**
- ✅ A **BigQuery dataset**
- 📦 Resource configurations managed via **Terraform**
- 🔒 Secure service account authentication using `.json` key

---

## 🚀 Features

- Modular and parameterized using `variables.tf`
- GCS bucket supports lifecycle rules (e.g., auto-delete after 3 days)
- BigQuery dataset is set to auto-delete contents on destroy
- Easy to replicate in multiple environments (dev/prod) using `.tfvars` files

---

## 📁 Project Structure

terraform-demo/
├── keys/ # Stores service account JSON key (excluded via .gitignore)
├── main.tf # Main Terraform configuration
├── variables.tf # Variable declarations
├── terraform.tfstate # Terraform state (excluded via .gitignore)
├── .gitignore # Ensures sensitive files are not tracked
└── README.md # Project documentation
