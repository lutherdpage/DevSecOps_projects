# DevSecOps_projects

This repository contains a hands-on DevSecOps pipeline implementation. It integrates security scanning tools into a CI/CD workflow using GitHub Actions, Docker, and Terraform to automate vulnerability detection across application code, dependencies, and infrastructure.

🔍 Project Overview

Goal:

Shift security left by embedding automated scans into the development lifecycle.

Deploy a WordPress site on AWS EC2 using Terraform.

Scan for vulnerabilities using SAST, SCA, and IaC tools.

Tools Used:

GitHub Actions for CI/CD automation

Terraform for infrastructure provisioning

Trivy for SCA and IaC scanning

CodeQL for SAST scanning

Docker Hub for container image hosting

🛠 Workflow Breakdown

1. AWS Automation Project 1

Deploys WordPress on EC2 using Terraform.

Configures AWS credentials securely via GitHub Secrets.

2. IaC Security Scan Project 1

Scans Terraform files for misconfigurations using Trivy in filesystem mode.

3. SAST Scan Project 2

Uses CodeQL to analyze Python source code for vulnerabilities.

4. SCA Scan Project 3

Pulls Docker image and scans for vulnerable dependencies using Trivy.

📂 Repository Structure

DevSecOps_projects/
├── .github/workflows/
│   ├── AWS Automation Project1.yml
│   ├── IaC Security Scan Project 1.yml
│   ├── SAST Scan Project 2.yml
│   └── SCA Scan Project 3.yml
├── main.tf
├── Solaris.py
├── .gitignore
└── README.md

🚀 How to Run Locally

Clone the repo: git clone https://github.com/lutherdpage/DevSecOps_projects.git

Set up AWS credentials in GitHub Secrets.

Push to main branch to trigger workflows.

📋 Notes

This project was built by following a guided DevSecOps tutorial.

All workflows were tested and pushed from VS Code.

Vulnerable code in Solaris.py is intentionally included for SAST demonstration.

🧰 troubleshoot.md

Common Issues & Fixes

❌ GitHub Actions stuck on "Waiting for runner"

Fix: Ensure runs-on: ubuntu-latest is correctly defined.

Check GitHub Actions status page for runner availability.

🔐 AWS credentials not loading

Fix: Secrets must be added under Settings → Secrets → Actions.

Double-check for trailing newlines in secret values.

🐳 Docker login fails

Fix: Ensure DOCKER_USERNAME and DOCKER_PASSWORD are set in GitHub Secrets.

Use docker/login-action@v2 in workflow.

🧪 Trivy not installing

Fix: Use correct wget or curl commands to add Aqua Security repo.

Ensure apt-get update runs before apt-get install.

🧬 CodeQL scan fails

Fix: Ensure actions/setup-python@v3 is included before initializing CodeQL.

Use github/codeql-action/init@v3 and analyze@v3.

📁 Terraform state files committed

Fix: Add .terraform/, terraform.tfstate, and .terraform.lock.hcl to .gitignore.

Debug Tips

Use echo statements in workflows to verify environment variables.

Expand failed steps in GitHub Actions UI to view logs.

Re-run workflows manually after fixing secrets or code.

Contact

For questions or improvements, feel free to open an issue or fork the repo.

Built by Luther Page
