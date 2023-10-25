# fortigate-azure-terraform

## Commands Cheat Sheet

### Azure Logout

```bash
az login -o none
```

### Azure Default Subscription

```bash
az account list --query [].name -o tsv
az account set -s <yourSubName>
```

### Install mega-linter

```bash
npx mega-linter-runner --install
```

### Create GitHub secret for FortiDevSec

```bash
gh secret create
```

### Reference Links

[Dependabot](https://docs.github.com/en/code-security/dependabot/dependabot-security-updates/configuring-dependabot-security-updates)


[![MegaLinter](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/mega-linter.yml/badge.svg)](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/mega-linter.yml)

[![FortiDevSec SAST scanner](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/sast.yml/badge.svg)](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/sast.yml)
