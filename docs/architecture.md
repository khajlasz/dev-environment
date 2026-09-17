# Architecture

## Objective

Provide a maintainable and reproducible path from a clean macOS host to
a consistent Infrastructure Automation and Platform Engineering
development workstation.

## Design principles

1.  **Declarative first.** Version-control the desired workstation state
    and minimize undocumented manual setup.
2.  **Idempotent by design.** Re-running automation should converge
    safely rather than duplicate or corrupt state.
3.  **Layered responsibility.** Separate host bootstrap, package
    definition, tool configuration, and validation.
4.  **Least surprise.** Changes should be explicit, observable, and
    narrowly scoped.
5.  **Secure defaults.** Never commit secrets; keep sensitive material
    outside the repository and reference it through documented
    mechanisms.
6.  **Minimal host dependencies.** Infrastructure workloads run in
    isolated lab environments rather than directly on macOS.

## Architecture

The workstation is organized into a small number of layers:

``` text
Clean macOS host
       │
       ▼
bootstrap/bootstrap.sh
       │
       ▼
    Brewfile
       │
       ▼
Installed workstation tooling
       │
       ├── Infrastructure automation
       ├── Kubernetes tooling
       ├── Python tooling
       ├── AI-assisted development
       └── UTM virtualization
       │
       ▼
scripts/verify.sh
       │
       ▼
Verified workstation
```

Each layer has a distinct responsibility.

### Package baseline

`Brewfile` defines the Homebrew-managed command-line tools and macOS
applications required by the workstation.

It is the declarative package baseline and should remain independent
from individual infrastructure projects.

### Host bootstrap

`bootstrap/bootstrap.sh` is the main entry point for provisioning the
workstation.

It performs the host preparation required to install the package
baseline and should remain safe to execute repeatedly.

### Configuration

`config/` contains version-controlled configuration associated with
workstation tools.

Configuration belonging to individual infrastructure projects is outside
the scope of this repository.

### Supporting automation

`scripts/` contains focused utilities that support workstation setup and
validation.

`verify.sh` verifies that the expected workstation tools are available.

Local LLM model installation is intentionally separated from the core
workstation bootstrap and handled by `bootstrap-local-llm.sh`.

### Virtualization boundary

UTM provides the virtualization layer used for local infrastructure
labs.

The macOS workstation owns the virtualization tooling, but does not own
the lifecycle or configuration of the guest infrastructure.

``` text
dev-environment

macOS
  │
  └── UTM
       │
       └── guest environments
            │
            └── infrastructure labs
                 (outside repository scope)
```

This boundary keeps workstation provisioning independent from
infrastructure lab provisioning.

### Documentation and decisions

`docs/` contains architecture documentation, setup procedures and
project records.

Significant architectural decisions are recorded separately as ADRs
under `docs/arch/`.

## Operational model

The expected workstation lifecycle is:

``` text
bootstrap → install → configure → verify
```

The bootstrap establishes the desired workstation state. Verification
checks that the required tooling is available.

Large or optional runtime artifacts, such as local LLM models, are
handled separately so that the core workstation bootstrap remains
predictable.

## Scope boundaries

This repository manages the development workstation itself.

It does not manage:

-   infrastructure lab topology
-   guest VM operating-system configuration
-   application or infrastructure deployments
-   project-specific infrastructure state
-   credentials or secrets

Those concerns belong to the projects that consume the development
environment.
