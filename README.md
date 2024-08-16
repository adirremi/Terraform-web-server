
# Project Documentation: Terraform and CI/CD

## Table of Contents

1. [Introduction](#introduction)
2. [Project Structure](#project-structure)
3. [Setup and Installation](#setup-and-installation)
4. [CI/CD Configuration](#cicd-configuration)
5. [Testing](#testing)
6. [FAQ](#faq)
7. [Contributors](#contributors)

## Introduction

This project uses Terraform to provision an Apache server on Google Cloud Platform (GCP) and includes a CI/CD setup using GitHub Actions. The goal is to provision and configure the server, install Apache, and ensure the system operates correctly through integration, end-to-end, performance, and security testing.

## Project Structure

The project consists of the following components:

- **Terraform**: Configuration files for provisioning and managing GCP resources.
  - `main.tf`: General project configuration.
  - `outputs.tf`: Outputs from the project.
  - `variables.tf`: Defined variables.
  - `terraform.tfvars`: Final values for variables.

- **Scripts**:
  - `install.sh`: Script for installing and configuring Apache on the server.

- **Tests**:
  - `tests/test_server.py`: Integration tests for the server.
  - `tests/test_e2e.py`: End-to-end tests.
  - `tests/test_performance.py`: Performance tests.

- **CI/CD**:
  - `.github/workflows/ci-cd.yml`: CI/CD configuration file with GitHub Actions.

## Setup and Installation

### Prerequisites

- Google Cloud Platform (GCP) account.
- Python 3.x installed on your machine.
- GitHub account.
- Terraform tool installed on your machine.

### Step 1: Configure GCP Access

1. Create a service account key in GCP and save it as a JSON file.
2. Upload the JSON file as a "Secret" in GitHub named `GCP_CREDENTIALS`.

### Step 2: Configure Terraform

1. **Edit `terraform.tfvars`** to match your configuration:
   ```hcl
   region = "us-central1"
   machine_type = "e2-micro"
   ```

2. **Run Terraform:**
   ```bash
   terraform init
   terraform plan
   terraform apply -auto-approve
   ```

### Step 3: Run the Installation Script

Execute the `install.sh` script on your server after it is provisioned:
```bash
bash install.sh
```

## CI/CD Configuration

The project uses GitHub Actions for CI/CD. The workflow includes the following steps:

1. **Unit Tests**: Tests individual functions or components.
2. **Integration Tests**: Tests the interaction between system components.
3. **End-to-End Tests**: Tests the entire system's behavior.
4. **Performance Tests**: Tests server response under load.
5. **Security Tests**: Scans for security vulnerabilities in code and dependencies.

The `.github/workflows/ci-cd.yml` file contains the required steps for running tests and provisioning the server.

## Testing

### Integration Tests

- **File**: `tests/test_server.py`
- **Purpose**: Ensure the server is running and returns the correct content.

### End-to-End Tests

- **File**: `tests/test_e2e.py`
- **Purpose**: Verify the result after running the installation script.

### Performance Tests

- **File**: `tests/test_performance.py`
- **Purpose**: Test server performance under load.

### Security Tests

- **File**: `tests/test_security.py`
- **Purpose**: Perform security scans using Bandit and Safety.

## FAQ

**Q: How do I add additional tests?**

You can add new test files to the `tests` directory and include the corresponding steps in your CI/CD configuration file.

**Q: How do I handle common issues?**

If you encounter issues, review the logs in GitHub Actions to diagnose the problem. Ensure that all dependencies and resources are correctly configured.

## Contributors

- **Name**: Adir Remi
- **Description**: Developer and project maintainer.

---

Feel free to adjust or expand upon this documentation as needed. If you have any additional questions or need further modifications, let me know!
