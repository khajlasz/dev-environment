# ADR-007: Adopt Hybrid AI-Assisted Development Workflow

## Status

Accepted

## Context

ADR-005 introduced a local LLM through Ollama as an experiment intended to
reduce dependence on external AI services and evaluate local AI-assisted
development.

The evaluation showed that local and cloud-based AI tools have different
strengths and are more useful as complementary tools than as replacements for
one another.

Local models provide a cost-controlled environment suitable for routine
development tasks and experimentation. Cloud-based models provide stronger
reasoning capabilities for architecture, design, review and more complex
engineering tasks.

The workstation should therefore support both approaches without coupling the
development workflow to a single model or provider.

## Decision

Adopt a hybrid AI-assisted development workflow.

The workstation supports:

- ChatGPT for architecture discussions, design, technical reasoning, review
  and learning.
- Codex for complex implementation, refactoring and repository-level tasks.
- OpenCode as the local AI-assisted development interface.
- Ollama as the local model runtime.

Local and cloud-based AI tooling are treated as complementary capabilities.

AI tools assist the engineering process but do not define the architecture or
become runtime dependencies of the infrastructure projects developed on the
workstation.

Local model installation is kept separate from the core workstation bootstrap
because models are large, optional runtime artifacts and may change
independently from the workstation toolchain.

## Consequences

- The development workflow is not dependent on a single AI provider.
- Routine tasks can be performed locally when appropriate.
- More capable cloud models remain available for tasks requiring stronger
  reasoning or broader context.
- Local AI experimentation does not affect the reproducibility of the core
  workstation.
- Individual infrastructure projects remain independent from the AI tools used
  during their development.
- AI tooling can evolve without changing the architecture of those projects.

## Supersedes

This decision concludes the experiment introduced in
[ADR-005](ADR-005-local-llm.md).