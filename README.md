# Terraform Infrastructure Automation with GitHub Actions

## Overview
This repository demonstrates automated infrastructure provisioning using Terraform and GitHub Actions. The setup focuses on deploying a Google Cloud Storage bucket named "tla-bucket" in the "US" region under the project "tla-gcp-init". This README provides an in-depth explanation of the project structure, workflow, and usage.

## Project Structure
The project consists of the following components:
Terraform Configuration: The main.tf file defines the infrastructure resources to be provisioned. In this case, it specifies the creation of a Google Cloud Storage bucket with enforced public access prevention.
GitHub Actions Workflow: The .github/workflows/terraform.yml file defines the GitHub Actions workflow responsible for automating the Terraform operations. It triggers on pushes to the main branch and executes Terraform commands to initialize, format, plan, and apply infrastructure changes.

## Workflow Explanation
GitHub Actions Workflow (terraform.yml)
The workflow is designed to automate the infrastructure deployment process:

Trigger: The workflow triggers on any push to the main branch.

Environment: It runs on an Ubuntu environment configured for production use.

Steps:

Checkout: Checks out the repository code to the GitHub Actions runner.
Setup Terraform: Configures the Terraform CLI with a Terraform Cloud user API token stored securely in GitHub Secrets.
Terraform Init: Initializes the Terraform working directory.
Terraform Format Check: Ensures all Terraform configuration files adhere to a canonical format.
Terraform Plan: Generates an execution plan to preview the infrastructure changes.
Terraform Apply: Applies the changes to create or modify the infrastructure defined in main.tf.

## Usage
To use this repository and automate infrastructure provisioning:

Fork or Clone: Fork or clone the repository to your local machine.

Configure Secrets:

Set up a Terraform Cloud user API token and a Google Cloud service account key.
Store these credentials securely as GitHub Secrets (TF_API_TOKEN and GCP_SA_KEY).
Customize Terraform Configuration: Modify main.tf to define your desired infrastructure resources and configurations.

Customize GitHub Actions Workflow: Adjust terraform.yml to suit your specific requirements, such as adding more Terraform modules or adjusting triggers.

Push Changes: Push changes to the main branch to trigger the GitHub Actions workflow automatically.

## Contributing
Contributions are welcome! If you have suggestions for improvements, new features, or bug fixes:

Fork the repository.
Create your feature branch (git checkout -b feature/YourFeature).
Commit your changes (git commit -am 'Add some feature').
Push to the branch (git push origin feature/YourFeature).
Open a pull request.
