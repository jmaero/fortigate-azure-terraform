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

[![MegaLinter](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/mega-linter.yml/badge.svg)](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/mega-linter.yml)

[![FortiDevSec SAST scanner](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/sast.yml/badge.svg)](https://github.com/robinmordasiewicz/fortigate-azure-terraform/actions/workflows/sast.yml)
