#!/usr/bin/env bash
set -euo pipefail

MODEL="${OLLAMA_MODEL:-qwen3-coder}"

echo "Checking Ollama..."

if ! command -v ollama >/dev/null; then
    echo "Ollama is not installed."
    exit 1
fi

echo "Pulling ${MODEL}..."

ollama pull "${MODEL}"

echo "Installed:"
ollama list