# Terraform AWS EC2 Demo

This repository contains a simple Terraform configuration to create an EC2 instance in AWS. It's designed for educational purposes to demonstrate Infrastructure as Code (IaC) with Terraform and CI/CD using GitHub Actions.

## Architecture Overview

The configuration creates:
- A security group allowing SSH access
- An EC2 instance running Amazon Linux 2 in the default VPC

## Prerequisites

1. An AWS account
2. AWS Access Key and Secret Key with appropriate permissions
3. A key pair in AWS (for SSH access to EC2)
4. GitHub account

## GitHub Actions Setup

The workflow will automatically run on:
- Push to main branch
- Pull request to main branch

### Required Secrets and Variables

In your GitHub repository, set up these secrets:
- `AWS_ACCESS_KEY_ID`: Your AWS access key
- `AWS_SECRET_ACCESS_KEY`: Your AWS secret key

And these variables:
- `AWS_REGION`: Your preferred AWS region (e.g., us-west-2)
- `KEY_NAME`: The name of your AWS key pair

To set these up:
1. Go to your repository settings
2. Navigate to Secrets and variables → Actions
3. Add the secrets and variables

## Local Development

1. Install Terraform:
   ```bash
   brew install terraform   # For macOS
   ```

2. Clone the repository:
   ```bash
   git clone <repository-url>
   cd terraform-cicd
   ```

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Create a plan:
   ```bash
   terraform plan
   ```

5. Apply the changes:
   ```bash
   terraform apply
   ```

6. To destroy the infrastructure:
   ```bash
   terraform destroy
   ```

## Important Notes

- The EC2 instance is created with a t2.micro instance type (free tier eligible)
- The security group allows SSH access from anywhere (0.0.0.0/0) - modify for production use
- Remember to destroy resources when not needed to avoid unnecessary charges

## Demo Flow

1. **Repository Setup** (5-10 minutes)
   - Create new repository
   - Add Terraform files
   - Configure GitHub secrets and variables

2. **Code Review** (15-20 minutes)
   - Review Terraform files structure
   - Explain each resource and its purpose
   - Discuss variables and outputs

3. **GitHub Actions** (15-20 minutes)
   - Review workflow file
   - Explain each step in the pipeline
   - Discuss CI/CD concepts

4. **Demonstration** (30-40 minutes)
   - Make a change to the infrastructure
   - Create a pull request
   - Show the GitHub Actions workflow running
   - Show the created resources in AWS Console

5. **Best Practices Discussion** (15-20 minutes)
   - State management
   - Security considerations
   - Cost management
   - Environment management

6. **Q&A Session** (10-15 minutes)
