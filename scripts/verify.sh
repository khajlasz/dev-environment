#!/bin/sh

# Verify that the tools declared in the repository's Brewfile are available.
# This script intentionally uses only POSIX shell features and standard macOS
# application locations, so it can run even when Homebrew is unavailable.

set -u

checks=0
missing=0

check_command() {
    checks=$((checks + 1))

    if command -v "$2" >/dev/null 2>&1; then
        printf 'OK      %s (%s)\n' "$1" "$2"
    else
        printf 'MISSING %s (%s)\n' "$1" "$2"
        missing=$((missing + 1))
    fi
}

check_application() {
    checks=$((checks + 1))

    if [ -d "/Applications/$2.app" ] || [ -d "${HOME:-}/Applications/$2.app" ]; then
        printf 'OK      %s (%s.app)\n' "$1" "$2"
    else
        printf 'MISSING %s (%s.app)\n' "$1" "$2"
        missing=$((missing + 1))
    fi
}

printf '%s\n' 'Checking command-line tools...'
check_command 'Git' git
check_command 'GitHub CLI' gh
check_command 'uv' uv
check_command 'pipx' pipx
check_command 'jq' jq
check_command 'yq' yq
check_command 'tree' tree
check_command 'ripgrep' rg
check_command 'fd' fd
check_command 'bat' bat
check_command 'fzf' fzf
check_command 'wget' wget
check_command 'Terraform' terraform
check_command 'Ansible' ansible
check_command 'kubectl' kubectl
check_command 'Helm' helm
check_command 'k9s' k9s
check_command 'stern' stern
check_command 'AWS CLI' aws
check_command "Codex" codex
check_command "OpenCode" opencode
check_command "Ollama" ollama

printf '\n%s\n' 'Checking graphical applications...'
check_application 'Visual Studio Code' 'Visual Studio Code'
check_application 'iTerm2' 'iTerm'
check_application "UTM" "UTM"

printf '\n'
if [ "$missing" -eq 0 ]; then
    printf 'Verification passed: all %s required tools are available.\n' "$checks"
    exit 0
fi

printf 'Verification failed: %s of %s required tools are missing.\n' "$missing" "$checks"
printf '%s\n' 'Install the missing tools with: brew bundle --file=Brewfile'
exit 1
