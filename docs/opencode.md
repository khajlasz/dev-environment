# OpenCode

## Purpose

OpenCode is the primary AI coding interface used by this development environment.

The goal is to provide a reproducible local development workflow while remaining independent of any single LLM provider.

---

## Architecture

```
Developer
    │
    ▼
OpenCode
    │
    ├── Local models (Ollama)
    └── Remote providers (optional)
```

OpenCode is responsible for:

- repository analysis
- code generation
- refactoring
- test generation
- documentation assistance

---

## Local Provider

Current local provider:

- Ollama

Current coding model:

- qwen3-coder:latest

The exact model is not considered part of the architecture and may change over time.

---

## Configuration

Global configuration:

```

~/.config/opencode/opencode.jsonc

```

Available models:

```

opencode models

```

Configured providers:

```

opencode providers list

```

---

## Verification

Verify Ollama:

```

ollama list
curl http://localhost:11434/api/tags

```

Verify OpenCode:

```

opencode models

```

Expected result:

- local model available
- repository can be analysed
- AGENTS.md is respected

---

## Workflow

Typical workflow:

1. Discuss architecture with ChatGPT.
2. Analyse and implement using OpenCode.
3. Return to ChatGPT for design reviews and complex reasoning.

---

## Future Work

Potential future extensions:

- MCP servers
- GitHub integration
- Additional local models
- Custom OpenCode agents