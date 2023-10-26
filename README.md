# Azure Terraform Fortigate

## Commands Cheat Sheet

### Azure Logout

```bash
az login -o none
```

### Set Azure Default Subscription

```bash
az account list --query [].name -o tsv
az account set -s <yourSubName>
```

### GitHub cli login

```bash
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
gh auth login
```

### Clone repo

```bash
git clone https://github.com/owner/repositoryname
```

### CD into repository folder

```bash
cd repositoryname
```

### Create configuration, and edit your variables.

```bash
cp terraform.auto.tfvars.example terraform.auto.tfvars
```

### Terraform

```bash
terraform plan
terraform apply -auto-aprove
terraform destroy -auto-approve
```

### Create GitHub secret for FortiDevSec

```bash
cd repositoryname
gh secret set FORTIDASTORGID --body "<fortidevsecorgidhere>"
gh secret set FORTIDASTAPPID --body "<fortidevsecappidhere>"
```

[![MegaLinter](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/mega-linter.yml/badge.svg)](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/mega-linter.yml)

[![FortiDevSec SAST scanner](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/sast.yml/badge.svg)](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/sast.yml)

### Reference Links

[Dependabot](https://docs.github.com/en/code-security/dependabot/dependabot-security-updates/configuring-dependabot-security-updates)
