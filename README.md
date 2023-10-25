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
gh auth login
```

### Clone repo

```bash
git clone https://github.com/owner/repositoryname
```

### Create GitHub secret for FortiDevSec

```bash
cd repositoryname
gh secret set FORTIDASTORGID --body "<fortidevsecorgidhere>"
gh secret set FORTIDASTAPPID --body "<fortidevsecappidhere>"
```

### Install mega-linter

```bash
npx mega-linter-runner --install
```

[![MegaLinter](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/mega-linter.yml/badge.svg)](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/mega-linter.yml)

[![FortiDevSec SAST scanner](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/sast.yml/badge.svg)](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/sast.yml)

### Reference Links

[Dependabot](https://docs.github.com/en/code-security/dependabot/dependabot-security-updates/configuring-dependabot-security-updates)
