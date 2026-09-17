# dev-environment

A reproducible macOS development environment for Infrastructure Automation and Platform Engineering.

The repository defines the tools, bootstrap process and validation required to rebuild my development workstation in a predictable way.

## What it provides

The environment includes tooling for:

- Infrastructure as Code with Terraform and Ansible
- Kubernetes administration and troubleshooting
- Python-based infrastructure automation
- AWS tooling
- Git and GitHub workflows
- AI-assisted development with ChatGPT, Codex, OpenCode and Ollama
- Local virtualization with UTM

The workstation itself does not host infrastructure workloads. UTM provides virtualization for local infrastructure labs, while provisioning and configuration of guest systems are outside the scope of this repository.

## Design principles

The repository follows a few simple principles:

- **Reproducible** — a new workstation should be rebuildable from the repository
- **Declarative** — software dependencies are defined in the `Brewfile`
- **Verifiable** — `verify.sh` checks that the expected workstation tools are available
- **Auditable** — architectural decisions and meaningful changes are documented
- **Minimal host dependencies** — infrastructure workloads run in isolated lab environments rather than directly on macOS

## Repository layout

```text
.
├── bootstrap/
│   └── bootstrap.sh          # Workstation bootstrap entry point
├── config/                   # Workstation configuration
├── docs/
│   ├── arch/                 # Architecture Decision Records
│   ├── architecture.md       # Architecture and design
│   ├── first-time-setup.md   # Initial workstation setup
│   ├── ai-workflow.md        # AI-assisted development workflow
│   ├── local-llm.md          # Local LLM setup
│   ├── opencode.md           # OpenCode configuration
│   ├── project-log.md        # Project evolution
│   └── roadmap.md            # Planned development
├── scripts/
│   ├── bootstrap-local-llm.sh
│   └── verify.sh             # Workstation verification
├── .vscode/
├── AGENTS.md
├── Brewfile                  # Homebrew package manifest
├── LICENSE
└── README.md
```
## Bootstrap

### Prerequisites

The initial machine requires:

- macOS
- Xcode Command Line Tools
- Homebrew
- Git

See [First-Time Setup](docs/first-time-setup.md) for the complete procedure.

### Install the environment

Clone the repository:
```bash
git clone https://github.com/khajlasz/dev-environment.git
cd dev-environment
```
Run the bootstrap:
```bash
./bootstrap/bootstrap.sh
```
The bootstrap installs the workstation dependencies declared in the `Brewfile`.

### Verify the environment
Run:
```bash
./scripts/verify.sh
```
The verification script checks that the expected command-line tools and macOS applications are available.

## AI-assisted development

The environment supports a hybrid AI development workflow:

- ChatGPT — architecture, design discussions, code review and learning
- Codex — complex implementation, refactoring and repository-level tasks
- OpenCode + Ollama — local AI-assisted development

Local models and AI tooling are kept separate from the core infrastructure automation projects so that the workstation configuration remains reusable.

See:

[AI workflow](docs/ai-workflow.md)
[Local LLM](docs/local-llm.md)
[OpenCode](docs/opencode.md)
[ADR-005: Local LLM](docs/arch/ADR-005-local-llm.md)

## Architecture decisions

Significant design decisions are recorded as ADRs in [docs/arch](docs/arch/).

Current decisions cover:

- supported workstation platform
- development toolchain
- security principles
- Python runtime management
- local LLM usage

## License
Released under the [MIT License](./LICENSE.md).
