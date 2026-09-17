# AI-Assisted Development Workflow

## Principle

AI-assisted development uses a hybrid workflow combining cloud-based and local
tools.

No single AI tool is treated as the universal development interface. Tools are
selected according to the task.

## Roles

### ChatGPT

Primarily used for:

- architecture and design discussions
- technical reasoning
- code and design reviews
- trade-off analysis
- learning and explanations

### Codex

Primarily used for:

- complex implementation
- repository-level changes
- multi-file refactoring
- tasks requiring broader codebase context

### OpenCode + Ollama

Primarily used for:

- local AI-assisted development
- routine implementation tasks
- repository exploration
- experimentation
- cost-controlled local workflows

The local model may change over time and is not considered part of the
workstation architecture.

## Workflow

A typical workflow is:

```text
Architecture / design
        │
        ▼
     ChatGPT
        │
        ▼
Implementation
   │           │
   ▼           ▼
 Codex     OpenCode + Ollama
   │           │
   └─────┬─────┘
         ▼
 Review / reasoning
         │
         ▼
      ChatGPT
```
This is a working model rather than a strict process. The appropriate tool is
selected according to task complexity, context requirements and whether local
execution is preferable.

## Boundary

AI tools assist development but are not runtime dependencies of the
infrastructure projects created on the workstation.

The engineering decisions and resulting code remain reviewable independently
of the AI tool used to produce them.

See [ADR-007](arch/ADR-007-hybrid-ai-assisted-dev.md) for the architectural
decision behind this workflow.