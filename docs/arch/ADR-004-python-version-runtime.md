# ADR-004: Python Version Management

## Status

Accepted

## Context

The development environment requires Python for automation, scripting and Infrastructure as Code tools.

Homebrew installs Python as a dependency of some packages (e.g. `pipx`), while project-specific Python environments should remain reproducible and independent.

## Decision

- `uv` is the standard tool for Python workflow.
- `uv` manages virtual environments and project dependencies.
- Homebrew Python is accepted as a runtime dependency.
- Projects should not rely directly on the system Python.

## Consequences

- Consistent developer experience.
- Easy support for multiple Python versions.
- Reproducible environments.
- No dependency on Apple's system Python.
