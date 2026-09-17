# Roadmap

## Guiding constraint

Milestones prioritize repeatability, safety and maintainability over adding
workstation tooling without a clear requirement.

The core workstation environment is operational. Future work should focus on
validation, maintenance and improvements driven by actual development needs.

## Milestones

### M0 — Repository foundation

**Status:** Complete

Established the repository structure, documentation conventions and
architectural decision process.

### M1 — Workstation baseline

**Status:** Complete

Defined the supported platform, package baseline, security assumptions and
core development toolchain.

### M2 — Bootstrap

**Status:** Complete

Implemented workstation bootstrap based on Homebrew and the declarative
`Brewfile`.

### M3 — Configuration

**Status:** Complete

Established version-controlled configuration for workstation tooling.

Additional configuration should be added only when required by tools that are
part of the workstation baseline.

### M4 — Validation

**Status:** Complete

Implemented `scripts/verify.sh` to validate availability of the expected
workstation tooling.

### M5 — Maintenance

**Status:** Ongoing

Maintain the workstation definition as development requirements evolve.

Changes to the toolchain should remain explicit, reviewable and reflected in
the relevant documentation and ADRs.

## Future work

Potential future improvements include:

- automated validation in CI where practical
- periodic review of the workstation package baseline
- validation of bootstrap behavior on a clean Apple Silicon macOS installation
- additional workstation configuration when justified by real development needs

Infrastructure lab provisioning and configuration remain outside the scope of
this repository.