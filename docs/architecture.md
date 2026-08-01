# Architecture

## Objective

Define a maintainable, reviewable path from a clean macOS host to a consistent Infrastructure Automation and NetDevOps development workstation.

## Design principles

1. **Declarative first.** Version-control the desired workstation state and minimize undocumented manual setup.
2. **Idempotent by design.** Re-running automation should converge safely rather than duplicate or corrupt state.
3. **Layered responsibility.** Separate host bootstrap, package definition, tool configuration, and validation.
4. **Least surprise.** Changes should be explicit, observable, and narrowly scoped.
5. **Secure defaults.** Never commit secrets; keep sensitive material outside the repository and reference it through documented mechanisms.

## Intended layers

| Layer | Location | Purpose | Current state |
| --- | --- | --- | --- |
| Package baseline | `Brewfile` | Define Homebrew-managed dependencies. | Placeholder |
| Host bootstrap | `bootstrap/` | Orchestrate first-run preparation. | Reserved |
| Desired configuration | `config/` | Store version-controlled configuration inputs. | Reserved |
| Supporting automation | `scripts/` | Provide reusable helpers and validation. | Reserved |
| Project documentation | `docs/` | Capture decisions, plans, and operational context. | Active |
| AI Development Tooling | `config/opencode/` | OpenCode configuration template | Active |

## Operational model

The future workflow is expected to follow this sequence:

```text
Clean macOS host → preflight checks → package baseline → configuration → validation → documented steady state
```

Each transition should have an owner, a clear success condition, and a recovery path. The specific implementation tools are intentionally undecided until the baseline profile is agreed.

## Non-goals for the foundation phase

- Installing packages or applications
- Modifying shell, system, or security settings
- Managing credentials or device inventory
- Selecting automation frameworks prematurely

## Open decisions

- Supported macOS versions and hardware profiles
- Package and cask baseline
- Configuration management mechanism
- Secret-management integration
- CI validation strategy
