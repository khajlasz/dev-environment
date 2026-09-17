# First-Time Setup

This guide covers the one-time manual steps required before the repository can bootstrap the development environment.

## 1. Install Xcode Command Line Tools

```sh
xcode-select --install
```

Verify:

```sh
xcode-select -p
```

Expected output:

```
/Library/Developer/CommandLineTools
```

---

## 2. Install Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Verify:

```sh
brew --version
```

---

## 3. Configure Homebrew for Apple Silicon

If Homebrew is installed under `/opt/homebrew`, add it to your shell:

```sh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Verify:

```sh
which brew
```

Expected:

```
/opt/homebrew/bin/brew
```

---

## 4. Clone the repository

```sh
git clone https://github.com/<user>/dev-environment.git
cd dev-environment
```

---

## 5. Bootstrap the workstation

```sh
./bootstrap/bootstrap.sh
```

---

## 6. Verify the installation

```sh
./scripts/verify.sh
```

Expected:

```
Verification passed: all required tools are available.
```

## 7. AI-assisted development

The bootstrap installs the local AI development tools declared in the
`Brewfile`:

- OpenCode
- Ollama
- Codex

The core workstation verification checks that these tools are installed:

```sh
./scripts/verify.sh
```
Local Ollama model installation is handled separately from the main workstation bootstrap:
```sh
./scripts/bootstrap-local-llm.sh
```
By default, the script pulls qwen3-coder. A different Ollama model can be selected with the OLLAMA_MODEL environment variable:
```sh
OLLAMA_MODEL=<model> ./scripts/bootstrap-local-llm.sh
```
See the dedicated documentation for configuration and usage:

- [AI workflow](ai-workflow.md)
- [Local LLM](local-llm.md)
- [OpenCode](opencode.md)

## Next steps

Your workstation is now ready for infrastructure automation, Terraform,
Ansible, Kubernetes and other Platform Engineering projects.