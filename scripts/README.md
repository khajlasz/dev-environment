# Scripts

Focused automation helpers, validation tools, and maintenance tasks.

## Verification

Run `./scripts/verify.sh` from the repository root to check that every command-line tool and graphical application declared in the current `Brewfile` is available. The script is POSIX-compatible and uses no dependencies beyond the shell and standard macOS application locations.

It exits with status `0` when all tools are available and `1` when one or more tools are missing. To install missing tools, run `brew bundle --file=Brewfile`.
