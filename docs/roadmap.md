# Roadmap

## Guiding constraint

Milestones prioritize repeatability and safety over speed of initial setup. Workstation-changing automation begins only after its desired state and validation criteria are documented.

## Milestones

| Milestone | Outcome | Status |
| --- | --- | --- |
| M0 — Foundation | Repository structure, documentation, contribution guidance, and placeholders. | Complete |
| M1 — Baseline definition | Supported macOS versions, package inventory, tooling standards, and security assumptions agreed. | Planned |
| M2 — Bootstrap design | Idempotent bootstrap approach, preflight checks, and recovery strategy specified. | Planned |
| M3 — Configuration implementation | Version-controlled configuration and package baseline implemented. | Planned |
| M4 — Validation | Automated verification, documentation review, and repeatability testing established. | Planned |
| M5 — Maintenance | Upgrade policy, change management, and periodic health checks documented. | Planned |

## Near-term deliverables

- Approve the target macOS support policy.
- Define the initial Infrastructure Automation and NetDevOps toolchain.
- Decide how machine-local or sensitive values are supplied.
- Establish the validation contract before adding host-changing automation.

## Definition of done for implementation milestones

An implementation milestone is complete when its desired state is documented, its automation is safe to re-run, validation is reproducible, and known recovery steps are recorded.
