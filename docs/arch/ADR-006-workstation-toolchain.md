# ADR-006: Workstation Toolchain

## Status

Accepted

## Context

The workstation toolchain has evolved since ADR-002 was accepted.

Container workloads are no longer executed directly on the macOS host.
Local infrastructure labs run in virtual machines provided by UTM.

The AI-assisted development workflow has also expanded to include local
and cloud-based tooling.

## Decision

The workstation toolchain is organized into the following areas:

### Core

- Git
- GitHub CLI
- Visual Studio Code
- iTerm2

### Python

- uv
- pipx

### Infrastructure Automation

- Terraform
- Ansible

### Kubernetes

- kubectl
- Helm
- k9s
- stern

### Cloud

- AWS CLI

### Virtualization

- UTM

### AI-assisted Development

- Codex CLI
- OpenCode
- Ollama
- ChatGPT

Container runtimes are not part of the macOS workstation baseline.
Infrastructure workloads run in isolated virtualized lab environments.

## Consequences

- The macOS host remains focused on development and orchestration tooling.
- Container runtimes are isolated from the workstation.
- UTM becomes part of the reproducible workstation baseline.
- Guest VM provisioning remains outside the scope of this repository.
- The toolchain supports both local and cloud-based AI-assisted development.