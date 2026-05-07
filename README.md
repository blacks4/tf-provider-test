# TF Provider Download Test

This repository exists for one purpose: verify whether `terraform init` can download Terraform providers from the network, or whether provider downloads are blocked.

## Prerequisites

- `git`
- `terraform`

Install Terraform using HashiCorp's official instructions:

- General install guide: https://developer.hashicorp.com/terraform/intro/getting-started/install.html
- Current CLI install page: https://developer.hashicorp.com/terraform/cli/install

Common examples:

- macOS with Homebrew:

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

- Windows with Chocolatey:

```powershell
choco install terraform
```

- Windows manual install:
  Download the Terraform CLI for Windows from HashiCorp's install page, unzip it, and ensure `terraform.exe` is on your `PATH`.

- Verify Terraform is installed:

```bash
terraform version
```

## Steps

1. Clone the repository:

```bash
git clone <repo-url>
cd tf-provider-test
```

On Windows Command Prompt:

```cmd
git clone <repo-url>
cd tf-provider-test
```

On Windows PowerShell:

```powershell
git clone <repo-url>
Set-Location tf-provider-test
```

2. Initialize Terraform:

```bash
terraform init
```

On Windows Command Prompt or PowerShell:

```powershell
terraform init
```

## What This Tests

Running `terraform init` in this repo should attempt to download the providers declared in [`terraform.tf`](/Users/stevetractenberg/fpl/tf-provider-test/terraform.tf), including:

- `hashicorp/azurerm`
- `Azure/azapi`
- `hashicorp/vault`
- `hashicorp/hcp`
- `ansible/aap`
- `ansible/ansible`

This does not create infrastructure. The goal is only to confirm whether Terraform can reach provider registries and download provider plugins.

## Interpreting Results

- Success: `terraform init` completes, reports that providers were installed, and includes the message `Terraform has been successfully initialized!`
- Failure: errors about being unable to reach the registry, download packages, resolve hosts, or connect over HTTPS usually indicate provider downloads are blocked.

HashiCorp reference for `terraform init` behavior:

- https://developer.hashicorp.com/terraform/cli/commands/init
