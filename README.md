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
