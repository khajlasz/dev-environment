# Local LLM

## Purpose

The workstation supports local AI-assisted development using Ollama.

Local models complement cloud-based AI tools by providing a local,
cost-controlled environment for development tasks and experimentation.

The hybrid AI workflow is described in
[ADR-007](arch/ADR-007-hybrid-ai-assisted-dev.md).

## Stack

- Ollama — local model runtime
- OpenCode — AI-assisted development interface
- local coding model — selectable and replaceable

The exact model is intentionally not part of the workstation architecture and
may change independently.

## Installation

Ollama is installed as part of the workstation package baseline defined in the
`Brewfile`.

Local model installation is handled separately:

```sh
./scripts/bootstrap-local-llm.sh
```
The script uses `qwen3-coder` by default.

A different model can be selected using:
```sh
OLLAMA_MODEL=<model> ./scripts/bootstrap-local-llm.sh
```
Keeping model installation separate prevents large and frequently changing
runtime artifacts from becoming part of the core workstation bootstrap.

## Verification

Verify that Ollama is available:
```sh
ollama --version
```
List locally installed models:
```sh
ollama list
```
The core workstation verification can be run with:
```sh
./scripts/verify.sh
```
## Scope

Local models are development tools.

They are not dependencies of infrastructure projects and project architecture
must not depend on a specific model being installed.