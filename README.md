# dev-environment

This repository contains my reproducible macOS development environment for Infrastructure Automation projects. It documents the tools, configuration and automation required to provision a new workstation and support projects based on Python, Ansible, Terraform, Docker and Kubernetes.

## Status

This repository is in its foundation phase. It currently defines the project structure, operating model, and planned delivery milestones. Installation and configuration automation are deliberately not implemented yet.

## Scope

The intended workstation profile supports reliable infrastructure and network automation workflows, including:

- macOS host preparation and package management
- Shell, terminal, editor, and developer tooling conventions
- Python tooling for infrastructure automation
- Tooling for Infrastructure Automation and Network Automation projects
- Repeatable validation and maintenance practices

The project will favor declarative configuration, idempotent operations, explicit versioning, and documentation that makes changes auditable.

## Repository layout

```text
.
├── bootstrap/       # Future host bootstrap entry points (no implementation yet)
├── config/          # Declarative workstation configuration
├── docs/            # Architecture, roadmap, and engineering records
├── scripts/         # Future supporting automation (no implementation yet)
├── AGENTS.md        # Contributor and automation-agent guidance
├── Brewfile         # Homebrew bundle manifest placeholder <-- explain why I need it
├── LICENSE          # MIT License
└── README.md
```

## Documentation

- [Architecture](docs/architecture.md) — design principles and intended system boundaries.
- [Roadmap](docs/roadmap.md) — planned delivery sequence.
- [Project log](docs/project-log.md) — durable record of meaningful project decisions and changes.

## Working agreement

Do not add workstation-changing behavior without documenting its purpose, prerequisites, idempotency expectations, rollback considerations, and validation method. See [AGENTS.md](AGENTS.md) for repository-specific guidance.

## License

Released under the [MIT License](LICENSE).
