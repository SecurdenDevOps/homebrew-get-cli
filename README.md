# Securden Command Line Interface - macOS

This guide will take you through the process of installing and getting data through Securden CLI using pre-defined commands. 

## Summary of Steps

1. Installation
2. Updating Securden CLI
3. Fetch credential via CLI commands

## 1. Installation

```hcl
brew install SecurdenDevOps/get-cli/securden
```

## 2. Updating Securden CLI

```hcl
brew update && brew upgrade securden
```

## 3. Fetch credential via CLI commands

### Required

- `server_url` (String) Securden Server URL. Example: https://company.securden.com:5454.
- `authtoken` (String) Securden API Authentication Token.

```hcl
securden-cli <command> --server-url <server-url> --authtoken <authtoken> <--params> 
```

---
-> If you have general questions or issues in using Securden CLI, you may raise a support request to devops-support@securden.com. Our support team will get back to you at the earliest and provide a timeline if there are issue fixes involved.