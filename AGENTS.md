# AGENTS.md

## Project intent

`dev-environment` is an Infrastructure-as-Code repository for provisioning and maintaining a macOS workstation used for Infrastructure Automation and NetDevOps. Treat workstation state as production-adjacent: changes must be reviewable, predictable, and safe to re-run.

## Repository conventions

- Configuration belongs in `config/`.
- Shell scripts belong in `bootstrap/` or `scripts/`.
- Prefer declarative configuration over imperative scripts.
- Do not introduce installation or provisioning behavior until it is explicitly in scope.
- Prefer idempotent operations and clear preflight checks.
- Keep secrets, tokens, private keys, machine-specific paths, and generated credentials out of version control.
- Document material architectural or workflow decisions in `docs/project-log.md`.
- Update `docs/architecture.md` and `docs/roadmap.md` when a change alters design or delivery scope.

## Expected quality bar

Future automation should be non-interactive where possible, fail with actionable diagnostics, and include a documented validation path. Any command that changes the host must state its prerequisites and rollback or recovery approach.

## Directory ownership

| Path | Responsibility |
| --- | --- |
| `bootstrap/` | Top-level environment bootstrap orchestration. |
| `config/` | Version-controlled desired-state configuration. |
| `scripts/` | Focused reusable helpers and validation tooling. |
| `docs/` | Architecture, roadmap, decisions, and operational documentation. |

## Change discipline

Avoid unrelated formatting changes. Preserve existing user modifications. Before considering a change complete, verify links, filenames, and any relevant static checks available in the repository.

## Agent behaviour

- Explain architectural decisions before making structural changes.
- Prefer small, reviewable commits over large rewrites.
- Do not replace existing implementations without justification.
- When multiple approaches exist, present the trade-offs before choosing one.
- Ask for clarification instead of guessing project intent.
- Prefer extending existing structure over introducing new top-level directories.

## Working style

- Explain non-obvious decisions.
- Make the smallest change that solves the problem.
- Prefer clarity over cleverness.
- Keep documentation in sync with implementation.
- Treat documentation as part of the codebase.