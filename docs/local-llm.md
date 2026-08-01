Status: Experimental

Stack

- Ollama
- OpenCode
- Local model: qwen3-coder (30B MoE, Q4_K_M)
- Apple Silicon (M3, 36 GB)

Installation

brew install ollama

...

Verification

ollama list
curl http://localhost:11434/api/tags

Success criteria

- OpenCode can analyse repository
- AGENTS.md is respected
- Repository analysis works