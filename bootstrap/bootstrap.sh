#!/usr/bin/env bash

set -euo pipefail

echo "==> Checking Homebrew..."

command -v brew >/dev/null || {
    echo "❌ Homebrew is not installed."
    exit 1
}

echo "==> Updating Homebrew..."
brew update

echo "==> Adding required taps..."
brew tap hashicorp/tap

echo "==> Trusting external taps..."
brew trust hashicorp/tap

echo "==> Installing packages..."
brew bundle --file="$(dirname "$0")/../Brewfile"

echo
echo "==> Cleaning up..."
brew cleanup

echo
echo "🎉 Bootstrap completed successfully."
echo
echo "Next steps:"
echo "  1. Run: colima start"
echo "  2. Verify: docker run hello-world"
echo "  3. Verify the workstation: ./scripts/verify.sh"
