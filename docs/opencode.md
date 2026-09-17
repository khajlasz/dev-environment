# OpenCode

## Purpose

OpenCode provides an AI-assisted development interface that can work with both
local and remote model providers.

Within this workstation it is primarily used with Ollama for local
AI-assisted development.

OpenCode is one component of the hybrid AI development workflow rather than
the primary interface for all AI-assisted engineering tasks.

## Architecture

```text
Developer
    │
    ▼
OpenCode
    │
    ├── Ollama
    │     └── local models
    │
    └── remote providers
          (optional)
```
This allows the development workflow to remain independent of a specific model
or provider.

## Local provider

The local provider is Ollama.

The default local coding model is currently:
```text
qwen3-coder
```
The exact model is not considered part of the architecture and may change over
time.

## Configuration

Global OpenCode configuration is stored under:
```text
~/.config/opencode/
```
Repository-managed configuration templates belong under:
```text
config/opencode/
```
Machine-specific configuration and credentials must not be committed to the
repository.

## Verification

Verify that OpenCode is installed:
```sh
opencode --version
```
Available models can be inspected with:
```sh
opencode models
```
Ollama models can be inspected with:
```sh
ollama list
```
Core workstation tooling can be verified with:
```sh
./scripts/verify.sh
```
## Workflow

OpenCode is primarily used when local AI-assisted development is appropriate.

Architecture, implementation and review may involve different tools depending
on the task.

See:

- [AI-assisted development workflow](ai-workflow.md)
- [Local LLM](local-llm.md)
- [ADR-007](./arch/ADR-007-hybrid-ai-assisted-dev.md)

## Future work

Potential extensions include:

- additional local models
- additional model providers
- integrations justified by development workflow requirements